@push('css')
    <style type="text/css">
        .card_body .form-control {
            color: #fff;
            background-color: #2A3254;
        }
        .card_body .nice-select.open .list,
        .card_body .nice-select .list {
            width: -webkit-fill-available;
            background-color: #2d334f;
            overflow-y: auto;
            max-height: 400px;
        }
        .card_body .nice-select .option:hover, .nice-select .option.focus, .nice-select .option.selected.focus {
            background-color: #6C74FC;
        }
        .card_body .nice-select {
            background-color: #2A3254;
            color: #fff;
            border: none;
        }
        .card_body .nice-select:hover {
            border-color: #2A3254;
        }
        .card_body .nice-select .list {
            transform: scale(0.75) translateY(-21px);
        }
        .card_body .nice-select.open .list {
            transform: scale(1) translateY(0);
            top: 100%;
        }
    </style>
@endpush
<div id="overlay">
    <div class="card-body card_body" id="formContainer">
        <span id="closeForm">&times;</span>
        <form method="POST" action="{{ route('reportError', [$bookstory->slug]) }}" id="myForm" onsubmit="return validateForm()" style="display: flex; flex-direction: column;">
            @csrf
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label text-white">Truyện lỗi</label>
                <input type="text" class="form-control" name="chapter_id" value="{{ $bookstory->title }}" readonly>
            </div>

            <label for="exampleInputEmail1" class="form-label text-white">Chọn lỗi</label>
            <select class="form-select mb-3 _ge_de_ol @error('error_type') is-invalid @enderror" name="error_type" aria-label="Default select example" required="" aria-required="true" required autocomplete="error_type">
                <option selected>----Chọn loại lỗi----</option>
                <option value="0">Thiếu chapter</option>
                <option value="1">Up sai truyện</option>
                <option value="2">Lỗi khác</option>
            </select>
            @error('error_type')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror

            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label text-white">Mô tả chi tiết lỗi</label>
                <textarea class="form-control _ge_de_ol @error('body') is-invalid @enderror" name="body" rows="3" style="resize: none;" required="" aria-required="true" required autocomplete="body"></textarea>
                @error('body')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <button class="btn" type="submit">Báo cáo</button>
        </form>
    </div>
</div>
