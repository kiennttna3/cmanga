<div class="product__sidebar__comment">
    <h4 class="text-white mb-3">
        <i class="fa-solid fa-list"></i>
        Danh sách chương
    </h4>
    @php
        $count = count($chapter);
    @endphp
    @if ($count > 0)
        <div class="tab-scroller">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="text-white" scope="col">
                            Chapter
                        </th>
                        <th class="text-white footer__nav" scope="col">
                            Cập Nhật
                        </th>
                        <th class="text-white footer__nav" scope="col">
                            Lượt Xem
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($chapter as $key => $value)
                        @php
                            // Kiểm tra xem chapter đã được đọc hay chưa
                            $isRead = \App\Models\Pivot_table_readhistory::where('publisher_id', Session::get('id'))
                                ->where('chapter_id', $value->id)
                                ->exists();

                            $icon = $isRead ? '<i class="fa-solid fa-location-dot"></i>' : '';
                        @endphp
                        <tr>
                            <td>
                                <li class="my-2 text-white" style="list-style: none;">
                                    <a class="chapter_lite chapter_line" href="{{ route('chapter', [$bookstory->slug, $value->slug]) }}">
                                        {{ $value->title_name }}
                                        <a class="ml-1 text-danger">{!! $icon !!}</a>
                                    </a>
                                </li>
                            </td>
                            <td>
                                <li class="my-2 text-white footer__nav" style="list-style: none;">
                                    <a class="chapter_lite">
                                        {{ $value->created_at->diffForHumans() }}
                                    </a>
                                </li>
                            </td>
                            <td>
                                <li class="my-2 text-white footer__nav" style="list-style: none;">
                                    <a class="chapter_lite">
                                        {{ $value->view }}
                                    </a>
                                </li>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @else
        <table class="table table-hover table_background">
            <thead>
                <tr>
                    <th class="text-white" scope="col">
                        Chapter
                    </th>
                    <th class="text-white footer__nav" scope="col">
                        Cập Nhật
                    </th>
                    <th class="text-white footer__nav" scope="col">
                        Lượt Xem
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr style="height: 200px;">
                    <td>
                        <li class="my-2 text-white" style="list-style: none;">
                            <a style="text-decoration: none; font-weight:800;" href="#">

                            </a>
                        </li>
                    </td>
                    <td>
                        <li class="my-2 text-white footer__nav" style="list-style: none;">
                            <a style="text-decoration: none;">

                            </a>
                        </li>
                    </td>
                    <td>
                        <li class="my-2 text-white footer__nav" style="list-style: none;">
                            <a style="text-decoration: none;" >

                            </a>
                        </li>
                    </td>
                </tr>
            </tbody>
        </table>
    @endif
</div>
