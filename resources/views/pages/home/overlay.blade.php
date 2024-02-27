<div id="overlay">
    <div class="card-body" id="formContainer">
        <span id="closeForm">&times;</span>
        <form method="GET" action="{{ route('filterBook') }}" onsubmit="return validateForm()" style="display: flex; flex-direction: column;">
            <label for="exampleInputEmail1" class="form-label text-white">Thể loại</label>
            <select class="form-select mb-3" name="tags[]" aria-label="size 3 select example">
                <option value="all" {{ request('tags') == 'all' ? 'selected' : '' }}>Tất cả</option>
                @foreach ($category as $key => $value)
                    <option value="{{ $value->id }}" {{ in_array($value->id, (array)request('tags')) ? 'selected' : '' }}>{{ $value->title }}</option>
                @endforeach
            </select>

            <label for="exampleInputEmail1" class="form-label text-white">Sắp xếp theo</label>
            <select class="form-select mb-3" name="sort" aria-label="size 3 select example">
                <option value="0" {{ request('sort') == '0' ? 'selected' : '' }}>Thời gian đăng</option>
                <option value="1" {{ request('sort') == '1' ? 'selected' : '' }}>Lượt theo dõi</option>
                <option value="2" {{ request('sort') == '2' ? 'selected' : '' }}>Lượt view</option>
            </select>

            <button class="btn" type="submit">Lọc</button>
        </form>
    </div>
</div>

@push('js')
    <script type="text/javascript">
        $(document).ready(function () {
                // Hàm để hiển thị overlay và form
                function open() {
                    $('#overlay').fadeIn()
                }

                // Hàm để đóng overlay và form
                function hide() {
                    $('#overlay').fadeOut()
                }

                // Bắt sự kiện khi click vào nút mở form
                $('#openForm').on('click', function () {
                    open()
                })

                // Bắt sự kiện khi click vào nút đóng form
                $('#closeForm').on('click', function () {
                    hide()
                })

                // Bắt sự kiện khi click bên ngoài form để đóng form
                $('#overlay').on('click', function (event) {
                    if (event.target === this) {
                        hide()
                    }
                })
            })
    </script>
@endpush
