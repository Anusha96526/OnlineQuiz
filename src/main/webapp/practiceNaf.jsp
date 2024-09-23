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
	<legend><b>How many heads are there in Albanian flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">1</label><br/> 
	<label><input type="radio" name="q1" value="b">3</label><br/> 
	<label><input type="radio" name="q1" value="c">4</label><br/>  
	<label><input type="radio" name="q1" value="x">2</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>Which animal will you find clutching a sword on the Sri Lanka flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Bear</label><br/> 
	<label><input type="radio" name="q2" value="x">Lion</label><br/> 
	<label><input type="radio" name="q2" value="b">Monkey</label><br/>  
	<label><input type="radio" name="q2" value="c">Tiger</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>In which country's national flag is inscribed with the motto 'Ordem e Progresso?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Brazil</label><br/> 
	<label><input type="radio" name="q3" value="a">France</label><br/> 
	<label><input type="radio" name="q3" value="b">Taiwan</label><br/>  
	<label><input type="radio" name="q3" value="c">Sudan</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>What bird is bitinf a snake in the center of the Mexican flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Peacock</label><br/> 
	<label><input type="radio" name="q4" value="b">Parrot</label><br/> 
	<label><input type="radio" name="q4" value="x">Eagle</label><br/>  
	<label><input type="radio" name="q4" value="c">Dove</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>Which country's flag is famous for having an AK-47 gun featured on it?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Mozambique</label><br/> 
	<label><input type="radio" name="q5" value="a">Morocco</label><br/> 
	<label><input type="radio" name="q5" value="b">Bolivia</label><br/>  
	<label><input type="radio" name="q5" value="c">Kenya</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>How many small stars are around the bigger star on the flag of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">1</label><br/> 
	<label><input type="radio" name="q6" value="x">4</label><br/> 
	<label><input type="radio" name="q6" value="b">3</label><br/>  
	<label><input type="radio" name="q6" value="c">2</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Which country has the most unique flag in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Mongolia</label><br/> 
	<label><input type="radio" name="q7" value="b">EI Salvador</label><br/> 
	<label><input type="radio" name="q7" value="x">Nepal</label><br/>  
	<label><input type="radio" name="q7" value="c">Tonga</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>Which central African country has a golden bird on its flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Egypt</label><br/> 
	<label><input type="radio" name="q8" value="b">Democratic Republic of the Congo</label><br/> 
	<label><input type="radio" name="q8" value="c">Rwanda</label><br/>  
	<label><input type="radio" name="q8" value="x">Zimbabwe</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>Which country has the green flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Algeria</label><br/> 
	<label><input type="radio" name="q9" value="b">Germany</label><br/> 
	<label><input type="radio" name="q9" value="x">Saudia Arabia</label><br/>  
	<label><input type="radio" name="q9" value="c">Bulgeria</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>What do you call the study of flags?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">Bunting</label><br/> 
	<label><input type="radio" name="q10" value="x">Vexillology</label><br/> 
	<label><input type="radio" name="q10" value="b">Heraldry</label><br/>  
	<label><input type="radio" name="q10" value="c">Flagology</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>Which U.S. state flag contains a British Union Jack?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Hawaii</label><br/> 
	<label><input type="radio" name="q11" value="a">Alabama</label><br/> 
	<label><input type="radio" name="q11" value="b">Arizona</label><br/>  
	<label><input type="radio" name="q11" value="c">California</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>How many stars are there on the flag of the People's Republic of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">5</label><br/> 
	<label><input type="radio" name="q12" value="a">4</label><br/> 
	<label><input type="radio" name="q12" value="b">7</label><br/>  
	<label><input type="radio" name="q12" value="c">6</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>Which mythical animal is on the Wales flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Phoenix</label><br/> 
	<label><input type="radio" name="q13" value="b">Serpent</label><br/> 
	<label><input type="radio" name="q13" value="c">Griffin</label><br/>  
	<label><input type="radio" name="q13" value="x">Red Dragon</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>Which country's flag becomes the 'flag of Indonesia' when turned upside down?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Singapore</label><br/> 
	<label><input type="radio" name="q14" value="x">Poland</label><br/> 
	<label><input type="radio" name="q14" value="b">Bangkok</label><br/>  
	<label><input type="radio" name="q14" value="c">Nepal</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>Which large letter formerly appeared on the flag of Rwanda?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">W</label><br/> 
	<label><input type="radio" name="q15" value="b">A</label><br/> 
	<label><input type="radio" name="q15" value="x">R</label><br/>  
	<label><input type="radio" name="q15" value="c">D</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>Nutmeg appears on which country's national flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Nigeria</label><br/> 
	<label><input type="radio" name="q16" value="b">Paraguay</label><br/> 
	<label><input type="radio" name="q16" value="x">Grenada</label><br/>  
	<label><input type="radio" name="q16" value="c">Mongolia</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>Which constellation appears on the flag of Australia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Southern Cross</label><br/> 
	<label><input type="radio" name="q17" value="a">Northern Cross</label><br/> 
	<label><input type="radio" name="q17" value="b">Eastern Cross</label><br/>  
	<label><input type="radio" name="q17" value="c">Western Cross</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>The flag of which country is the oldest national flag still in use?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Denmark</label><br/> 
	<label><input type="radio" name="q18" value="a">Kuwait</label><br/> 
	<label><input type="radio" name="q18" value="b">Kenya</label><br/>  
	<label><input type="radio" name="q18" value="c">Philippines</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>What symbol appears on the flag of Cyprus?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Angry</label><br/> 
	<label><input type="radio" name="q19" value="b">Motivation</label><br/> 
	<label><input type="radio" name="q19" value="c">Knowledge</label><br/>  
	<label><input type="radio" name="q19" value="x">Peace</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>Which country's national flag depicts a bunch of bananas?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Rwanda</label><br/> 
	<label><input type="radio" name="q20" value="x">Fiji</label><br/> 
	<label><input type="radio" name="q20" value="b">Armenia</label><br/>  
	<label><input type="radio" name="q20" value="c">Denmark</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>How many stars are there on the flag of the European Union?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">15</label><br/> 
	<label><input type="radio" name="q21" value="b">10</label><br/> 
	<label><input type="radio" name="q21" value="c">5</label><br/>  
	<label><input type="radio" name="q21" value="x">12</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>Which country's national flag used to be just one colour until 2011?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Syria</label><br/> 
	<label><input type="radio" name="q22" value="b">Latvia</label><br/> 
	<label><input type="radio" name="q22" value="x">Libya</label><br/>  
	<label><input type="radio" name="q22" value="c">Estonia</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>The flag of which country has the nickname 'Golden Arrow'?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Guyana</label><br/> 
	<label><input type="radio" name="q23" value="x">Greece</label><br/> 
	<label><input type="radio" name="q23" value="b">Gabon</label><br/>  
	<label><input type="radio" name="q23" value="c">Greenland</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What flag is on the top left-hand corner of the Australian flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">United Kingdom</label><br/> 
	<label><input type="radio" name="q24" value="a">Beijing</label><br/> 
	<label><input type="radio" name="q24" value="b">United States</label><br/>  
	<label><input type="radio" name="q24" value="c">Bangladesh</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>Which African country's flag features its national bird, the grey crowned crane?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Uganda</label><br/> 
	<label><input type="radio" name="q25" value="a">Malaysia</label><br/> 
	<label><input type="radio" name="q25" value="b">Serbia</label><br/>  
	<label><input type="radio" name="q25" value="c">Jordan</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>The maple tree is featured on national flag of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">China</label><br/> 
	<label><input type="radio" name="q26" value="b">Canada</label><br/> 
	<label><input type="radio" name="q26" value="x">Canada</label><br/>  
	<label><input type="radio" name="q26" value="c">Japan</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>What are the colors of the United Nations Organization flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Red and Blue</label><br/> 
	<label><input type="radio" name="q27" value="b">Black and Blue</label><br/> 
	<label><input type="radio" name="q27" value="x">White and Blue</label><br/>  
	<label><input type="radio" name="q27" value="c">Violet and Blue</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What color is the hammer and sickle on the Soviet flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Orange</label><br/> 
	<label><input type="radio" name="q28" value="x">Red</label><br/> 
	<label><input type="radio" name="q28" value="b">Pink</label><br/>  
	<label><input type="radio" name="q28" value="c">Yellow</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>In war, what is indicated by a white flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Powerful</label><br/> 
	<label><input type="radio" name="q29" value="x">Surrender</label><br/> 
	<label><input type="radio" name="q29" value="b">Fight</label><br/>  
	<label><input type="radio" name="q29" value="c">Resist</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Which country's flag includes the Star of David symbol?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Oman</label><br/> 
	<label><input type="radio" name="q30" value="x">Israel</label><br/> 
	<label><input type="radio" name="q30" value="b">Portugal</label><br/>  
	<label><input type="radio" name="q30" value="c">Somalia</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>Which country has a single cedar tree on its flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Egypt</label><br/> 
	<label><input type="radio" name="q31" value="b">Malawi</label><br/> 
	<label><input type="radio" name="q31" value="x">Lebanon</label><br/>  
	<label><input type="radio" name="q31" value="c">Tonga</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>The Bayamo anthem first performed during the Battle of Bayamo in 1868, is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Kenya</label><br/> 
	<label><input type="radio" name="q32" value="b">Fiji</label><br/> 
	<label><input type="radio" name="q32" value="c">Haiti</label><br/>  
	<label><input type="radio" name="q32" value="x">Cuba</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>La Marseillaise is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">France</label><br/> 
	<label><input type="radio" name="q33" value="a">Turkey</label><br/> 
	<label><input type="radio" name="q33" value="b">Sweden</label><br/>  
	<label><input type="radio" name="q33" value="c">Albania</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Which country has the hardest national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Paraguay</label><br/> 
	<label><input type="radio" name="q34" value="b">Australia</label><br/> 
	<label><input type="radio" name="q34" value="x">Canada</label><br/>  
	<label><input type="radio" name="q34" value="c">Netherlands</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>What is the national anthem of Netherlands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">La Marseillaise</label><br/> 
	<label><input type="radio" name="q35" value="b">Ee Mungu nguvu yetu</label><br/> 
	<label><input type="radio" name="q35" value="c">Jana Gana Mana</label><br/>  
	<label><input type="radio" name="q35" value="x">Het Wilhelmus</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>Which country has the longest national anthem in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Greece</label><br/> 
	<label><input type="radio" name="q36" value="a">Uganda</label><br/> 
	<label><input type="radio" name="q36" value="b">United States</label><br/>  
	<label><input type="radio" name="q36" value="c">Finland</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>Sayaun Thunga Phool Ka, is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Pakistan</label><br/> 
	<label><input type="radio" name="q37" value="c">Myanmar</label><br/> 
	<label><input type="radio" name="q37" value="b">Afganistan</label><br/>  
	<label><input type="radio" name="q37" value="x">Nepal</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>Which country has the shortest national anthem in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Cyprus</label><br/> 
	<label><input type="radio" name="q38" value="x">Japan</label><br/> 
	<label><input type="radio" name="q38" value="b">Spain</label><br/>  
	<label><input type="radio" name="q38" value="c">Kuwait</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>Who composed the national anthem of France?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Claude Joseph Rouget de Lisle</label><br/> 
	<label><input type="radio" name="q39" value="a">Serge Gainsbourg</label><br/> 
	<label><input type="radio" name="q39" value="b">Maximilien Roberspierre</label><br/>  
	<label><input type="radio" name="q39" value="c">Alexander Dumas</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>The Star-Spangled Banner is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Poland</label><br/> 
	<label><input type="radio" name="q40" value="b">Norway</label><br/> 
	<label><input type="radio" name="q40" value="x">United States</label><br/>  
	<label><input type="radio" name="q40" value="c">United Kingdom</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>When was 'Jana Gana Mana' adopted as the National Anthem of India?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">1950</label><br/> 
	<label><input type="radio" name="q41" value="a">1960</label><br/> 
	<label><input type="radio" name="q41" value="b">1945</label><br/>  
	<label><input type="radio" name="q41" value="c">1947</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>Which two countries national anthems were composed by the same poet?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Bangladesh and Malaysia</label><br/> 
	<label><input type="radio" name="q42" value="x">India and Bangladesh</label><br/> 
	<label><input type="radio" name="q42" value="b">India and Nepal</label><br/>  
	<label><input type="radio" name="q42" value="c">Turkey and Bangladesh</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>What is the national anthem of Kenya?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Ee Mungu Nguvu Yetu</label><br/> 
	<label><input type="radio" name="q43" value="a">The Bayamo</label><br/> 
	<label><input type="radio" name="q43" value="b">Sayaun Thunga Phool Ka</label><br/>  
	<label><input type="radio" name="q43" value="c">The Star-Spangled Banner</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>What is the world's only non-quadrilateral flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Panama</label><br/> 
	<label><input type="radio" name="q44" value="b">Uzbekistan</label><br/> 
	<label><input type="radio" name="q44" value="c">Monaco</label><br/>  
	<label><input type="radio" name="q44" value="x">Nepal</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>What is the national anthem of Spain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Marcha Real</label><br/> 
	<label><input type="radio" name="q45" value="a">The Bayamo</label><br/> 
	<label><input type="radio" name="q45" value="b">Sayaun Thunga Phool Ka</label><br/>  
	<label><input type="radio" name="q45" value="c">La Marseillaise</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>'Land of the Free' is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Spain</label><br/> 
	<label><input type="radio" name="q46" value="b">Norway</label><br/> 
	<label><input type="radio" name="q46" value="x">Belize</label><br/>  
	<label><input type="radio" name="q46" value="c">Sweden</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>Which country has no national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Denmark</label><br/> 
	<label><input type="radio" name="q47" value="x">Austria</label><br/> 
	<label><input type="radio" name="q47" value="b">Finland</label><br/>  
	<label><input type="radio" name="q47" value="c">Serbia</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>What is the rarest color of a flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Purple</label><br/> 
	<label><input type="radio" name="q48" value="a">Blue</label><br/> 
	<label><input type="radio" name="q48" value="b">Green</label><br/>  
	<label><input type="radio" name="q48" value="c">Red</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>Which country's flag has just a single color?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Dominica</label><br/> 
	<label><input type="radio" name="q49" value="b">Uruguay</label><br/> 
	<label><input type="radio" name="q49" value="x">Libyan Arab Jamahiriya</label><br/>  
	<label><input type="radio" name="q49" value="c">Argentina</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>'Meda Dau Doka' is the national anthem of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Denmark</label><br/> 
	<label><input type="radio" name="q50" value="x">Fiji</label><br/> 
	<label><input type="radio" name="q50" value="b">Poland</label><br/>  
	<label><input type="radio" name="q50" value="c">Russia</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>Which country has the old national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Great Britain</label><br/> 
	<label><input type="radio" name="q51" value="a">Japan</label><br/> 
	<label><input type="radio" name="q51" value="b">China</label><br/>  
	<label><input type="radio" name="q51" value="c">Greece</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>What country has the oldest national flag in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Netherlands</label><br/> 
	<label><input type="radio" name="q52" value="b">Scotland</label><br/> 
	<label><input type="radio" name="q52" value="c">Nepal</label><br/>  
	<label><input type="radio" name="q52" value="x">Denmark</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What is the newest flag in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Malawi</label><br/> 
	<label><input type="radio" name="q53" value="b">South Sudan</label><br/> 
	<label><input type="radio" name="q53" value="x">Mauritania</label><br/>  
	<label><input type="radio" name="q53" value="c">Libya</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>What is the second oldest flag in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Nepal</label><br/> 
	<label><input type="radio" name="q54" value="x">Scotland</label><br/> 
	<label><input type="radio" name="q54" value="b">Netherlands</label><br/>  
	<label><input type="radio" name="q54" value="c">Austria</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>How many stripes does the American flag have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">13</label><br/> 
	<label><input type="radio" name="q55" value="a">15</label><br/> 
	<label><input type="radio" name="q55" value="b">14</label><br/>  
	<label><input type="radio" name="q55" value="c">10</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>What is Iraq's national anthem called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Sayaun Thunga Phool Ka</label><br/> 
	<label><input type="radio" name="q56" value="b">Ishy Bilady</label><br/> 
	<label><input type="radio" name="q56" value="c">La Concord</label><br/>  
	<label><input type="radio" name="q56" value="x">Mawtini</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>How many times has the Stars and Stripes been updated with extra stars in the USA flag since its original design in 1777?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">6</label><br/> 
	<label><input type="radio" name="q57" value="x">27</label><br/> 
	<label><input type="radio" name="q57" value="b">36</label><br/>  
	<label><input type="radio" name="q57" value="c">46</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>What flag has a white star on a blue background?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Somalia</label><br/> 
	<label><input type="radio" name="q58" value="a">Kenya</label><br/> 
	<label><input type="radio" name="q58" value="b">Serbia</label><br/>  
	<label><input type="radio" name="q58" value="c">Jordan</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Which country holds the Guinness World Record for the oldest continuously used national flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Poland</label><br/> 
	<label><input type="radio" name="q59" value="b">Norway</label><br/> 
	<label><input type="radio" name="q59" value="x">Denmark</label><br/>  
	<label><input type="radio" name="q59" value="c">Nepal</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>How many stars does flag of Venezuela have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">9</label><br/> 
	<label><input type="radio" name="q60" value="x">8</label><br/> 
	<label><input type="radio" name="q60" value="b">7</label><br/>  
	<label><input type="radio" name="q60" value="c">6</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>Which country's flag has a red circle in the centre of a white background?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Switzerland</label><br/> 
	<label><input type="radio" name="q61" value="b">Canada</label><br/> 
	<label><input type="radio" name="q61" value="c">Scotland</label><br/>  
	<label><input type="radio" name="q61" value="x">Japan</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>What is unique about Canada's flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">An 11-pointed maple leaf</label><br/> 
	<label><input type="radio" name="q62" value="a">A snowflake</label><br/> 
	<label><input type="radio" name="q62" value="b">An eagle</label><br/>  
	<label><input type="radio" name="q62" value="c">None of the above</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>Which country has the largest flagpole in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Morocco</label><br/> 
	<label><input type="radio" name="q63" value="b">Singapore</label><br/> 
	<label><input type="radio" name="q63" value="c">Dubai</label><br/>  
	<label><input type="radio" name="q63" value="x">Saudi Arabia</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>What is the largest star in the Australian flag known as?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Star of Peace</label><br/> 
	<label><input type="radio" name="q64" value="b">Star of Unity</label><br/> 
	<label><input type="radio" name="q64" value="c">Navy Star</label><br/>  
	<label><input type="radio" name="q64" value="x">Commonwealth Star</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>Which country features an eagle on their flag with red background?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">UAE</label><br/> 
	<label><input type="radio" name="q65" value="x">Albania</label><br/> 
	<label><input type="radio" name="q65" value="b">Saudi Arabia</label><br/>  
	<label><input type="radio" name="q65" value="c">Israel</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>Which country has changed its flag the most number of times?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Vietnam</label><br/> 
	<label><input type="radio" name="q66" value="b">Italy</label><br/> 
	<label><input type="radio" name="q66" value="x">Afghanistan</label><br/>  
	<label><input type="radio" name="q66" value="c">Netherlands</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>Which country has a royal white flag for 15 years?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">France</label><br/> 
	<label><input type="radio" name="q67" value="a">Germany</label><br/> 
	<label><input type="radio" name="q67" value="b">Japan</label><br/>  
	<label><input type="radio" name="q67" value="c">Morocco</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>Who wrote Bangladesh national anthem Amar Sonar Bangla?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Kazi Nazrul Islam</label><br/> 
	<label><input type="radio" name="q68" value="b">Kazi Sabyasachi</label><br/> 
	<label><input type="radio" name="q68" value="x">Rabindranath Tagore</label><br/>  
	<label><input type="radio" name="q68" value="c">Jibanananda Das</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>Who designed the current National Flag of India?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">Sachindra Prasad</label><br/> 
	<label><input type="radio" name="q69" value="b">Sukumar Mitra</label><br/> 
	<label><input type="radio" name="q69" value="x">Pingali Venkayya</label><br/>  
	<label><input type="radio" name="q69" value="c">Sarojini Naidu</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>Which colour remains at the top while hoisting the Indian National Flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Green</label><br/> 
	<label><input type="radio" name="q70" value="x">Saffron</label><br/> 
	<label><input type="radio" name="q70" value="b">White</label><br/>  
	<label><input type="radio" name="q70" value="c">Red</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>Which country is the biggest National Flag be hoisted by Indian diaspora?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Berlin</label><br/> 
	<label><input type="radio" name="q71" value="x">New York</label><br/> 
	<label><input type="radio" name="q71" value="b">London</label><br/>  
	<label><input type="radio" name="q71" value="c">New Delhi</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>Which country officially adopted its national anthem in 1984?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Australia</label><br/> 
	<label><input type="radio" name="q72" value="a">Vietnam</label><br/> 
	<label><input type="radio" name="q72" value="b">Turkey</label><br/>  
	<label><input type="radio" name="q72" value="c">Norway</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>What was the first national anthem of Pakistan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Thy Sacred Land</label><br/> 
	<label><input type="radio" name="q73" value="b">Ishy Bilady</label><br/> 
	<label><input type="radio" name="q73" value="x">Tarana-e-Pakistan</label><br/>  
	<label><input type="radio" name="q73" value="c">None of the above</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>'Aegukga' is national anthem of which country that hosted the 1988 Summer Olympics?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Japan</label><br/> 
	<label><input type="radio" name="q74" value="b">China</label><br/> 
	<label><input type="radio" name="q74" value="c">Thailand</label><br/>  
	<label><input type="radio" name="q74" value="x">South Korea</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>When this country was formed in 1918, the anthem was created by combining one verse from an opera in a specific language and another from a folk song in another?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Czechoslovakia</label><br/> 
	<label><input type="radio" name="q75" value="a">Spain</label><br/> 
	<label><input type="radio" name="q75" value="b">Denmark</label><br/>  
	<label><input type="radio" name="q75" value="c">Mexico</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Which national anthem, adopted in 1997, features five different languages, with the final stanza in English?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Libya</label><br/> 
	<label><input type="radio" name="q76" value="b">UAE</label><br/> 
	<label><input type="radio" name="q76" value="c">Saudi Arabia</label><br/>  
	<label><input type="radio" name="q76" value="x">South Africa</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>What is the national anthem of Thailand?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Surudi Milli</label><br/> 
	<label><input type="radio" name="q77" value="x">Phleng Chat</label><br/> 
	<label><input type="radio" name="q77" value="b">Du gamla,du fria</label><br/>  
	<label><input type="radio" name="q77" value="c">Lied der Deutschen</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>When was the national anthem of India sung for the first time?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">1910</label><br/> 
	<label><input type="radio" name="q78" value="b">1912</label><br/> 
	<label><input type="radio" name="q78" value="c">1916</label><br/>  
	<label><input type="radio" name="q78" value="x">1911</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>How many countries have a star or sun on their flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">26</label><br/> 
	<label><input type="radio" name="q79" value="b">More than 28</label><br/> 
	<label><input type="radio" name="q79" value="x">More than 50</label><br/>  
	<label><input type="radio" name="q79" value="c">30</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>What country flag has a sun in the middle?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Uruguay</label><br/> 
	<label><input type="radio" name="q80" value="b">Namibia</label><br/> 
	<label><input type="radio" name="q80" value="c">Saudi Arabia</label><br/>  
	<label><input type="radio" name="q80" value="x">Argentina</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>What country has 27 stars on its flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Brazil</label><br/> 
	<label><input type="radio" name="q81" value="a">Mexico</label><br/> 
	<label><input type="radio" name="q81" value="b">Chile</label><br/>  
	<label><input type="radio" name="q81" value="c">Sweden</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>Which country has least stars on its flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">China</label><br/> 
	<label><input type="radio" name="q82" value="b">USA</label><br/> 
	<label><input type="radio" name="q82" value="x">Nepal</label><br/>  
	<label><input type="radio" name="q82" value="c">Australia</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>What is the national anthem of Finland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">La Concorde</label><br/> 
	<label><input type="radio" name="q83" value="x">Maamme</label><br/> 
	<label><input type="radio" name="q83" value="b">Lied der Deutschen</label><br/>  
	<label><input type="radio" name="q83" value="c">La Dessalinienne</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>Who wrote the Netherlands national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">John Stafford Smith</label><br/> 
	<label><input type="radio" name="q84" value="x">Adrianus Valerius</label><br/> 
	<label><input type="radio" name="q84" value="b">Kazi Nazrul Islam</label><br/>  
	<label><input type="radio" name="q84" value="c">Byakul Maila</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>Who wrote the Philippines national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Julian Felipe</label><br/> 
	<label><input type="radio" name="q85" value="a">Henry Carey</label><br/> 
	<label><input type="radio" name="q85" value="b">John Stafford Smith</label><br/>  
	<label><input type="radio" name="q85" value="c">None of these</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>Who wrote the United Kingdom national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">John Staffor Smith</label><br/> 
	<label><input type="radio" name="q86" value="b">Rabindranath Tagore</label><br/> 
	<label><input type="radio" name="q86" value="x">Henry Carey</label><br/>  
	<label><input type="radio" name="q86" value="c">Jibanananda Das</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>Which country does not have its own national anthem and uses the national anthem of its neighbours, Greece?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Syria</label><br/> 
	<label><input type="radio" name="q87" value="c">Bulgaria</label><br/> 
	<label><input type="radio" name="q87" value="x">Cyprus</label><br/>  
	<label><input type="radio" name="q87" value="b">Albania</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>'A Garland of Hundred Flowers' is the national anthem of ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Pakistan</label><br/> 
	<label><input type="radio" name="q88" value="b">Myanmar</label><br/> 
	<label><input type="radio" name="q88" value="c">Afganisthan</label><br/>  
	<label><input type="radio" name="q88" value="x">Nepal</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>When was the Mexican nationa anthem adopted?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">1950</label><br/> 
	<label><input type="radio" name="q89" value="b">1947</label><br/> 
	<label><input type="radio" name="q89" value="c">1945</label><br/>  
	<label><input type="radio" name="q89" value="x">1943</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>How many red stars are there in the New Zealand flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">6</label><br/> 
	<label><input type="radio" name="q90" value="b">5</label><br/> 
	<label><input type="radio" name="q90" value="x">4</label><br/>  
	<label><input type="radio" name="q90" value="c">3</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>Which country's flag has green, yellow and blue?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">France</label><br/> 
	<label><input type="radio" name="q91" value="x">Gabon</label><br/> 
	<label><input type="radio" name="q91" value="b">Spain</label><br/>  
	<label><input type="radio" name="q91" value="c">Finland</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>What does the blue on the Ukraine flag mean?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Peace</label><br/> 
	<label><input type="radio" name="q92" value="a">Trust</label><br/> 
	<label><input type="radio" name="q92" value="b">Loyalty</label><br/>  
	<label><input type="radio" name="q92" value="c">None of the above</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>What is the national anthem of Georgia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Tavisupleba</label><br/> 
	<label><input type="radio" name="q93" value="a">Ee Mungu nguvu yetu</label><br/> 
	<label><input type="radio" name="q93" value="b">Het Wilhelmus</label><br/>  
	<label><input type="radio" name="q93" value="c">La Marseillaise</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>What animal is featured on Bhutan flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q94" value="x">Dragon</label><br/> 
	<label><input type="radio" name="q94" value="b">Lion</label><br/>  
	<label><input type="radio" name="q94" value="c">Snake</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>Which color occupies most of the Thai flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Red</label><br/> 
	<label><input type="radio" name="q95" value="b">White</label><br/> 
	<label><input type="radio" name="q95" value="x">Blue</label><br/>  
	<label><input type="radio" name="q95" value="c">Yellow</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>When was first Georgia's flag hoisted?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">1921</label><br/> 
	<label><input type="radio" name="q96" value="b">1920</label><br/> 
	<label><input type="radio" name="q96" value="x">1917</label><br/>  
	<label><input type="radio" name="q96" value="c">1918</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>What is present in Taiwan's Flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Moon</label><br/> 
	<label><input type="radio" name="q97" value="x">Sun</label><br/> 
	<label><input type="radio" name="q97" value="b">Star</label><br/>  
	<label><input type="radio" name="q97" value="c">Bird</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>Who wrote national anthem of Morocco?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Aref AI Sheikh</label><br/> 
	<label><input type="radio" name="q98" value="b">Kazi Nazrul Islam</label><br/> 
	<label><input type="radio" name="q98" value="x">Ali Squalli Houssaini</label><br/>  
	<label><input type="radio" name="q98" value="c">Kazi Sabyasachi</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Who wrote UAE national anthem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Wadih Sabra</label><br/> 
	<label><input type="radio" name="q99" value="b">Kazi Sabyasachi</label><br/> 
	<label><input type="radio" name="q99" value="c">Mehmet Akif Ersoy</label><br/>  
	<label><input type="radio" name="q99" value="x">Aref AI Sheikh</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>What is the main color of Turkey flag?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Blue</label><br/> 
	<label><input type="radio" name="q100" value="b">White</label><br/> 
	<label><input type="radio" name="q100" value="c">Yellow</label><br/>  
	<label><input type="radio" name="q100" value="x">Red</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>