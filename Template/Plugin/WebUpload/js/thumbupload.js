$(function () {
    var uploader = WebUploader.create({
        // 选完文件后，是否自动上传。
        auto: true,
        // swf文件路径
        swf: 'Uploader.swf',
        // 文件接收服务端。
        server: $('#server').val(),
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#filePicker',
        chunked: true,
        chunkSize: 1024 * 1024,
        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });

    uploader.on('fileQueued', function (file) {
        if($('#edit').length>0)
        {
            $('#edit').remove();
        }
        filename = file.name;
        var index1 = filename.lastIndexOf(".");
        var index2 = filename.length;
        var ext = filename.substring(index1, index2);//后缀名
        file.name = WebUploader.guid('DreamCMS_') + ext;
        var $li = $(
                '<div id="' + file.id + '" class="file-item thumbnail">' +
                '<img>' +
                '</div>'
                ),
                $img = $li.find('img');


        // $list为容器jQuery实例
        $list = $('#fileList');
        $list.append($li);

        // 创建缩略图
        // 如果为非图片文件，可以不用调用此方法。
        // thumbnailWidth x thumbnailHeight 为 100 x 100
        uploader.makeThumb(file, function (error, src) {
            if (error) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }

            $img.attr('src', src);
        }, 100, 100);
    });

    uploader.on('uploadProgress', function (file, percentage) {
        var $li = $('#' + file.id),
                $percent = $li.find('.progress span');

        // 避免重复创建
        if (!$percent.length) {
            $percent = $('<p class="progress"><span></span></p>')
                    .appendTo($li)
                    .find('span');
        }

        $percent.css('width', percentage * 100 + '%');
    });

// 文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on('uploadSuccess', function (file, ret) {
        var fieldname = $('#thumbname').val();
        $('#' + fieldname).val( ret.result.imgpath);
        $('#orgpic').val($('#approot').val() + '/' + ret.result.imgpath);
        $(".img-container").find('img').attr('src', $('#orgpic').val());
        $('#' + file.id).addClass('upload-state-done');
    });

// 文件上传失败，显示上传出错。
    uploader.on('uploadError', function (file) {
        var $li = $('#' + file.id),
                $error = $li.find('div.error');

        // 避免重复创建
        if (!$error.length) {
            $error = $('<div class="error"></div>').appendTo($li);
        }

        $error.text('上传失败');
    });

// 完成上传完了，成功或者失败，先删除进度条。
    uploader.on('uploadComplete', function (file) {

        $('#' + file.id).find('.progress').remove();
    });

});