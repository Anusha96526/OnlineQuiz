<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Practice</title>
<style>
.rightans{
border:3px solid #0f0;
background-color: #afa;
border-radius: 5px;
}
.wrongans{
border:3px solid #f00;
background-color: #faa;
border-radius: 5px;
}
</style>
<script>window.onerror = function(m, u, l){
	alert('Javascript Error: '+m+'nURL: '+u+'nLine Number: '+l);
    return true;
   }
</script>
<script>'use strict';
window.onload = init;
function init() {
	document.getElementById('btn').onclick = validate;
	document.getElementById('btnclr').onclick = clear;
	}
	function validate() {
		var radios = document.getElementById("quiz").getElementsByTagName("INPUT");
		var right = 0;
		var wrong = 0; 
		for(var i=0, len=radios.length ; i<len ; i++) {  
			if(radios[i].value == "x") {    
				if(radios[i].checked == true){      
					right++;      
					radios[i].parentNode.parentNode.className = 'rightans';    
					}
				else{     
					wrong++;      
					radios[i].parentNode.parentNode.className = 'wrongans';   
					}  
				}
			} 
		var pcnt = (100*right/(wrong+right)).toFixed(1);
		document.getElementById("score").innerHTML = 'Total Questions: 101'+'<br/>Correct: '+ right +'<br/>Incorrect: ' + wrong +'<br/>Percent Correct: ' + pcnt +'%';
		}
	function clear(){
		var radios = document.getElementById("quiz").getElementsByTagName("INPUT");
		for(var i=0, len=radios.length ; i<len ; i++) {
			radios[i].checked = false;
			if (radios[i].value == "x"){ 
				radios[i].parentNode.parentNode.className = '';
				}
			}
		document.getElementById("score").innerHTML = '';
		}
	</script>
	</head>
	<body>
	<div id="quiz">
	<h1>Practice Quiz</h1>
	<fieldset id="q1"> 
	<legend><b>Question 1</b></legend> 
	<legend><b>What is the capital of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Copenhagen</label><br/> 
	<label><input type="radio" name="q1" value="b">Belmopan</label><br/> 
	<label><input type="radio" name="q1" value="c">Luanda</label><br/>  
	<label><input type="radio" name="q1" value="x">Beijing</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>Which is the capital city of Canada?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Luanda</label><br/> 
	<label><input type="radio" name="q2" value="x">Ottawa</label><br/> 
	<label><input type="radio" name="q2" value="b">Vancouver</label><br/>  
	<label><input type="radio" name="q2" value="c">Juneau</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>What is the capital of Brazil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Brasilia</label><br/> 
	<label><input type="radio" name="q3" value="a">Baku</label><br/> 
	<label><input type="radio" name="q3" value="b">Bogota</label><br/>  
	<label><input type="radio" name="q3" value="c">Bujumbura</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>Kabul is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Albania</label><br/> 
	<label><input type="radio" name="q4" value="b">Andora</label><br/> 
	<label><input type="radio" name="q4" value="x">Afghanistan</label><br/>  
	<label><input type="radio" name="q4" value="c">Angola</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>What is the capital of Bolivia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Sucre/La Paz</label><br/> 
	<label><input type="radio" name="q5" value="a">Ndjamena</label><br/> 
	<label><input type="radio" name="q5" value="b">St.George's</label><br/>  
	<label><input type="radio" name="q5" value="c">Nouakchott</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>Tirana is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Algeria</label><br/> 
	<label><input type="radio" name="q6" value="x">Albania</label><br/> 
	<label><input type="radio" name="q6" value="b">Bhutan</label><br/>  
	<label><input type="radio" name="q6" value="c">Belarus</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>What is the capital of Benin?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Phnom Penh</label><br/> 
	<label><input type="radio" name="q7" value="b">Port Louis</label><br/> 
	<label><input type="radio" name="q7" value="x">Porto-Novo</label><br/>  
	<label><input type="radio" name="q7" value="c">Pyongyang</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>What is the capital of Cambodia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Pyongyang</label><br/> 
	<label><input type="radio" name="q8" value="b">Port Louis</label><br/> 
	<label><input type="radio" name="q8" value="c">Port Moresby</label><br/>  
	<label><input type="radio" name="q8" value="x">Phnom Penh</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>What is the capital of Bulgaria country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Suva</label><br/> 
	<label><input type="radio" name="q9" value="b">Sanaa</label><br/> 
	<label><input type="radio" name="q9" value="x">Sofia</label><br/>  
	<label><input type="radio" name="q9" value="c">San Jose</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>Algiers is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">Albania</label><br/> 
	<label><input type="radio" name="q10" value="x">Algeria</label><br/> 
	<label><input type="radio" name="q10" value="b">Armenia</label><br/>  
	<label><input type="radio" name="q10" value="c">Andorra</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>What is the capital of Belize?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Belmopan</label><br/> 
	<label><input type="radio" name="q11" value="a">Lusaka</label><br/> 
	<label><input type="radio" name="q11" value="b">Brussels</label><br/>  
	<label><input type="radio" name="q11" value="c">Bogota</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>What is the capital of Cameroon?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Yaounde</label><br/> 
	<label><input type="radio" name="q12" value="a">Ulaanbaatar</label><br/> 
	<label><input type="radio" name="q12" value="b">Zagreb</label><br/>  
	<label><input type="radio" name="q12" value="c">Yerevan</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>What is the capital of Colombia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Baku</label><br/> 
	<label><input type="radio" name="q13" value="b">Baghdad</label><br/> 
	<label><input type="radio" name="q13" value="c">Bamako</label><br/>  
	<label><input type="radio" name="q13" value="x">Bogota</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>What is the capital of Denmark?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Canberra</label><br/> 
	<label><input type="radio" name="q14" value="x">Copenhagen</label><br/> 
	<label><input type="radio" name="q14" value="b">Cairo</label><br/>  
	<label><input type="radio" name="q14" value="c">Chisinau</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>Andorra la Vella is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Algeria</label><br/> 
	<label><input type="radio" name="q15" value="b">Vietnam</label><br/> 
	<label><input type="radio" name="q15" value="x">Andorra</label><br/>  
	<label><input type="radio" name="q15" value="c">Peru</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>What is the capital city of Cuba?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Vancouver</label><br/> 
	<label><input type="radio" name="q16" value="b">Vienna</label><br/> 
	<label><input type="radio" name="q16" value="x">Havana</label><br/>  
	<label><input type="radio" name="q16" value="c">Astana</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>Santiago is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Chile</label><br/> 
	<label><input type="radio" name="q17" value="a">Cuba</label><br/> 
	<label><input type="radio" name="q17" value="b">Hungary</label><br/>  
	<label><input type="radio" name="q17" value="c">Sweden</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>What is the capital of Comoros?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Moroni</label><br/> 
	<label><input type="radio" name="q18" value="a">Manila</label><br/> 
	<label><input type="radio" name="q18" value="b">Mexico</label><br/>  
	<label><input type="radio" name="q18" value="c">Manama</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>Luanda is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Algeria</label><br/> 
	<label><input type="radio" name="q19" value="b">Albania</label><br/> 
	<label><input type="radio" name="q19" value="c">Armenia</label><br/>  
	<label><input type="radio" name="q19" value="x">Angola</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>What is the capital of Chad?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Juba</label><br/> 
	<label><input type="radio" name="q20" value="x">N'Djamena</label><br/> 
	<label><input type="radio" name="q20" value="b">Nairobi</label><br/>  
	<label><input type="radio" name="q20" value="c">Gibraltar</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>What is the capital of Bahrain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Manila</label><br/> 
	<label><input type="radio" name="q21" value="b">Maputo</label><br/> 
	<label><input type="radio" name="q21" value="c">Moroni</label><br/>  
	<label><input type="radio" name="q21" value="x">Manama</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>What is the capital of Argentina?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Nicosia</label><br/> 
	<label><input type="radio" name="q22" value="b">Zagreb</label><br/> 
	<label><input type="radio" name="q22" value="x">Buenos Aires</label><br/>  
	<label><input type="radio" name="q22" value="c">Bamako</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>What is the capital of Azerbaijan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Ottawa</label><br/> 
	<label><input type="radio" name="q23" value="x">Baku</label><br/> 
	<label><input type="radio" name="q23" value="b">Dublin</label><br/>  
	<label><input type="radio" name="q23" value="c">Yaounde</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What is the capital of Belarus?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Minsk</label><br/> 
	<label><input type="radio" name="q24" value="a">Mexico</label><br/> 
	<label><input type="radio" name="q24" value="b">Male</label><br/>  
	<label><input type="radio" name="q24" value="c">Monrovia</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>What is the capital of Botswana?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Gaborone</label><br/> 
	<label><input type="radio" name="q25" value="a">Jerusalem</label><br/> 
	<label><input type="radio" name="q25" value="b">Gibraltar</label><br/>  
	<label><input type="radio" name="q25" value="c">Georgetown</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>Yerevan is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Albania</label><br/> 
	<label><input type="radio" name="q26" value="b">Algeria</label><br/> 
	<label><input type="radio" name="q26" value="x">Armenia</label><br/>  
	<label><input type="radio" name="q26" value="c">Afghanistan</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>What is the capital of Burkina Faso?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Oslo</label><br/> 
	<label><input type="radio" name="q27" value="b">Hanoi</label><br/> 
	<label><input type="radio" name="q27" value="x">Ouagadougou</label><br/>  
	<label><input type="radio" name="q27" value="c">Nairobi</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What is the capital of Cape Verde?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Phnom Penh</label><br/> 
	<label><input type="radio" name="q28" value="x">Praia</label><br/> 
	<label><input type="radio" name="q28" value="b">Pyongyang</label><br/>  
	<label><input type="radio" name="q28" value="c">Bern</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>What is the capital of Australia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Cairo</label><br/> 
	<label><input type="radio" name="q29" value="x">Canberra</label><br/> 
	<label><input type="radio" name="q29" value="b">Conakry</label><br/>  
	<label><input type="radio" name="q29" value="c">Copenhagen</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Bujumbura is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Brasilia</label><br/> 
	<label><input type="radio" name="q30" value="x">Burundi</label><br/> 
	<label><input type="radio" name="q30" value="b">Thailand</label><br/>  
	<label><input type="radio" name="q30" value="c">Belgium</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>What is the capital of Croatia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Abuja</label><br/> 
	<label><input type="radio" name="q31" value="b">Jakarta</label><br/> 
	<label><input type="radio" name="q31" value="x">Zagreb</label><br/>  
	<label><input type="radio" name="q31" value="c">Dili</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>What is the capital of Costa Rica?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Sofia</label><br/> 
	<label><input type="radio" name="q32" value="b">Seoul</label><br/> 
	<label><input type="radio" name="q32" value="c">Suva</label><br/>  
	<label><input type="radio" name="q32" value="x">San Jose</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>What is the capital of Cyprus?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Nicosia</label><br/> 
	<label><input type="radio" name="q33" value="a">Taipei</label><br/> 
	<label><input type="radio" name="q33" value="b">Nairobi</label><br/>  
	<label><input type="radio" name="q33" value="c">Tripoli</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Vienna is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Kazakhstan</label><br/> 
	<label><input type="radio" name="q34" value="b">Peru</label><br/> 
	<label><input type="radio" name="q34" value="x">Austria</label><br/>  
	<label><input type="radio" name="q34" value="c">Turkey</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>What is the capital of Egypt?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Bamako</label><br/> 
	<label><input type="radio" name="q35" value="b">Monaco</label><br/> 
	<label><input type="radio" name="q35" value="c">Maputo</label><br/>  
	<label><input type="radio" name="q35" value="x">Cairo</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>What is the capital of Fiji?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Suva</label><br/> 
	<label><input type="radio" name="q36" value="a">Riga</label><br/> 
	<label><input type="radio" name="q36" value="b">Accra</label><br/>  
	<label><input type="radio" name="q36" value="c">Sofia</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>What is the capital city of Ethiopia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Andorra La Vella</label><br/> 
	<label><input type="radio" name="q37" value="c">Athens</label><br/> 
	<label><input type="radio" name="q37" value="b">Antananarivo</label><br/>  
	<label><input type="radio" name="q37" value="x">Addis Ababa</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>What is the capital of Bangladesh?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Harare</label><br/> 
	<label><input type="radio" name="q38" value="x">Dhaka</label><br/> 
	<label><input type="radio" name="q38" value="b">Asmara</label><br/>  
	<label><input type="radio" name="q38" value="c">Pristina</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>What is the capital of Finland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Helsinki</label><br/> 
	<label><input type="radio" name="q39" value="a">Vienna</label><br/> 
	<label><input type="radio" name="q39" value="b">Kigali</label><br/>  
	<label><input type="radio" name="q39" value="c">Harare</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>Paris is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Mexico</label><br/> 
	<label><input type="radio" name="q40" value="b">Germany</label><br/> 
	<label><input type="radio" name="q40" value="x">France</label><br/>  
	<label><input type="radio" name="q40" value="c">Switzerland</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>What is the capital of Gambia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Banjul</label><br/> 
	<label><input type="radio" name="q41" value="a">Kigali</label><br/> 
	<label><input type="radio" name="q41" value="b">Malabo</label><br/>  
	<label><input type="radio" name="q41" value="c">Abuja</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>Brussels is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Thailand</label><br/> 
	<label><input type="radio" name="q42" value="x">Belgium</label><br/> 
	<label><input type="radio" name="q42" value="b">Malaysia</label><br/>  
	<label><input type="radio" name="q42" value="c">Singapore</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>What is the capital of Georgia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Tbilisi</label><br/> 
	<label><input type="radio" name="q43" value="a">Tripoli</label><br/> 
	<label><input type="radio" name="q43" value="b">Nairobi</label><br/>  
	<label><input type="radio" name="q43" value="c">Taipei</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>What is the capital of Bhutan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Oslo</label><br/> 
	<label><input type="radio" name="q44" value="b">Dublin</label><br/> 
	<label><input type="radio" name="q44" value="c">Beirut</label><br/>  
	<label><input type="radio" name="q44" value="x">Thimphu</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>Berlin is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Germany</label><br/> 
	<label><input type="radio" name="q45" value="a">Italy</label><br/> 
	<label><input type="radio" name="q45" value="b">Greece</label><br/>  
	<label><input type="radio" name="q45" value="c">Thailand</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>What is the capital city of Ghana?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Riga</label><br/> 
	<label><input type="radio" name="q46" value="b">Honiara</label><br/> 
	<label><input type="radio" name="q46" value="x">Accra</label><br/>  
	<label><input type="radio" name="q46" value="c">Astana</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>Athens is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Italy</label><br/> 
	<label><input type="radio" name="q47" value="x">Greece</label><br/> 
	<label><input type="radio" name="q47" value="b">China</label><br/>  
	<label><input type="radio" name="q47" value="c">Germany</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>What is the capital of Hungary?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Budapest</label><br/> 
	<label><input type="radio" name="q48" value="a">Gitega</label><br/> 
	<label><input type="radio" name="q48" value="b">Belmopan</label><br/>  
	<label><input type="radio" name="q48" value="c">Douglas</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>What is the capital of Iceland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Ljubljana</label><br/> 
	<label><input type="radio" name="q49" value="b">Montevideo</label><br/> 
	<label><input type="radio" name="q49" value="x">Reykjavik</label><br/>  
	<label><input type="radio" name="q49" value="c">Luanda</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>What is the capital of Indonesia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Lilongwe</label><br/> 
	<label><input type="radio" name="q50" value="x">Jakarta</label><br/> 
	<label><input type="radio" name="q50" value="b">Abuja</label><br/>  
	<label><input type="radio" name="q50" value="c">Kathmandu</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>What is the capital of Iran?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Tehran</label><br/> 
	<label><input type="radio" name="q51" value="a">Lisban</label><br/> 
	<label><input type="radio" name="q51" value="b">Tirana</label><br/>  
	<label><input type="radio" name="q51" value="c">Nicosia</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>Baghdad is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Iran</label><br/> 
	<label><input type="radio" name="q52" value="b">England</label><br/> 
	<label><input type="radio" name="q52" value="c">India</label><br/>  
	<label><input type="radio" name="q52" value="x">Iraq</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What is the capital of Ireland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Doha</label><br/> 
	<label><input type="radio" name="q53" value="b">Dodoma</label><br/> 
	<label><input type="radio" name="q53" value="x">Dublin</label><br/>  
	<label><input type="radio" name="q53" value="c">Dakar</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>What is the capital of Israel?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Ngerulmud</label><br/> 
	<label><input type="radio" name="q54" value="x">Jerusalem</label><br/> 
	<label><input type="radio" name="q54" value="b">Naypyidaw</label><br/>  
	<label><input type="radio" name="q54" value="c">Longyearbyen</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>Rome is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Italy</label><br/> 
	<label><input type="radio" name="q55" value="a">Japan</label><br/> 
	<label><input type="radio" name="q55" value="b">Germany</label><br/>  
	<label><input type="radio" name="q55" value="c">Greece</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>What is the capital of Jamaica?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Kigali</label><br/> 
	<label><input type="radio" name="q56" value="b">Khartoum</label><br/> 
	<label><input type="radio" name="q56" value="c">Kabul</label><br/>  
	<label><input type="radio" name="q56" value="x">Kingston</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>Tokyo is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Germany</label><br/> 
	<label><input type="radio" name="q57" value="x">Japan</label><br/> 
	<label><input type="radio" name="q57" value="b">China</label><br/>  
	<label><input type="radio" name="q57" value="c">Italy</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>What is the capital of Kazakhstan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Nur-Sultan</label><br/> 
	<label><input type="radio" name="q58" value="a">Tirana</label><br/> 
	<label><input type="radio" name="q58" value="b">Vienna</label><br/>  
	<label><input type="radio" name="q58" value="c">Luanda</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>What is the capital city of Kenya?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Moroni</label><br/> 
	<label><input type="radio" name="q59" value="b">Kabul</label><br/> 
	<label><input type="radio" name="q59" value="x">Nairobi</label><br/>  
	<label><input type="radio" name="q59" value="c">Libreville</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>What is the capital of Kyrgyzstan</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Ouagadougou</label><br/> 
	<label><input type="radio" name="q60" value="x">Bishkek</label><br/> 
	<label><input type="radio" name="q60" value="b">Baku</label><br/>  
	<label><input type="radio" name="q60" value="c">Buenos Aires</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>What is the capital of Laos?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Belgrade</label><br/> 
	<label><input type="radio" name="q61" value="b">Canberra</label><br/> 
	<label><input type="radio" name="q61" value="c">Kiev</label><br/>  
	<label><input type="radio" name="q61" value="x">Vientiane</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>What is the capital of Latvia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Riga</label><br/> 
	<label><input type="radio" name="q62" value="a">Kabul</label><br/> 
	<label><input type="radio" name="q62" value="b">Chisinau</label><br/>  
	<label><input type="radio" name="q62" value="c">Vaduz</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>What is the capital of Lebanon?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Belmopan</label><br/> 
	<label><input type="radio" name="q63" value="b">Bridgetown</label><br/> 
	<label><input type="radio" name="q63" value="c">Baku</label><br/>  
	<label><input type="radio" name="q63" value="x">Beirut</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>What is the capital of Liberia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Melekeok</label><br/> 
	<label><input type="radio" name="q64" value="b">Valletta</label><br/> 
	<label><input type="radio" name="q64" value="c">Maputo</label><br/>  
	<label><input type="radio" name="q64" value="x">Monrovia</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>What is the capital of Libya?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Podgorica</label><br/> 
	<label><input type="radio" name="q65" value="x">Tripoli</label><br/> 
	<label><input type="radio" name="q65" value="b">Gaborone</label><br/>  
	<label><input type="radio" name="q65" value="c">Moroni</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>What is the capital of Lithuania?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Kiev</label><br/> 
	<label><input type="radio" name="q66" value="b">Sarajevo</label><br/> 
	<label><input type="radio" name="q66" value="x">Vilnius</label><br/>  
	<label><input type="radio" name="q66" value="c">Podgorica</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What is the capital of Luxembourg?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Luxembourg</label><br/> 
	<label><input type="radio" name="q67" value="a">La Paz</label><br/> 
	<label><input type="radio" name="q67" value="b">Lima</label><br/>  
	<label><input type="radio" name="q67" value="c">Vilnius</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>What is the capital of Madagascar?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Asuncion</label><br/> 
	<label><input type="radio" name="q68" value="b">Ottawa</label><br/> 
	<label><input type="radio" name="q68" value="x">Antananarivo</label><br/>  
	<label><input type="radio" name="q68" value="c">Santo Domingo</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>Kuala Lumpur is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">Singapore</label><br/> 
	<label><input type="radio" name="q69" value="b">Thailand</label><br/> 
	<label><input type="radio" name="q69" value="x">Malaysia</label><br/>  
	<label><input type="radio" name="q69" value="c">India</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>What is the capital of Maldives?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Montenegro</label><br/> 
	<label><input type="radio" name="q70" value="x">Male</label><br/> 
	<label><input type="radio" name="q70" value="b">Maseru</label><br/>  
	<label><input type="radio" name="q70" value="c">Malabo</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>Bamako is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Madagascar</label><br/> 
	<label><input type="radio" name="q71" value="x">Mali</label><br/> 
	<label><input type="radio" name="q71" value="b">Mongolia</label><br/>  
	<label><input type="radio" name="q71" value="c">Malta</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>What is the capital of Malta?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Valletta</label><br/> 
	<label><input type="radio" name="q72" value="a">Djibouti</label><br/> 
	<label><input type="radio" name="q72" value="b">Chisinau</label><br/>  
	<label><input type="radio" name="q72" value="c">Asuncion</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>What is the capital of Mauritius?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Paramaribo</label><br/> 
	<label><input type="radio" name="q73" value="b">Liongwe</label><br/> 
	<label><input type="radio" name="q73" value="x">Port Louis</label><br/>  
	<label><input type="radio" name="q73" value="c">Bishkek</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>Mexico city is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Turkey</label><br/> 
	<label><input type="radio" name="q74" value="b">Ireland</label><br/> 
	<label><input type="radio" name="q74" value="c">Belarus</label><br/>  
	<label><input type="radio" name="q74" value="x">Mexico</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>What is the capital city of Monaco?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Monaco</label><br/> 
	<label><input type="radio" name="q75" value="a">Montenegro</label><br/> 
	<label><input type="radio" name="q75" value="b">Maputo</label><br/>  
	<label><input type="radio" name="q75" value="c">Monaco</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>What is the capital of Mongolia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Quito</label><br/> 
	<label><input type="radio" name="q76" value="b">Yaounde</label><br/> 
	<label><input type="radio" name="q76" value="c">Oslo</label><br/>  
	<label><input type="radio" name="q76" value="x">Ulaanbaatar</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>What is the capital of Morocco?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Melekeok</label><br/> 
	<label><input type="radio" name="q77" value="x">Rabat</label><br/> 
	<label><input type="radio" name="q77" value="b">Bishkek</label><br/>  
	<label><input type="radio" name="q77" value="c">Tashkent</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>What is the capital of Mozambique?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Antananarivo</label><br/> 
	<label><input type="radio" name="q78" value="b">Valletta</label><br/> 
	<label><input type="radio" name="q78" value="c">Tokyo</label><br/>  
	<label><input type="radio" name="q78" value="x">Maputo</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>What is the capital of Myanmar?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Muscat</label><br/> 
	<label><input type="radio" name="q79" value="b">Moscow</label><br/> 
	<label><input type="radio" name="q79" value="x">Naypyitaw</label><br/>  
	<label><input type="radio" name="q79" value="c">Madrid</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>What is the capital of Namibia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Caracas</label><br/> 
	<label><input type="radio" name="q80" value="b">Bangkok</label><br/> 
	<label><input type="radio" name="q80" value="c">Bishkek</label><br/>  
	<label><input type="radio" name="q80" value="x">Windhoek</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>Kathmandu is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Nepal</label><br/> 
	<label><input type="radio" name="q81" value="a">Lebanon</label><br/> 
	<label><input type="radio" name="q81" value="b">Bhutan</label><br/>  
	<label><input type="radio" name="q81" value="c">Taiwan</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>What is the capital of Netherlands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Bissau</label><br/> 
	<label><input type="radio" name="q82" value="b">Brazzaville</label><br/> 
	<label><input type="radio" name="q82" value="x">Amsterdam</label><br/>  
	<label><input type="radio" name="q82" value="c">Comoros</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>Abuja is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Netherlands</label><br/> 
	<label><input type="radio" name="q83" value="x">Nigeria</label><br/> 
	<label><input type="radio" name="q83" value="b">Norway</label><br/>  
	<label><input type="radio" name="q83" value="c">Sweden</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>What is the capital of New Zealand?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Washington, D.C.</label><br/> 
	<label><input type="radio" name="q84" value="x">Wellington</label><br/> 
	<label><input type="radio" name="q84" value="b">Damascus</label><br/>  
	<label><input type="radio" name="q84" value="c">Lilongwe</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>Pyongyang is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">North Korea</label><br/> 
	<label><input type="radio" name="q85" value="a">Guatemala</label><br/> 
	<label><input type="radio" name="q85" value="b">Kuwait</label><br/>  
	<label><input type="radio" name="q85" value="c">South Korea</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>What is the capital of Norway?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Dodoma</label><br/> 
	<label><input type="radio" name="q86" value="b">Moroni</label><br/> 
	<label><input type="radio" name="q86" value="x">Oslo</label><br/>  
	<label><input type="radio" name="q86" value="c">Juba</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>What is the capital of Oman?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Dhaka</label><br/> 
	<label><input type="radio" name="q87" value="c">Valletta</label><br/> 
	<label><input type="radio" name="q87" value="x">Muscat</label><br/>  
	<label><input type="radio" name="q87" value="b">Madrid</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>What is the capital of Philippines?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Malabo</label><br/> 
	<label><input type="radio" name="q88" value="b">Limo</label><br/> 
	<label><input type="radio" name="q88" value="c">Male</label><br/>  
	<label><input type="radio" name="q88" value="x">Manila</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>What is the capital of Pakistan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Baghdad</label><br/> 
	<label><input type="radio" name="q89" value="b">Malabo</label><br/> 
	<label><input type="radio" name="q89" value="c">Caracas</label><br/>  
	<label><input type="radio" name="q89" value="x">Islamabad</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>What is the capital of Poland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Washington, D.C.</label><br/> 
	<label><input type="radio" name="q90" value="b">Lilongwe</label><br/> 
	<label><input type="radio" name="q90" value="x">Warsaw</label><br/>  
	<label><input type="radio" name="q90" value="c">Windhoek</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>What is the capital of Portugal?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Vilnius</label><br/> 
	<label><input type="radio" name="q91" value="x">Lisbon</label><br/> 
	<label><input type="radio" name="q91" value="b">Chisinau</label><br/>  
	<label><input type="radio" name="q91" value="c">Beirut</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>What is the capital of Qatar?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Doha</label><br/> 
	<label><input type="radio" name="q92" value="a">Frankfurt</label><br/> 
	<label><input type="radio" name="q92" value="b">Castries</label><br/>  
	<label><input type="radio" name="q92" value="c">Basseterre</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>What is the capital of Romania?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Bucharest</label><br/> 
	<label><input type="radio" name="q93" value="a">Honduras</label><br/> 
	<label><input type="radio" name="q93" value="b">Bemopan</label><br/>  
	<label><input type="radio" name="q93" value="c">Niamey</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>Moscow is the capital of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Palestein</label><br/> 
	<label><input type="radio" name="q94" value="x">Russia</label><br/> 
	<label><input type="radio" name="q94" value="b">Somalia</label><br/>  
	<label><input type="radio" name="q94" value="c">North Korea</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>Kigali is the capital city of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Romania</label><br/> 
	<label><input type="radio" name="q95" value="b">Sweden</label><br/> 
	<label><input type="radio" name="q95" value="x">Rwanda</label><br/>  
	<label><input type="radio" name="q95" value="c">Oman</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>What is the capital of Saudi Arabia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Tarawa Atoll</label><br/> 
	<label><input type="radio" name="q96" value="b">Praia</label><br/> 
	<label><input type="radio" name="q96" value="x">Riyadh</label><br/>  
	<label><input type="radio" name="q96" value="c">Conakry</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>What is the capital city of Serbia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Bissau</label><br/> 
	<label><input type="radio" name="q97" value="x">Belgrade</label><br/> 
	<label><input type="radio" name="q97" value="b">Majuro</label><br/>  
	<label><input type="radio" name="q97" value="c">Guatemala City</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>What is the capital of Seychelles?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Bratislava</label><br/> 
	<label><input type="radio" name="q98" value="b">Skopje</label><br/> 
	<label><input type="radio" name="q98" value="x">Victoria</label><br/>  
	<label><input type="radio" name="q98" value="c">Honiara</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>What is the capital of Sierra Leone?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Port Vila</label><br/> 
	<label><input type="radio" name="q99" value="b">Buenos Aires</label><br/> 
	<label><input type="radio" name="q99" value="c">Podgorica</label><br/>  
	<label><input type="radio" name="q99" value="x">Freetown</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>What is the capital of Somalia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Monrovia</label><br/> 
	<label><input type="radio" name="q100" value="b">Nukualofa</label><br/> 
	<label><input type="radio" name="q100" value="c">Nairobi</label><br/>  
	<label><input type="radio" name="q100" value="x">Mogadishu</label>
	</fieldset>
	<fieldset id="q101">
	<legend><b>Question 101</b></legend>
	<legend><b>Seoul is the capital of which country?</b></legend><!-- x = correct answer -->
	<label><input type="radio" name="q101" value="a">Switzerland</label><br/>
	<label><input type="radio" name="q101" value="b">Netherlands</label><br/>
	<label><input type="radio" name="q101" value="x">South Korea</label><br/>
	<label><input type="radio" name="q101" value="c">North Korea</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>