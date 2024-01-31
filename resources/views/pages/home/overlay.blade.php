<div id="overlay">
    <div class="card-body" id="formContainer">
        <span id="closeForm">&times;</span>
        <form method="GET" action="#" onsubmit="return validateForm()" style="display: flex; flex-direction: column;">
            <label for="exampleInputEmail1" class="form-label text-white">Thể loại</label>
            <select class="form-select mb-3" name="loctheloai[]" aria-label="size 3 select example">
                <option value="all" {{ request('loctheloai') == 'all' ? 'selected' : '' }}>Tất cả</option>
                @foreach ($category as $key => $value)
                    <option value="{{ $value->id }}" {{ in_array($value->id, (array)request('loctheloai')) ? 'selected' : '' }}>{{ $value->title }}</option>
                @endforeach
            </select>

            <label for="exampleInputEmail1" class="form-label text-white">Sắp xếp theo</label>
            <select class="form-select mb-3" name="loctop" aria-label="size 3 select example">
                <option value="0" {{ request('loctop') == '0' ? 'selected' : '' }}>Thời gian đăng</option>
                <option value="1" {{ request('loctop') == '1' ? 'selected' : '' }}>Lượt theo dõi</option>
                <option value="2" {{ request('loctop') == '2' ? 'selected' : '' }}>Lượt view</option>
            </select>

            <button class="btn" type="submit">Lọc</button>
        </form>
    </div>
</div>
