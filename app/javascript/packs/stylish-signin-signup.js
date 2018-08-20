const signupButton = document.getElementById('signup-button');
const loginButton = document.getElementById('login-button');
const userForms = document.getElementById('user_options-forms');

// SIGN UP
signupButton.addEventListener('click', () => {
  userForms.classList.remove('bounceRight');
  userForms.classList.add('bounceLeft');
}, false);

// SIGN IN
loginButton.addEventListener('click', () => {
  userForms.classList.remove('bounceLeft');
  userForms.classList.add('bounceRight');
}, false);


