/* FORM VALIDATION CODE */
var nameField = document.getElementById('name');
var nameError = document.getElementById('name-error');

var emailField = document.getElementById('email');
var emailError = document.getElementById('email-error');

var countryField = document.getElementById('country');
var countryError = document.getElementById('country-error');

/* EVENT HANDLERS */
nameField.addEventListener('input',(e)=>{
   const isValid = validateName(e.target.value);
   nameError.style.color = isValid === "Looks good!" ? "green" : "red";
   nameError.innerHTML = isValid;
});

emailField.addEventListener('input',(e)=>{
    const isValid = validateEmail(e.target.value);
    emailError.style.color = isValid === "Email is valid" ? "green" : "red";
    emailError.innerHTML = isValid;
});

countryField.addEventListener('input',(e)=>{
    const isValid = validateCountry(e.target.value);
    countryError.style.color = isValid === "Passed Validation Check" ? "green" : "red";
    countryError.innerHTML = isValid;
});

/* VALIDATION FUNCTIONS */
function validateName(name)
{
    if ((/[^a-zA-Z]/).test(name))
    {
        return "Invalid name";
    }
    return name.length===0 ? "Name can't be empty" : name.length < 3 ? "Name too short" : "Looks good!";
}

function validateEmail(email)
{
    if (email === "")
    {
        return "Email can't be empty";
    }
    return (/^[a-zA-Z0-9][\w.]+@[a-z]+[.]{1}(com)$/).test(email) ? "Email is valid" : "Please enter a valid email";
}

function validateCountry(country)
{
    if ((/[^a-zA-Z]/).test(country))
    {
        return "Please enter a valid country name";
    }
    return country.length===0 ? "Country name can't be empty" : country.length < 3 ? "Please enter a valid country name" : "Passed Validation Check";
}

/* FORM CONFIRMATION */
function confirmSubmit()
{
    if (confirm("Are You Sure ? ")) {
        return true;
    } else {
        return false;
    }
}