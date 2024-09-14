<html>
	<head>
	<title>IndexPage</title>
		<style>
			*, *:before, *:after {
				padding: 0;
				margin: 0;
				box-sizing: border-box;
			}
			
			body {
				background-color: white;
				height: 100vh;
			}
			
			.r
			{
				width: 100%;
				height:46%;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			
			
			.frm {
				display: none;
				flex-direction: column;
				height: 420px;
				width: 340px;
				background-color: white;
				position: absolute;
				transform: translate(-50%, -50%);
				top: 50%;
				left: 47%;
				border-radius: 10px;
				backdrop-filter: blur(10px);
				border: 2px solid rgba(255, 255, 255, 0.1);
				box-shadow: 0 0 20px rgb(8 7 10/ 14%);
				padding: 30px 35px;
				transition: all .3s ease;
			}
			
			.signupfrm {
				margin-top: 1rem;
				display: none;
				height: 500px;
				width: 340px;
				background-color: rgba(255, 255, 255, 0.13);
				position: absolute;
				transform: translate(-50%, -50%);
				top: 50%;
				left: 47%;
				border-radius: 10px;
				backdrop-filter: blur(7px);
				border: 2px solid rgba(255, 255, 255, 0.1);
				box-shadow: 0 0 30px rgba(8, 7, 16, 0.6);
				padding: 15px 25px;
			}
			
			form * {
				font-family: 'Poppins', sans-serif;
				color: black;
				letter-spacing: 0.5px;
				outline: none;
				border: none;
			}
			
			form h3 {
				font-size: 32px;
				font-weight: 600;
				line-height: 42px;
				text-align: center;
			}
			
			label {
				display: block;
				margin-top: 13px;
				font-size: 15px;
				font-weight: 500;
			}
			
			input {
				display: block;
				height: 50px;
				width: 100%;
				border-bottom: 2px solid black;
				background-color: rgb(255 255 255/ 10%);
				border-radius: 3px;
				padding: 0 10px;
				margin-top: 8px;
				font-size: 13px;
				font-weight: 400;
			}
			
			::placeholder {
				color: gray;
			}
			
			button {
				margin-top: 40px;
				width: 100%;
				background-color: black;
				color: white;
				padding: 10px 0;
				font-size: 15px;
				font-weight: 600;
				border-radius: 2px;
				cursor: pointer;
			}
			
			.signUpbtn {
				margin-top: 30px;
			}
			
			.extras {
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
				padding-top: 20px;
				margin-right: 10px;
			}
			
			nav {
				background-color: #4a494747;
				box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.2);
				position: fixed; /* Fix the navbar at the top */
				top: 0; /* Position the navbar at the top */
				width: 100%; /* Ensure the navbar spans the full width */
				z-index: 1000; /* Ensure the navbar is above other elements */
			}
			
			nav ul {
				display: flex;
				justify-content: flex-end;
				align-items: center;
				width: 100%;
				list-style: none;
			}
			
			nav li {
				height: 50px;
			}
			
			nav a {
				display: flex;
				align-items: center;
				text-decoration: none;
				color: black;
				height: 100%;
				padding: 0 30px;
			}
			
			nav a:hover {
				background-color: rgb(224, 224, 221);
				transition: all 1s ease;
				border-radius: 4px;
			}
			
			nav li:first-child {
				margin-right: auto;
			}
			
			.home {
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100vh;
				gap: .5rem;
			}
			input:invalid ~ button[type="submit"]
			{
				opacity: .6;
				pointer-events: none;
			}
			
			input:valid:not(:placeholder-shown])
			{
				border:color:green;
			}
			input:invalid:not(:placeholder-shown)
			{
				border-color:darkred;
			}
		</style>
	</head>
	<body>	
		<nav>
			<div>
				<ul>
					<li><a href="#">Logo</a></li>
					<li><a href="#">See Previous</a></li>
					<li><a href="" onclick="LoginPage(event)">Login</a></li>	
				</ul>
			</div>
		</nav>
		

	<div class="home">
		<h2>Love Calulator</h2>
		<svg xmlns="http://www.w3.org/2000/svg" height="30" width="30"
			viewBox="0 0 512 512">
				
				<path fill="#ff1e05"
				d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z" /></svg>
	</div>

	<form class="frm" action="login">
			<h3>Login</h3>
	
			<label for="username">Username</label> 
			<input type="text" placeholder="Email or Phone" id="username" name="userName"> 
			
			<label for="password">Password</label> 
			<input type="password" placeholder="Password" id="password" name="password">
	
			<button type="submit">Login</button>
	
			<div class="extras">
				<a href="#">Forgot Password</a>
				<a href="#" onclick="SignUp(event)">Sign In</a>
			</div>
	
		</form>
	
		<form class="signupfrm" action="registerUser" onSubmit="return validate()")>
			<h3>Register Here</h3>
	
			<label for="username">Username</label> <input type="text"
				placeholder="Username" id="username" name="userName" required>
	
			<label for="email">Email</label> <input type="email"
				placeholder="abc123@gmail.com" id="email" name="email" required>
	
			<label for="password">Password</label> <input type="password"
				placeholder="*******" id="password" name="password" required>
	
			<label for="cPassword">Confirm Password</label> <input type="password"
				placeholder="*******" id="cPassword" name="cPassword" required>
	
			<button class="signUpbtn" onclick="validate()">Sign Up</button>
	
		</form>
	
		<script type="text/javascript">
			function LoginPage(event) {
				event.preventDefault(); // Prevent default anchor behavior
	
				const form = document.querySelector('.frm');
	
				form.style.display = 'flex'; // Show the form
	
			}
	
			function SignUp(event) {
				event.preventDefault(); // Prevent default anchor behavior
				const form = document.querySelector('.signupfrm');
				form.style.display = 'block'; // Show the form
	
				event.preventDefault(); // Prevent default anchor behavior
				const frm = document.querySelector('.frm');
				frm.style.display = 'none';
			}
			
			function validate()
			{
				var a = document.getElementById('password').value;
				var b = document.getElementById('cPassword').value;
				
				if(a!=b)
				{
					alert("Passwords dosen't match");
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>
