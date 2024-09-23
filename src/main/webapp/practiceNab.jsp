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
		document.getElementById("score").innerHTML = 'Total Questions: 100'+'<br/>Correct: '+ right +'<br/>Incorrect: ' + wrong +'<br/>Percent Correct: ' + pcnt +'%';
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
	<legend><b>What is the national animal of the U.S.?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">North American beaver</label><br/> 
	<label><input type="radio" name="q1" value="b">Raccoon</label><br/> 
	<label><input type="radio" name="q1" value="c">White-tailed deer</label><br/>  
	<label><input type="radio" name="q1" value="x">American bison</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>What is the national animal of the U.K.?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q2" value="x">Lion</label><br/> 
	<label><input type="radio" name="q2" value="b">Cat</label><br/>  
	<label><input type="radio" name="q2" value="c">Beaver</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>What is the national animal of Italy?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Italian Wolf</label><br/> 
	<label><input type="radio" name="q3" value="a">Bison</label><br/> 
	<label><input type="radio" name="q3" value="b">Moose</label><br/>  
	<label><input type="radio" name="q3" value="c">EIk</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>What is the national animal of South Korea?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Steppe eagle</label><br/> 
	<label><input type="radio" name="q4" value="b">Moose</label><br/> 
	<label><input type="radio" name="q4" value="x">Siberian tiger</label><br/>  
	<label><input type="radio" name="q4" value="c">Cat</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>What is the national animal of Netherlands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Lion</label><br/> 
	<label><input type="radio" name="q5" value="a">Cheetah</label><br/> 
	<label><input type="radio" name="q5" value="b">Bear</label><br/>  
	<label><input type="radio" name="q5" value="c">Tiger</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>What is the national animal of Turkey?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Deer</label><br/> 
	<label><input type="radio" name="q6" value="x">Grey wolf</label><br/> 
	<label><input type="radio" name="q6" value="b">Monkey</label><br/>  
	<label><input type="radio" name="q6" value="c">Giant panda</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Feenec fox is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Bulgeria</label><br/> 
	<label><input type="radio" name="q7" value="b">France</label><br/> 
	<label><input type="radio" name="q7" value="x">Algeria</label><br/>  
	<label><input type="radio" name="q7" value="c">Austria</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>Giant sable antelope is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Paris</label><br/> 
	<label><input type="radio" name="q8" value="b">Switzerland</label><br/> 
	<label><input type="radio" name="q8" value="c">Canada</label><br/>  
	<label><input type="radio" name="q8" value="x">Angola</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>What is the national animal of Antigua and Barbuda?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Whale sharks</label><br/> 
	<label><input type="radio" name="q9" value="b">Draco</label><br/> 
	<label><input type="radio" name="q9" value="x">Fallow deer</label><br/>  
	<label><input type="radio" name="q9" value="c">Alytes</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>Red kangaroo is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">Austria</label><br/> 
	<label><input type="radio" name="q10" value="x">Australia</label><br/> 
	<label><input type="radio" name="q10" value="b">Africa</label><br/>  
	<label><input type="radio" name="q10" value="c">Algeria</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>Austrian Bundesadler is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Austria</label><br/> 
	<label><input type="radio" name="q11" value="a">Bulgeria</label><br/> 
	<label><input type="radio" name="q11" value="b">Canada</label><br/>  
	<label><input type="radio" name="q11" value="c">Austria</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>Karabakh horse is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Azerbaijan</label><br/> 
	<label><input type="radio" name="q12" value="a">Japan</label><br/> 
	<label><input type="radio" name="q12" value="b">Philippines</label><br/>  
	<label><input type="radio" name="q12" value="c">England</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>What is the national animal of Bangladesh?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Kangaroo</label><br/> 
	<label><input type="radio" name="q13" value="b">Aurochs</label><br/> 
	<label><input type="radio" name="q13" value="c">Markhor</label><br/>  
	<label><input type="radio" name="q13" value="x">Royal Bengal tiger</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>European bison is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Malaysia</label><br/> 
	<label><input type="radio" name="q14" value="x">Poland and Belarus</label><br/> 
	<label><input type="radio" name="q14" value="b">Greece</label><br/>  
	<label><input type="radio" name="q14" value="c">Brazil</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>Leo Belgicus is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q15" value="b">Belize</label><br/> 
	<label><input type="radio" name="q15" value="x">Belgium</label><br/>  
	<label><input type="radio" name="q15" value="c">Mexico</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>What is the national animal of Belize?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Leopard</label><br/> 
	<label><input type="radio" name="q16" value="b">Panther</label><br/> 
	<label><input type="radio" name="q16" value="x">Baird's tapir</label><br/>  
	<label><input type="radio" name="q16" value="c">Jaguar</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>Drunk is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Bhutan</label><br/> 
	<label><input type="radio" name="q17" value="a">Bangladesh</label><br/> 
	<label><input type="radio" name="q17" value="b">Malaysia</label><br/>  
	<label><input type="radio" name="q17" value="c">Finland</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>What is the national animal of Guyana?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Jaguar</label><br/> 
	<label><input type="radio" name="q18" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q18" value="b">Giraffe</label><br/>  
	<label><input type="radio" name="q18" value="c">Kangaroo</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>What is the national animal of Cambodia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Sea horse</label><br/> 
	<label><input type="radio" name="q19" value="b">Guinea pig</label><br/> 
	<label><input type="radio" name="q19" value="c">Porcupine</label><br/>  
	<label><input type="radio" name="q19" value="x">Kouprey</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>The North American beaver is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">China</label><br/> 
	<label><input type="radio" name="q20" value="x">Canada</label><br/> 
	<label><input type="radio" name="q20" value="b">Colombia</label><br/>  
	<label><input type="radio" name="q20" value="c">Croatia</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>The Giant panda is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Canada</label><br/> 
	<label><input type="radio" name="q21" value="b">Russia</label><br/> 
	<label><input type="radio" name="q21" value="c">South Africa</label><br/>  
	<label><input type="radio" name="q21" value="x">China</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>Andean condor is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Tanzania</label><br/> 
	<label><input type="radio" name="q22" value="b">Bhutan</label><br/> 
	<label><input type="radio" name="q22" value="x">Colombia</label><br/>  
	<label><input type="radio" name="q22" value="c">India</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>The Pine marten is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Colombia</label><br/> 
	<label><input type="radio" name="q23" value="x">Croatia</label><br/> 
	<label><input type="radio" name="q23" value="b">Romania</label><br/>  
	<label><input type="radio" name="q23" value="c">Tokyo</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>Cypriot mouflon is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Cyprus</label><br/> 
	<label><input type="radio" name="q24" value="a">Latvia</label><br/> 
	<label><input type="radio" name="q24" value="b">Guyana</label><br/>  
	<label><input type="radio" name="q24" value="c">Denmark</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>Double-tailed lion is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Czech Republic</label><br/> 
	<label><input type="radio" name="q25" value="a">Estonia</label><br/> 
	<label><input type="radio" name="q25" value="b">Germany</label><br/>  
	<label><input type="radio" name="q25" value="c">Jordan</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>Arabian camel is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Israel</label><br/> 
	<label><input type="radio" name="q26" value="b">Mauritius</label><br/> 
	<label><input type="radio" name="q26" value="x">Saudi Arabia</label><br/>  
	<label><input type="radio" name="q26" value="c">Nicaragua</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>What is the national animal of Ethiopia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q27" value="b">Cheetah</label><br/> 
	<label><input type="radio" name="q27" value="x">Lion</label><br/>  
	<label><input type="radio" name="q27" value="c">Gorilla</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What is the national animal of the Faroe Islands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Goat</label><br/> 
	<label><input type="radio" name="q28" value="x">Brown bear</label><br/> 
	<label><input type="radio" name="q28" value="b">Cow</label><br/>  
	<label><input type="radio" name="q28" value="c">Zebra</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>The Brown bear is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Iceland</label><br/> 
	<label><input type="radio" name="q29" value="x">Russia</label><br/> 
	<label><input type="radio" name="q29" value="b">Poland</label><br/>  
	<label><input type="radio" name="q29" value="c">New Zealand</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Black panther is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Ukraine</label><br/> 
	<label><input type="radio" name="q30" value="x">Gabon</label><br/> 
	<label><input type="radio" name="q30" value="b">Macau</label><br/>  
	<label><input type="radio" name="q30" value="c">Haiti</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>What is the national animal of Gambia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Blue Bull</label><br/> 
	<label><input type="radio" name="q31" value="b">Elephant</label><br/> 
	<label><input type="radio" name="q31" value="x">Spotted hyena</label><br/>  
	<label><input type="radio" name="q31" value="c">Buffalo</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>What is the national animal of Greece?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Mammal</label><br/> 
	<label><input type="radio" name="q32" value="b">Fish</label><br/> 
	<label><input type="radio" name="q32" value="c">Whale</label><br/>  
	<label><input type="radio" name="q32" value="x">Dolphin</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>What is the national animal of Honduras?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Yucatan White-tailed deer</label><br/> 
	<label><input type="radio" name="q33" value="a">Mongoose</label><br/> 
	<label><input type="radio" name="q33" value="b">Antelope</label><br/>  
	<label><input type="radio" name="q33" value="c">Rhinocerous</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Turul is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Vietnam</label><br/> 
	<label><input type="radio" name="q34" value="b">Zambia</label><br/> 
	<label><input type="radio" name="q34" value="x">Hungary</label><br/>  
	<label><input type="radio" name="q34" value="c">Thailand</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>Gyrfalcon is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Sri Lanka</label><br/> 
	<label><input type="radio" name="q35" value="b">Sweden</label><br/> 
	<label><input type="radio" name="q35" value="c">Singapore</label><br/>  
	<label><input type="radio" name="q35" value="x">Iceland</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>What is the national animal of Indoenesia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Komodo dragon</label><br/> 
	<label><input type="radio" name="q36" value="a">Kea</label><br/> 
	<label><input type="radio" name="q36" value="b">Macaw</label><br/>  
	<label><input type="radio" name="q36" value="c">Cockatoo</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>Persian lion is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Iraq</label><br/> 
	<label><input type="radio" name="q37" value="c">Madagascar</label><br/> 
	<label><input type="radio" name="q37" value="b">Morocco</label><br/>  
	<label><input type="radio" name="q37" value="x">Iran</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>What is the national animal of Kenya?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Elephant</label><br/> 
	<label><input type="radio" name="q38" value="x">East African lion</label><br/> 
	<label><input type="radio" name="q38" value="b">Dog</label><br/>  
	<label><input type="radio" name="q38" value="c">Deer</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>What is the national animal of Macedonia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Macedonian Lion</label><br/> 
	<label><input type="radio" name="q39" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q39" value="b">Cheetah</label><br/>  
	<label><input type="radio" name="q39" value="c">Gorilla</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>Lemur is the official national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Tanzania</label><br/> 
	<label><input type="radio" name="q40" value="b">Turkey</label><br/> 
	<label><input type="radio" name="q40" value="x">Madagascar</label><br/>  
	<label><input type="radio" name="q40" value="c">United Kingdom</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>What is the national animal of Malaysia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Malayan tiger</label><br/> 
	<label><input type="radio" name="q41" value="a">Grey wolf</label><br/> 
	<label><input type="radio" name="q41" value="b">Puma</label><br/>  
	<label><input type="radio" name="q41" value="c">Cheetah</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>What is the national animal of Malta?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Unicorn</label><br/> 
	<label><input type="radio" name="q42" value="x">Pharooh Hound</label><br/> 
	<label><input type="radio" name="q42" value="b">Lynx</label><br/>  
	<label><input type="radio" name="q42" value="c">Bison</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>Aurochs is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Moldova</label><br/> 
	<label><input type="radio" name="q43" value="a">Poland</label><br/> 
	<label><input type="radio" name="q43" value="b">Pakistan</label><br/>  
	<label><input type="radio" name="q43" value="c">Mexico</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>What is the national animal of Nepal?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Buffalo</label><br/> 
	<label><input type="radio" name="q44" value="b">Goat</label><br/> 
	<label><input type="radio" name="q44" value="c">Giraffe</label><br/>  
	<label><input type="radio" name="q44" value="x">Cow</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>What is the national animal of Norway?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Lion</label><br/> 
	<label><input type="radio" name="q45" value="a">Jaguar</label><br/> 
	<label><input type="radio" name="q45" value="b">Leopard</label><br/>  
	<label><input type="radio" name="q45" value="c">Tiger</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>What is the national animal of Oman?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Arabian Leopard</label><br/> 
	<label><input type="radio" name="q46" value="b">Arabian Wolf</label><br/> 
	<label><input type="radio" name="q46" value="x">Arabian oryx</label><br/>  
	<label><input type="radio" name="q46" value="c">Arabian Horse</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>What is the national animal of Pakistan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Wild goat</label><br/> 
	<label><input type="radio" name="q47" value="x">Markhor</label><br/> 
	<label><input type="radio" name="q47" value="b">Ukraine</label><br/>  
	<label><input type="radio" name="q47" value="c">Nubian ibex</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>What is the national animal of Panama?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Panamanian golden frogs?</label><br/> 
	<label><input type="radio" name="q48" value="a">Salamanders</label><br/> 
	<label><input type="radio" name="q48" value="b">Caecilian</label><br/>  
	<label><input type="radio" name="q48" value="c">Snail</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>What is the national animal of Papua New Guinea?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Walrus</label><br/> 
	<label><input type="radio" name="q49" value="b">Sea Otter</label><br/> 
	<label><input type="radio" name="q49" value="x">Dugong</label><br/>  
	<label><input type="radio" name="q49" value="c">Vaquita</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>Vicuna is the national animal of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Australia</label><br/> 
	<label><input type="radio" name="q50" value="x">Peru</label><br/> 
	<label><input type="radio" name="q50" value="b">Greenland</label><br/>  
	<label><input type="radio" name="q50" value="c">Futuna</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>Tundra swan is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">North America</label><br/> 
	<label><input type="radio" name="q51" value="a">Canada</label><br/> 
	<label><input type="radio" name="q51" value="b">China</label><br/>  
	<label><input type="radio" name="q51" value="c">Japan</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>What is the national bird of Spain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Golden eagle</label><br/> 
	<label><input type="radio" name="q52" value="b">Harpy eagle</label><br/> 
	<label><input type="radio" name="q52" value="c">Bald eagle</label><br/>  
	<label><input type="radio" name="q52" value="x">Imperial eagle</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>Korean magpie is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">North korea</label><br/> 
	<label><input type="radio" name="q53" value="b">Taiwan</label><br/> 
	<label><input type="radio" name="q53" value="x">South korea</label><br/>  
	<label><input type="radio" name="q53" value="c">Thailand</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>What is the national bird of Canada?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">White stork</label><br/> 
	<label><input type="radio" name="q54" value="x">Gray Jay</label><br/> 
	<label><input type="radio" name="q54" value="b">Goose</label><br/>  
	<label><input type="radio" name="q54" value="c">Peacock</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>What is the national bird of Netherlands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Black-tailed godwit</label><br/> 
	<label><input type="radio" name="q55" value="a">White wagtail</label><br/> 
	<label><input type="radio" name="q55" value="b">Wales</label><br/>  
	<label><input type="radio" name="q55" value="c">Humming bird</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>What is the national bird of Turkey?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Little Crake</label><br/> 
	<label><input type="radio" name="q56" value="b">Pearl Kite</label><br/> 
	<label><input type="radio" name="q56" value="c">Masked Booby</label><br/>  
	<label><input type="radio" name="q56" value="x">Redwing</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>Turaco is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Kiribati</label><br/> 
	<label><input type="radio" name="q57" value="x">Eswatini</label><br/> 
	<label><input type="radio" name="q57" value="b">Netherland</label><br/>  
	<label><input type="radio" name="q57" value="c">Botswana</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>What is the national bird of Anguilla?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Zenaida dove</label><br/> 
	<label><input type="radio" name="q58" value="a">Grandala</label><br/> 
	<label><input type="radio" name="q58" value="b">Palmchat</label><br/>  
	<label><input type="radio" name="q58" value="c">Hoatzin</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>What is the national bird of Antigua and Barbuda?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Maroon-fronted Parrot</label><br/> 
	<label><input type="radio" name="q59" value="b">Bare-throated Bellbird</label><br/> 
	<label><input type="radio" name="q59" value="x">Magnificent frigatebird</label><br/>  
	<label><input type="radio" name="q59" value="c">Red-faced Cormorant</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>Red-crested turaco is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Andorra</label><br/> 
	<label><input type="radio" name="q60" value="x">Angola</label><br/> 
	<label><input type="radio" name="q60" value="b">Angolia</label><br/>  
	<label><input type="radio" name="q60" value="c">Anguilia</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>What is the national bird of Argentian?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">White-necked Hawk</label><br/> 
	<label><input type="radio" name="q61" value="b">Rufous-bellied Thrush</label><br/> 
	<label><input type="radio" name="q61" value="c">Hooded Berryeater</label><br/>  
	<label><input type="radio" name="q61" value="x">Rufous hornero</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>Shoco is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Aruba</label><br/> 
	<label><input type="radio" name="q62" value="a">Angola</label><br/> 
	<label><input type="radio" name="q62" value="b">Uganda</label><br/>  
	<label><input type="radio" name="q62" value="c">Kuba</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>What is the national bird of Australia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Kiwi</label><br/> 
	<label><input type="radio" name="q63" value="b">Iraq</label><br/> 
	<label><input type="radio" name="q63" value="c">Eagle</label><br/>  
	<label><input type="radio" name="q63" value="x">Emu</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>What is the national bird of Austria?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Bermuda petrel</label><br/> 
	<label><input type="radio" name="q64" value="b">Tailor Bird</label><br/> 
	<label><input type="radio" name="q64" value="c">House Sparrow</label><br/>  
	<label><input type="radio" name="q64" value="x">Barn swallow</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>American flamingo is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Bostawa</label><br/> 
	<label><input type="radio" name="q65" value="x">Bahamas</label><br/> 
	<label><input type="radio" name="q65" value="b">Bulgaria</label><br/>  
	<label><input type="radio" name="q65" value="c">Belgium</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>The national bird of Bahrain is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">White wagtail</label><br/> 
	<label><input type="radio" name="q66" value="b">White-throated dipper</label><br/> 
	<label><input type="radio" name="q66" value="x">White-eared bulbul</label><br/>  
	<label><input type="radio" name="q66" value="c">Black-tailed godwit</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What is the national bird of Bangladesh?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Magpie robin</label><br/> 
	<label><input type="radio" name="q67" value="a">Sparrow</label><br/> 
	<label><input type="radio" name="q67" value="b">Korean magpie</label><br/>  
	<label><input type="radio" name="q67" value="c">Peregrine falcon</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>Which is the national bird of Peru?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Hoopoe</label><br/> 
	<label><input type="radio" name="q68" value="b">Gyrfalcon</label><br/> 
	<label><input type="radio" name="q68" value="x">The Andean Cock-Of-The-Rock</label><br/>  
	<label><input type="radio" name="q68" value="c">White-eared bulbul</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>what is the national bird of Belgium?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">White stork</label><br/> 
	<label><input type="radio" name="q69" value="b">Keel-billed toucan</label><br/> 
	<label><input type="radio" name="q69" value="x">Common kestrel</label><br/>  
	<label><input type="radio" name="q69" value="c">Zenaida Dove</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>The national bird of Belize is _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Oystercatcher</label><br/> 
	<label><input type="radio" name="q70" value="x">Keel-billed toucan</label><br/> 
	<label><input type="radio" name="q70" value="b">Cuban trogan</label><br/>  
	<label><input type="radio" name="q70" value="c">Blue crane</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>What is the national bird of Bermuda?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Red kite</label><br/> 
	<label><input type="radio" name="q71" value="x">Bermuda petrel</label><br/> 
	<label><input type="radio" name="q71" value="b">Peregrine falcon</label><br/>  
	<label><input type="radio" name="q71" value="c">Gyrfalcon</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>What is the national bird of Bhutan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Raven</label><br/> 
	<label><input type="radio" name="q72" value="a">Chukar Partridge</label><br/> 
	<label><input type="radio" name="q72" value="b">Crimson Sunbird</label><br/>  
	<label><input type="radio" name="q72" value="c">Steppe eagle</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>Kori bustard is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Kazakhstan</label><br/> 
	<label><input type="radio" name="q73" value="b">Turkey</label><br/> 
	<label><input type="radio" name="q73" value="x">Africa</label><br/>  
	<label><input type="radio" name="q73" value="c">Sudan</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>What is the national bird of Bolivia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Vicuna</label><br/> 
	<label><input type="radio" name="q74" value="b">Carabao</label><br/> 
	<label><input type="radio" name="q74" value="c">Lynx</label><br/>  
	<label><input type="radio" name="q74" value="x">Andean condor</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>What is the national bird of Brazil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Rufous-bellied Thrush</label><br/> 
	<label><input type="radio" name="q75" value="a">Red-billed Streamertail</label><br/> 
	<label><input type="radio" name="q75" value="b">Hispaniolan Trogan</label><br/>  
	<label><input type="radio" name="q75" value="c">Dodo</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Mourning dove is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Cayman Islands</label><br/> 
	<label><input type="radio" name="q76" value="b">Iceland</label><br/> 
	<label><input type="radio" name="q76" value="c">Ireland</label><br/>  
	<label><input type="radio" name="q76" value="x">British Virgin Islands</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>Which is the national bird of Cambodia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Mute Swan</label><br/> 
	<label><input type="radio" name="q77" value="x">Giant Ibis</label><br/> 
	<label><input type="radio" name="q77" value="b">Danphe</label><br/>  
	<label><input type="radio" name="q77" value="c">Quetzal</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>Grand Cayman parrot is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">British Virgin Islands</label><br/> 
	<label><input type="radio" name="q78" value="b">Ireland</label><br/> 
	<label><input type="radio" name="q78" value="c">Iceland</label><br/>  
	<label><input type="radio" name="q78" value="x">Cayman Islands</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>Which is the national bird of Chile?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Turul</label><br/> 
	<label><input type="radio" name="q79" value="b">Hoopoe</label><br/> 
	<label><input type="radio" name="q79" value="x">Andean Condor</label><br/>  
	<label><input type="radio" name="q79" value="c">Danphe</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>What is the national bird of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Wales</label><br/> 
	<label><input type="radio" name="q80" value="b">Nightingale</label><br/> 
	<label><input type="radio" name="q80" value="c">Red kite</label><br/>  
	<label><input type="radio" name="q80" value="x">Red-crowned crane</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>Andean condor is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Colombia</label><br/> 
	<label><input type="radio" name="q81" value="a">Jamaica</label><br/> 
	<label><input type="radio" name="q81" value="b">Denmark</label><br/>  
	<label><input type="radio" name="q81" value="c">Costa Rico</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>Clay-colored thrush is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Latvia</label><br/> 
	<label><input type="radio" name="q82" value="b">Panama</label><br/> 
	<label><input type="radio" name="q82" value="x">Costa Rica</label><br/>  
	<label><input type="radio" name="q82" value="c">Serbia</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>The common nightingale is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Lithuania</label><br/> 
	<label><input type="radio" name="q83" value="x">Iran</label><br/> 
	<label><input type="radio" name="q83" value="b">Sri Lanka</label><br/>  
	<label><input type="radio" name="q83" value="c">Poland</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>Cuban Trogan is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Guatemala</label><br/> 
	<label><input type="radio" name="q84" value="x">Cuba</label><br/> 
	<label><input type="radio" name="q84" value="b">Hungary</label><br/>  
	<label><input type="radio" name="q84" value="c">Estonia</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>What is the national bird of Denmark?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Mute Swan</label><br/> 
	<label><input type="radio" name="q85" value="a">Barn Swallow</label><br/> 
	<label><input type="radio" name="q85" value="b">White Eagle</label><br/>  
	<label><input type="radio" name="q85" value="c">Chukar</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>What is the national bird of Dominica?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Saint Vincent amazon</label><br/> 
	<label><input type="radio" name="q86" value="b">White Wagtail</label><br/> 
	<label><input type="radio" name="q86" value="x">Imperial amazon</label><br/>  
	<label><input type="radio" name="q86" value="c">Frigate</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>Palmchat is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Netherlands</label><br/> 
	<label><input type="radio" name="q87" value="c">United States</label><br/> 
	<label><input type="radio" name="q87" value="x">Dominican Republic</label><br/>  
	<label><input type="radio" name="q87" value="b">Finland</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>The national bird of Ecuador is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Egypt</label><br/> 
	<label><input type="radio" name="q88" value="b">Estonia</label><br/> 
	<label><input type="radio" name="q88" value="c">Austria</label><br/>  
	<label><input type="radio" name="q88" value="x">Andean condor</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>What is the national bird of Estonia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Eagle</label><br/> 
	<label><input type="radio" name="q89" value="b">Lynx</label><br/> 
	<label><input type="radio" name="q89" value="c">Carabao</label><br/>  
	<label><input type="radio" name="q89" value="x">Barn Swallow</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>What is the national bird of EI Salvador?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Eagle</label><br/> 
	<label><input type="radio" name="q90" value="b">Goose</label><br/> 
	<label><input type="radio" name="q90" value="x">Turquoise-browed Motmot</label><br/>  
	<label><input type="radio" name="q90" value="c">Dove</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>Eurasian oystercatcher is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Iceland</label><br/> 
	<label><input type="radio" name="q91" value="x">Faroe Islands</label><br/> 
	<label><input type="radio" name="q91" value="b">Pakistan</label><br/>  
	<label><input type="radio" name="q91" value="c">Sri Lanka</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>What is the national bird of Finland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Whooper Swan</label><br/> 
	<label><input type="radio" name="q92" value="a">Mute Swan</label><br/> 
	<label><input type="radio" name="q92" value="b">Barn Swallow</label><br/>  
	<label><input type="radio" name="q92" value="c">Pearl Kite</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>Gallic rooster is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">France</label><br/> 
	<label><input type="radio" name="q93" value="a">Greece</label><br/> 
	<label><input type="radio" name="q93" value="b">China</label><br/>  
	<label><input type="radio" name="q93" value="c">Japan</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>The national bird of Germany is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Golden Eagle</label><br/> 
	<label><input type="radio" name="q94" value="x">Federal Eagle</label><br/> 
	<label><input type="radio" name="q94" value="b">White Eagle</label><br/>  
	<label><input type="radio" name="q94" value="c">Steppe Eagle</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>Barbary patridge is national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Pakistan</label><br/> 
	<label><input type="radio" name="q95" value="b">Iceland</label><br/> 
	<label><input type="radio" name="q95" value="x">Algeria</label><br/>  
	<label><input type="radio" name="q95" value="c">Sri Lanka</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>Little Owl is the national bird of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q96" value="b">Egypt</label><br/> 
	<label><input type="radio" name="q96" value="x">Greece</label><br/>  
	<label><input type="radio" name="q96" value="c">France</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>The national bird of Grenada is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Green Pheasant</label><br/> 
	<label><input type="radio" name="q97" value="x">Grenada Dove</label><br/> 
	<label><input type="radio" name="q97" value="b">White Stork</label><br/>  
	<label><input type="radio" name="q97" value="c">Zenaida Dove</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>What is national bird of Guatemala?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Red-faced Cormorant</label><br/> 
	<label><input type="radio" name="q98" value="b">Narrow-billed Tody</label><br/> 
	<label><input type="radio" name="q98" value="x">Resplendent quetzal</label><br/>  
	<label><input type="radio" name="q98" value="c">Trumpeter Hornbill</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>The national bird of Guyana is __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Scarlet Macaw</label><br/> 
	<label><input type="radio" name="q99" value="b">Screaming Piha</label><br/> 
	<label><input type="radio" name="q99" value="c">Cardinal Lory</label><br/>  
	<label><input type="radio" name="q99" value="x">Hoatzin or Canje Pheasant</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>National bird of Haiti is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Cedar Waxwing</label><br/> 
	<label><input type="radio" name="q100" value="b">Belted Kingfisher</label><br/> 
	<label><input type="radio" name="q100" value="c">Common Scimitarbill</label><br/>  
	<label><input type="radio" name="q100" value="x">Hispaniolan trogon</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>