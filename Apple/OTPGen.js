function generateOTP() {
    let digits = '0123456789';
    let OTP = '';
    for (let i = 0; i < 4; i++) {
        OTP += digits[Math.floor(Math.random() * 10)];
    }
    return OTP;
}

// Get the button element by its ID
let button = document.querySelector('input[type="submit"]');

// Attach a click event listener to the button
button.addEventListener('click', function (event) {
    // Generate the OTP and display it
    let OTP = generateOTP();
    alert("OTP of 4 digits: " + OTP);

    // Prevent the form from the submitting
    event.preventDefault();
});