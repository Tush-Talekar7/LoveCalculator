<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Import JSTL Core Library -->

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>History</title>
		<style>
			*, *:before, *:after {
				padding: 0;
				margin: 0;
				box-sizing: border-box;
			}
			
			body {
				font-family: Arial, sans-serif;
				max-height: 100vh;
				background-color: white;
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
			
			/*Sidebar styles for smaller screens*/
			table {
				width: 70%;
				border-collapse: collapse;
				margin-bottom: 20px;
			}
			
			th, td {
				border: 1px solid #dddddd;
				text-align: left;
				padding: 8px;
			}
			
			th {
				background-color: #f2f2f2;
			}
			
			tr:nth-child(even) {
				background-color: #f9f9f9;
			}
			
			.solve-btn {
				background-color: #4CAF50;
				color: white;
				padding: 10px 20px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
				border: none;
				border-radius: 5px;
				cursor: pointer;
			}
			
			.solve-btn:hover {
				background-color: #45a049;
			}
			
			.questions {
				margin-top: 3.47rem;
				height: 91.5vh;
				padding: 2rem;
				text-align: center;
				display: flex;
		    	justify-content: center;
		    	align-items: flex-start;
			}
			
			h2 {
				padding: 1rem;
			}
			
			table {
				background-color: white;
				box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.2);
				border-radius: 10px;
			}
			
			th {
				padding: 15px;
			}
			
			th, td {
				text-align: center;
			}
		</style>
	</head>
	<body>
	
		<nav>	
			<div>
				<ul>
					<li><a href="#">Love Calculator</a></li>
				
					<li><a href="#">${user}</a></li>	
				</ul>
			</div>
		</nav>
	
		<div class="questions">
	
			<table>
				<thead>
					<tr>
						<th>Sr No</th>
						<th>Crush Name</th>
						<th>Relation</th>						
					</tr>
				</thead>
				
				<tbody>
					
					<c:forEach var="map" items="${list}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td> <c:out value="${map['crushName']}" /></td>
							<td class="hard"><c:out value="${map['relation']}" /></td>							
						</tr>
						
					</c:forEach>			
				</tbody>
				
			</table>
		</div>		
	</body>
</html>
