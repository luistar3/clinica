$(document).ready(function() {
    $("#input-708").fileinput({
        uploadUrl: "../modules/campana.php?p=" + "J9Y0B7rh86",
        uploadAsync: false,
        fileActionSettings : {
            // Disable
            showUpload : false,
            showRemove :false
            },
        maxFileCount: 5,
        allowedFileExtensions: ['jpg', 'png', 'gif'],
        uploadExtraData: {
            'uploadToken': 'SOME-TOKEN', // for access control / security 
        }
    }).on('filebatchpreupload', function(event, data, id, index) {
        $('#kv-success-2').html('<h4>Upload Status</h4><ul></ul>').hide();
    }).on('filebatchuploadsuccess', function(event, data) {
       // data = JSON.parse(data);
        var out = '';
        $.each(data.files, function(key, file) {
            var fname = file.name;
            out = out + '<li>' + 'Uploaded file # ' + (key + 1) + ' - '  +  fname + ' successfully.' + '</li>';
        });
        $('#kv-success-2 ul').append(out);
        $('#kv-success-2').fadeIn('slow');
    });
});