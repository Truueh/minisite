function ValidForm() {
    var validUsername = ValidUsername();
    var validPassword = ValidPassword();
    var validEmail = validateEmail(document.getElementById("email"));

    return validUsername && validPassword && validEmail;
}

function ValidUsername() {
    var username = document.getElementById("username");
    if (username.value.length < 3) {
        username.style.background = "red";
        return false;
    }

    username.style.background = "white";
    return true;
}

function ValidPassword() {
    var password = document.getElementById("password");
    var verified = document.getElementById("verifypassword");

    if (password.value.length < 8) {
        password.style.background = "red";
        return false;
    }

    if (password.value !== verified.value) {
        verified.style.background = "red";
        return false;
    }
    else {
        verified.style.background = "white";
    }

    password.style.background = "white";
    return true;
}

function VerifyLogin() {
    var username = document.getElementById("username");
    var password = document.getElementById("password");

    if (username.value.length === 0) {
        username.style.backgroundColor = "red";
        if (password.value.length === 0) {
            password.style.backgroundColor = "red";
        }
        else
            password.style.backgroundColor = "white";
        return false;
    }
    else
        username.style.backgroundColor = "white";
    if (password.value.length === 0) {
        password.style.backgroundColor = "red";
        return false;
    }
    else
        username.style.backgroundColor = "white";
    return true;
}

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (re.test(email.value)) {
        email.style.backgroundColor = "white";
        return true;
    }
    else {
        email.style.backgroundColor = "red";
        return false;
    }
}

function VerifyDelete() {
    var verified = prompt("are you sure?");
    if (verified.toLowerCase() === "yes") {
        return true;
    }
    else
        return false;
}

function rateUsFunc() {
    // Check if user is logged in
    if ($('.registerlogin').html() === "Log In") {
        // Hide the rate container
        $('#rateUsBox').hide();
    }

    // Create A Template For Stars
    var star = $('<img></img>').attr('src', 'Images/Stars/emptyStar.png').addClass('star');

    // Set events of the 'star' element
    star.on({
        mouseover: function () {
            // Set the attributes of the 'star' images and its preceding siblings
            $(this).attr('src', 'Images/Stars/fullStar.png')
                .prevAll().attr('src', 'Images/Stars/fullStar.png');
        },
        mouseout: function () {
            // Set the attributes of the 'star' images and its preceding siblings
            $(this).attr('src', 'Images/Stars/emptyStar.png')
                .prevAll().attr('src', 'Images/Stars/emptyStar.png');
        },
        click: function () {
            // Get the current rating
            var rating = $(this).index() + 1;

            // Send an AJAX request
            $.ajax({
                method: 'post',
                data: JSON.stringify({ rating: rating }),
                url: "WebService1.asmx/AddRating",
                contentType: "application/json; charset=utf-8",
                dataType: 'JSON',
                complete: function (response) {
                    console.log(response);
                    //Rated();
                    $('#rateUsBox').hide();
                }
            });
        },
    });

    // Clone and append the star element 5 times
    for (var i = 0; i < 5; i++) {
        star.clone(true).appendTo(".star-container");
    }
}

function Rated() {
    setCookie("rating", "true", "500000");
}

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) === 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function DismissRating() {
    if (getCookie("rating") === "true") {
        document.getElementById("rateUsBox").style.display = "none";
    }
}