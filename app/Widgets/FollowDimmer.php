<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;
use App\Models\Pivot_table_follow;

class FollowDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Pivot_table_follow::count();
        $string = trans_choice('Lượt theo dõi', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-bookmark',
            'title'  => "{$count} {$string}",
            'text'   => __('voyager::dimmer.post_text', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('Xem tất cả'),
                'link' => route('voyager.pivot-table-follow.index'),
            ],
            'image' => asset('storage/widgets/hero-8.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Pivot_table_follow::first());
    }
}
