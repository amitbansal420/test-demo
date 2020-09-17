
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

function setSession(token,id) {
    return new Promise(function(resolve, reject){
        // alert(token)
        $.ajax({
            type: "get",
            url : "{{ route('setsession') }}",
            data: {token:token,id:id},
            success : function(result){
                resolve(result)
            }
        });
    });
}

function ValidateEmail(mail)
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}


function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57) ) {
            return false;
        }

        var contact = $('input[name="contact"]').val().length;

        if(contact != '' && contact > 10 ){
            return false
        }

        return true;
}


$(document).ready(function(){

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    } );


    $('.loginForm').submit(function(e){
        e.preventDefault()

        var email = $('input[name="email"]').val()
        var password = $('input[name="password"]').val()
        console.log(email, password)


        $.ajax({
            type:"post",
            url:"{{ url('api/login') }}",
            data:{email,password},
            complete: async function(e,xhr, settings){
                if(e.responseJSON.status == 200){
                    var session = await setSession(e.responseJSON.body.user_token,e.responseJSON.body.id)
                    if(session) location.replace("{{ route('home') }}");
                }else{
                    alert(e.responseJSON.message);
                }
            }
        })

    })

    $('.register').click(function(e){

        if( !($('input[name="name"]').val() && $('input[name="email"]').val() && $('input[name="contact"]').val() && $('input[name="password"]').val() && $('input[name="password_confirmation"]').val() && $('input[name="father_name"]').val() && $('input[name="mother_name"]').val() && $('input[name="wife"]').val() && $('input[name="child"]').val() && $('input[name="address"]').val() && $('input[name="country"]').val() && $('input[name="city"]').val() && $('input[name="zipcode"]').val() && $('input[name="state"]').val()) )
        {
            alert('Please fill out all fields')
            return false;
        }

        var email = $('input[name="email"]').val()
        if(!ValidateEmail(email)){
            return false
        }

        if($('input[name="password"]').val() !== $('input[name="password_confirmation"]').val() ){
            alert('Password doesn`t match ')
            return false;
        }
        var formData = new FormData(document.getElementById('formData'))

        $.ajax({
            type:"post",
            url : "{{ url('api/register') }}",
            data: formData,
            contentType: false,
            cache: false,
            processData:false,
            async: false,
            complete: async function(e, xhr, settings){
                if(e.responseJSON.status == 200){
                    var session = await setSession(e.responseJSON.body.user_token,e.responseJSON.body.id)
                    if(session) location.replace("{{ route('home') }}");
                }else{
                    alert(e.responseJSON.message)
                }
            }
        })

    })


$('.updateProfile').click(function(e){


        if( !($('input[name="name"]').val() && $('input[name="email"]').val() && $('input[name="contact"]').val() && $('input[name="father_name"]').val() && $('input[name="mother_name"]').val() && $('input[name="wife"]').val() && $('input[name="child"]').val() && $('input[name="address"]').val() && $('input[name="country"]').val() && $('input[name="city"]').val() && $('input[name="zipcode"]').val() && $('input[name="state"]').val()) )
        {
            alert('Please fill out all fields')
            return false;
        }

        var email = $('input[name="email"]').val()
        if(!ValidateEmail(email)){
            return false
        }

        var formData = new FormData(document.getElementById('formData'))

        $.ajax({
            type:"post",
            url : "{{ url('api/updateProfile') }}",
            data: formData,
            contentType: false,
            cache: false,
            processData:false,
            async: false,
            beforeSend: function(xhr){xhr.setRequestHeader("Authorization", "Bearer {{ \Session::get('auth_token') }}");},
            complete: async function(e, xhr, settings){
                if(e.responseJSON.status == 200){
                    alert(e.responseJSON.message);
                    location.reload();

                }else{
                    alert(e.responseJSON.message)
                }
            }
        })

    })


    $('.logout').click(function(){
        $.ajax({
            type: "get",
            url : "{{ route('logout') }}",
            // data: {token,token},
            success : function(result){
                    if(result) location.replace("{{ route('login') }}");
            }
        });
    })

})

</script>

