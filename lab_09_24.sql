INSERT INTO my_employee 
VALUES (&id, 
		'&last_name', 
		'&first_name', 
		lower(substr('&first_name', 1, 1) || substr('&last_name', 1, 7)),
	 	&salary); 