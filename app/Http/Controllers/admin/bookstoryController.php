<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pivote_Bookstory_Category;
use App\Models\Pivot_table_follow;
use App\Models\Pivot_table_error;
use App\Models\Pivot_table_readhistory;
use App\Models\Pivot_table_view;
use App\Models\Pivot_table_comment;
use Exception;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataRestored;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;

class bookstoryController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    /**
     * Display a listing of the resource.
     */
    // public function index(Request $request)
    // {
    //     //
    // }

    /**
     * Show the form for creating a new resource.
     */
    // public function create(Request $request)
    // {
    //     //
    // }

    /**
     * Store a newly created resource in storage.
     */
    // public function store(Request $request)
    // {
    //     //
    // }

    /**
     * Display the specified resource.
     */
    // public function show(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Show the form for editing the specified resource.
     */
    // public function edit(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Init array of IDs
        $ids = [];
        if (empty($id)) {
            // Bulk delete, get IDs from POST
            $ids = explode(',', $request->ids);
        } else {
            // Single item delete, get ID from URL
            $ids[] = $id;
        }

        $affected = 0;

        foreach ($ids as $id) {
            $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);
            Pivote_Bookstory_Category::where('bookstory_id', [$data->id])->delete();
            Pivot_table_follow::where('bookstory_id', [$data->id])->delete();
            Pivot_table_error::where('bookstory_id', [$data->id])->delete();
            Pivot_table_readhistory::where('bookstory_id', [$data->id])->delete();
            Pivot_table_view::where('bookstory_id', [$data->id])->delete();
            Pivot_table_comment::where('bookstory_id', [$data->id])->delete();

            // Check permission
            $this->authorize('delete', $data);

            $model = app($dataType->model_name);
            if (!($model && in_array(SoftDeletes::class, class_uses_recursive($model)))) {
                $this->cleanup($dataType, $data);
            }

            $res = $data->delete();

            if ($res) {
                $affected++;

                event(new BreadDataDeleted($dataType, $data));
            }
        }

        $displayName = $affected > 1 ? $dataType->getTranslatedAttribute('display_name_plural') : $dataType->getTranslatedAttribute('display_name_singular');

        $data = $affected
            ? [
                'message'    => __('voyager::generic.successfully_deleted')." {$displayName}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => __('voyager::generic.error_deleting')." {$displayName}",
                'alert-type' => 'error',
            ];

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
    }
}
