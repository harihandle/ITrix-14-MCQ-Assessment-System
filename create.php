<?php
	//INITIALISATION
	$address="localhost";
				$username="root";
				$password="mysql";
				$db="datastructs";
	$con=mysql_connect($address,$username,$password);
	
	//CREATE DATABASE
	$sql="CREATE DATABASE ".$db;
	if(mysql_query($sql))
		echo "DB CREATED<br>";
	else
		echo "DB NOT CREATED<br>";
	
	//SELECT DATABASE
	if(mysql_select_db($db,$con))
		echo "DB SELECTED<br>";
	else
		echo "DB NOT SELECTED<br>";
	
	//CREATE ADMINISTRATOR
	$sql="CREATE TABLE administrator(username varchar(128) primary key,password varchar(128));";
	if(mysql_query($sql))
		echo "ADMIN CREATED<br>";
	else
		echo "ADMIN NOT CREATED<br>";
	
	//INSERT INTO ADMINISTRATOR
	$sql="INSERT INTO administrator VALUES ('admin', MD5('admin' ));";
	if(mysql_query($sql))
		echo "ADMIN ADDED<br>";
	else
		echo "ADMIN NOT ADDED<br>";
	
	//CREATE EVENTS
	$sql="CREATE TABLE events(ename varchar(128) primary key,epass varchar(128),event varchar(128));";
	if(mysql_query($sql))
		echo "EVENTS CREATED<br>";
	else
		echo "EVENTS NOT CREATED<br>";
	
	//CREATE CANDIDATES
	$sql="CREATE TABLE candidates(cname varchar(128) primary key,cpass varchar(128),ename varchar(128),event varchar(128));";
	if(mysql_query($sql))
		echo "CANDIDATES CREATED<br>";
	else
		echo "CANDIDATES NOT CREATED<br>";
	
	//CREATE Q
	$sql="CREATE TABLE q(qno int(5) PRIMARY KEY AUTO_INCREMENT,question varchar(5000),difficulty int(1),a varchar(5000),b varchar(5000),c varchar(5000),d varchar(5000),e varchar(5000),qimg varchar(5000),aimg varchar(5000),bimg varchar(500),cimg varchar(5000),dimg varchar(5000),eimg varchar(5000),ans int(1));";
	if(mysql_query($sql))
		echo "q CREATED<br>";
	else
		echo "q NOT CREATED<br>";
	
	//CREATE TEST
	$sql="CREATE TABLE test(ename varchar(128) primary key,easy int(2),moderate int(2),hard int(2),easym int(2),moderatem int(2),hardm int(2), instructions varchar(10000),neg float,duration int(3));";
	if(mysql_query($sql))
		echo "TEST CREATED<br>";
	else
		echo "TEST NOT CREATED<br>";
	
	//CREATE PARTICIPANTS
	$sql="CREATE TABLE participants(itrixid varchar(50) primary key,name varchar(50),year varchar(10),degree varchar(10),branch varchar(50),college varchar(60),cno varchar(15),email varchar(50));";
	if(mysql_query($sql))
		echo "PARTICIPANTS CREATED<br>";
	else
		echo "PARTICIPANTS NOT CREATED<br>";
	
	//CREATE PPS
	$sql="CREATE TABLE pps(itrixid varchar(50) primary key,name varchar(50),questions varchar(200),answers varchar(200),options varchar(100),score float, status int(1) default 0);";
	if(mysql_query($sql))
		echo "PPS CREATED<br>";
	else
		echo "PPS NOT CREATED<br>";
	
	//CREATE NUMBERS
	$sql="CREATE TABLE numbers(numbers int(1));";
	if(mysql_query($sql))
		echo "NUMBERS CREATED<br>";
	else
		echo "NUMBERS NOT CREATED<br>";
	
	//ADD NUMBERS
	$sql="INSERT INTO numbers VALUES (0);";
	mysql_query($sql);
	$sql="INSERT INTO numbers VALUES (1);";
	mysql_query($sql);
	$sql="INSERT INTO numbers VALUES (2);";
	mysql_query($sql);
	$sql="INSERT INTO numbers VALUES (3);";
	mysql_query($sql);
?>