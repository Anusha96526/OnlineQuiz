<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Test System</title> 
<style>
   h1{
   color:brown;
   text-align: center;
   }
   .body{
   font-text: Tahoma;
   font-Size: 2px;
   }
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
<h1><b>Online Test</b></h1>  
 <div id="quiz">
	<fieldset id="q1"> 
	<legend><b>Question 1</b></legend> 
	<legend><b>Which vegetable grow under the ground?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Cabbage, lettuce, broccoli, and spanish</label><br/> 
	<label><input type="radio" name="q1" value="b">Zucchini, tomatoes, squash, and pumpkins</label><br/> 
	<label><input type="radio" name="q1" value="x">Potatoes, beets, onions, and carrots</label><br/> 
	<label><input type="radio" name="q1" value="c">Green beans, peas, corn, and okra</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>Which stores more data than a DVD?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">CD Rom</label><br/> 
	<label><input type="radio" name="q2" value="x">Blu-Ray Disk</label><br/> 
	<label><input type="radio" name="q2" value="b">Floppy</label><br/>  
	<label><input type="radio" name="q2" value="c">Red Ray Disk</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>How many bones does an adult human have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">206</label><br/> 
	<label><input type="radio" name="q3" value="a">500</label><br/> 
	<label><input type="radio" name="q3" value="b">110</label><br/>  
	<label><input type="radio" name="q3" value="c">55</label>
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
	<legend><b>Who invented Bakelite?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Leo Baekeland</label><br/> 
	<label><input type="radio" name="q5" value="a">Charles Goodyear</label><br/> 
	<label><input type="radio" name="q5" value="b">Roy Plunkett</label><br/>  
	<label><input type="radio" name="q5" value="c">Henry Ford</label>
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
	<legend><b>Tudor Rose is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Norway</label><br/> 
	<label><input type="radio" name="q7" value="b">Ukraine</label><br/> 
	<label><input type="radio" name="q7" value="x">England</label><br/>  
	<label><input type="radio" name="q7" value="c">Luxembourg</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>Sea Levels are rising fast all around the globe. What is the highest level of rise over the past century?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">2 inches</label><br/> 
	<label><input type="radio" name="q8" value="b">5.6 inches</label><br/> 
	<label><input type="radio" name="q8" value="c">1.7 inches</label><br/>  
	<label><input type="radio" name="q8" value="x">3.6 inches</label>
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
	<legend><b>Which bird's eye are larger than its brain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">Eagle</label><br/> 
	<label><input type="radio" name="q10" value="x">Ostrich</label><br/> 
	<label><input type="radio" name="q10" value="b">Owl</label><br/>  
	<label><input type="radio" name="q10" value="c">Parrot</label>
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
	<legend><b>About how long does it take a Styrofoam cup to decompose?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">500 years</label><br/> 
	<label><input type="radio" name="q12" value="a">2 months</label><br/> 
	<label><input type="radio" name="q12" value="b">10 years</label><br/>  
	<label><input type="radio" name="q12" value="c">150 years</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>What is the national flower of Australia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Sugar maple</label><br/> 
	<label><input type="radio" name="q13" value="b">Red maple</label><br/> 
	<label><input type="radio" name="q13" value="c">Silver maple</label><br/>  
	<label><input type="radio" name="q13" value="x">Golden Wattle</label>
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
	<legend><b>In which decade was the SPICE simulator introduced?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">1950</label><br/> 
	<label><input type="radio" name="q15" value="b">1960</label><br/> 
	<label><input type="radio" name="q15" value="x">1972</label><br/>  
	<label><input type="radio" name="q15" value="c">1980</label>
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
	<legend><b>Birds replace their feathers periodically in a process called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Moulting</label><br/> 
	<label><input type="radio" name="q17" value="a">Shedding</label><br/> 
	<label><input type="radio" name="q17" value="b">Migration</label><br/>  
	<label><input type="radio" name="q17" value="c">Moulting</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>Which gland produces tears?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Lacrimal</label><br/> 
	<label><input type="radio" name="q18" value="a">Latissimal</label><br/> 
	<label><input type="radio" name="q18" value="b">Longitudinal</label><br/>  
	<label><input type="radio" name="q18" value="c">Laryngeal</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>Before use of DBMS information was stored using ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Cloud Storage</label><br/> 
	<label><input type="radio" name="q19" value="b">Data System</label><br/> 
	<label><input type="radio" name="q19" value="c">Cloud Computing</label><br/>  
	<label><input type="radio" name="q19" value="x">File Management System</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>What did Harry Wheatcroft breed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="x">Roses</label><br/> 
	<label><input type="radio" name="q20" value="a">Jasmine</label><br/> 
	<label><input type="radio" name="q20" value="b">Lilly</label><br/>  
	<label><input type="radio" name="q20" value="c">Lotus</label>
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
	<legend><b>What grain is used to make semolina?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="x">Wheat</label><br/> 
	<label><input type="radio" name="q22" value="a">Rice</label><br/> 
	<label><input type="radio" name="q22" value="b">Atta</label><br/>  
	<label><input type="radio" name="q22" value="c">Ragi</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>Who is the father of Computer science?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Charles Babbage</label><br/> 
	<label><input type="radio" name="q23" value="x">Alan Turing</label><br/> 
	<label><input type="radio" name="q23" value="b">Simur Cray</label><br/>  
	<label><input type="radio" name="q23" value="c">Augusta Adaming</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What is the weakest muscle in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Stapedius</label><br/> 
	<label><input type="radio" name="q24" value="a">Obliques</label><br/> 
	<label><input type="radio" name="q24" value="b">Gluteus Maximus</label><br/>  
	<label><input type="radio" name="q24" value="c">Lumbar</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>Which is the Fastest flying bird?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Peregrine Falcon</label><br/> 
	<label><input type="radio" name="q25" value="a">Eagle</label><br/> 
	<label><input type="radio" name="q25" value="b">Seagull</label><br/>  
	<label><input type="radio" name="q25" value="c">Kite</label>
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
	<legend><b>Who made CORN FLAKES first?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Nabisco</label><br/> 
	<label><input type="radio" name="q27" value="b">Quaker</label><br/> 
	<label><input type="radio" name="q27" value="x">John Harvey Kellogg</label><br/>  
	<label><input type="radio" name="q27" value="c">Archers</label>
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
	<legend><b>Water Lily is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Pakistan</label><br/> 
	<label><input type="radio" name="q29" value="x">Bangladesh</label><br/> 
	<label><input type="radio" name="q29" value="b">Nepal</label><br/>  
	<label><input type="radio" name="q29" value="c">India</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>The main source of water pollution is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Atmospheric Pollutants</label><br/> 
	<label><input type="radio" name="q30" value="x">Sewage Water</label><br/> 
	<label><input type="radio" name="q30" value="b">Well-Water</label><br/>  
	<label><input type="radio" name="q30" value="c">Rain water</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>Which disc flower that has hundreds of tiny flowers?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Anemone</label><br/> 
	<label><input type="radio" name="q31" value="x">Pseudanthia</label><br/> 
	<label><input type="radio" name="q31" value="b">Gardenia</label><br/>  
	<label><input type="radio" name="q31" value="c">Petunia</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>What type of computers are client computers(most of the time) in a client-server system?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Mainframe</label><br/> 
	<label><input type="radio" name="q32" value="b">Mini-computer</label><br/> 
	<label><input type="radio" name="q32" value="c">PDA</label><br/>  
	<label><input type="radio" name="q32" value="x">Microcomputer</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>What is the formation of new blood vessels called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Angiogenesis</label><br/> 
	<label><input type="radio" name="q33" value="a">Nervous system</label><br/> 
	<label><input type="radio" name="q33" value="b">Cardiovascular system</label><br/>  
	<label><input type="radio" name="q33" value="c">Digestive system</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Which animal group has the largest number of species?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Whale</label><br/> 
	<label><input type="radio" name="q34" value="b">Wolve</label><br/> 
	<label><input type="radio" name="q34" value="x">Insects</label><br/>  
	<label><input type="radio" name="q34" value="c">Cat</label>
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
	<legend><b>Which now-ubiquitous device was invented by Zenith engineer Eugene Polley in 1955?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Flashmatic</label><br/> 
	<label><input type="radio" name="q36" value="a">Microwave Oven</label><br/> 
	<label><input type="radio" name="q36" value="b">Vcr</label><br/>  
	<label><input type="radio" name="q36" value="c">Calculator</label>
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
	<legend><b>What is the national flower of Chile?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Wishbone Flower</label><br/> 
	<label><input type="radio" name="q38" value="x">Lapageria</label><br/> 
	<label><input type="radio" name="q38" value="b">Wandflower</label><br/>  
	<label><input type="radio" name="q38" value="c">Cardinal Flower</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>Spraying of DDT on crops causes pollution of ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Air, Soil and Water</label><br/> 
	<label><input type="radio" name="q39" value="a">Air and Soil</label><br/> 
	<label><input type="radio" name="q39" value="b">Crops and Air</label><br/>  
	<label><input type="radio" name="q39" value="c">Air and Water</label>
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
	<legend><b>Earth summit was held in _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Stockholm in 1972</label><br/> 
	<label><input type="radio" name="q42" value="x">Rio de jeneiro in 1992</label><br/> 
	<label><input type="radio" name="q42" value="b">Paris in 1992</label><br/>  
	<label><input type="radio" name="q42" value="c">New York in 1972</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>What is the national flower of Czech Republic?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Rose</label><br/> 
	<label><input type="radio" name="q43" value="a">Jasmine</label><br/> 
	<label><input type="radio" name="q43" value="b">Kalmia</label><br/>  
	<label><input type="radio" name="q43" value="c">Gardenia</label>
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
	<legend><b>Ralph Samuelson was only 18 when he invented this sporting item in 1922. What was that?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Water skis</label><br/> 
	<label><input type="radio" name="q45" value="a">Golf Tee</label><br/> 
	<label><input type="radio" name="q45" value="b">Motorboat</label><br/>  
	<label><input type="radio" name="q45" value="c">Hang Glider</label>
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
	<legend><b>How many toes do ostriches have on each foot?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">4</label><br/> 
	<label><input type="radio" name="q47" value="x">2</label><br/> 
	<label><input type="radio" name="q47" value="b">5</label><br/>  
	<label><input type="radio" name="q47" value="c">3</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>What is the average weight of brain of human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">1400 gms</label><br/> 
	<label><input type="radio" name="q48" value="a">1200 gms</label><br/> 
	<label><input type="radio" name="q48" value="b">1600 gms</label><br/>  
	<label><input type="radio" name="q48" value="c">1800 gms</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>ASCII stands for _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">American Stable Code for International Interchange</label><br/> 
	<label><input type="radio" name="q49" value="b">American Standard Case for Institutional Interchange</label><br/> 
	<label><input type="radio" name="q49" value="x">American Standard Code for Information Interchange</label><br/>  
	<label><input type="radio" name="q49" value="c">American Standard Code for Interchange Information</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>What part of the plant has stomata?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="x">Plant leaves</label><br/> 
	<label><input type="radio" name="q50" value="a">Stem</label><br/> 
	<label><input type="radio" name="q50" value="b">Flower</label><br/>  
	<label><input type="radio" name="q50" value="c">Roots</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>What colour light is the most important for plant growth and flowering?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="c">Green and blue</label><br/> 
	<label><input type="radio" name="q51" value="b">Red and Green</label><br/> 
	<label><input type="radio" name="q51" value="a">Orange and red</label><br/>  
	<label><input type="radio" name="q51" value="x">Blue and Red</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>Second Generation computers were developed during _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">1949 to 1955</label><br/> 
	<label><input type="radio" name="q52" value="b">1965 to 1970</label><br/> 
	<label><input type="radio" name="q52" value="c">1970 to 1990</label><br/>  
	<label><input type="radio" name="q52" value="x">1956 to 1965</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>How are the chromosomes made up of with DNA?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Gene</label><br/> 
	<label><input type="radio" name="q53" value="b">Lipids</label><br/> 
	<label><input type="radio" name="q53" value="x">Proteins</label><br/>  
	<label><input type="radio" name="q53" value="c">Sugars</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>What do butterflies taste with?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Mouth</label><br/> 
	<label><input type="radio" name="q54" value="x">Feet</label><br/> 
	<label><input type="radio" name="q54" value="b">Antennae</label><br/>  
	<label><input type="radio" name="q54" value="c">Wings</label>
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
	<legend><b>When was the Raggedy Ann doll patented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">1919</label><br/> 
	<label><input type="radio" name="q56" value="b">1920</label><br/> 
	<label><input type="radio" name="q56" value="c">1911</label><br/>  
	<label><input type="radio" name="q56" value="x">1915</label>
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
	<legend><b>Which is the national flower of Iran?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Red Rose</label><br/> 
	<label><input type="radio" name="q58" value="a">Rose of Sharon</label><br/> 
	<label><input type="radio" name="q58" value="b">Rock Rose</label><br/>  
	<label><input type="radio" name="q58" value="c">Yellow Rose</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Which is the result of damage to relative biological effectiveness?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Pollution</label><br/> 
	<label><input type="radio" name="q59" value="b">High temperature</label><br/> 
	<label><input type="radio" name="q59" value="x">Low temperature</label><br/>  
	<label><input type="radio" name="q59" value="c">Radiation</label>
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
	<legend><b>What part of saffron plant is used to obtain the spice saffron?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Leaves</label><br/> 
	<label><input type="radio" name="q61" value="b">Petals</label><br/> 
	<label><input type="radio" name="q61" value="c">Fruits</label><br/>  
	<label><input type="radio" name="q61" value="x">Stigmas</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>CPU is an abbreviation for __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Central processing unit</label><br/> 
	<label><input type="radio" name="q62" value="a">Computer processing unit</label><br/> 
	<label><input type="radio" name="q62" value="b">Control processing unit</label><br/>  
	<label><input type="radio" name="q62" value="c">Command processing unit</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>Upright posture of human body is maintained by division of skeleton known as _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Transcript Skeleton</label><br/> 
	<label><input type="radio" name="q63" value="b">Appendicular Skeleton</label><br/> 
	<label><input type="radio" name="q63" value="c">Perpendicular Skeleton</label><br/>  
	<label><input type="radio" name="q63" value="x">Axial Skeleton</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>The age of a lion can be determined from its _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Tail</label><br/> 
	<label><input type="radio" name="q64" value="b">Nails</label><br/> 
	<label><input type="radio" name="q64" value="c">Hair</label><br/>  
	<label><input type="radio" name="q64" value="x">Nose</label>
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
	<legend><b>What is the name of the CalTech seismologist who invented the scale used to measure the magnitude of earthquakes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Hiram Walker</label><br/> 
	<label><input type="radio" name="q66" value="b">Giuseppe Mercalli</label><br/> 
	<label><input type="radio" name="q66" value="x">Charles Richter</label><br/>  
	<label><input type="radio" name="q66" value="c">Joshua Rumble</label>
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
	<legend><b>What is the national flower of Lithuania?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Rondeletia</label><br/> 
	<label><input type="radio" name="q68" value="b">Nemophila</label><br/> 
	<label><input type="radio" name="q68" value="x">Rue</label><br/>  
	<label><input type="radio" name="q68" value="c">Nolana</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>What percentage of earth's water is fresh water?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">6.00%</label><br/> 
	<label><input type="radio" name="q69" value="b">1.50%</label><br/> 
	<label><input type="radio" name="q69" value="x">3.00%</label><br/>  
	<label><input type="radio" name="q69" value="c">2.00%</label>
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
	<legend><b>_________ is the best environmentatl clean alternative fuel.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">CNG</label><br/> 
	<label><input type="radio" name="q72" value="a">Bioethanol</label><br/> 
	<label><input type="radio" name="q72" value="b">Petrol</label><br/>  
	<label><input type="radio" name="q72" value="c">Coal</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>Passionflower is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Luxembourg</label><br/> 
	<label><input type="radio" name="q73" value="b">Slovakia</label><br/> 
	<label><input type="radio" name="q73" value="x">Paraguay</label><br/>  
	<label><input type="radio" name="q73" value="c">Yugoslavia</label>
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
	<legend><b>What was J.B.Dunlop's invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Pneumatic Rubber Tire</label><br/> 
	<label><input type="radio" name="q75" value="a">Automobile Wheel Rim</label><br/> 
	<label><input type="radio" name="q75" value="b">Rubber Boot</label><br/>  
	<label><input type="radio" name="q75" value="c">Model Airplanes</label>
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
	<legend><b>Which is the largest carnivore on land?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q77" value="x">Polar Bear</label><br/> 
	<label><input type="radio" name="q77" value="b">Leopard</label><br/>  
	<label><input type="radio" name="q77" value="c">Lion</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>Which type of blood cells help our bodies to fight infection?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Red blood cells</label><br/> 
	<label><input type="radio" name="q78" value="b">Both red and white blood cells</label><br/> 
	<label><input type="radio" name="q78" value="x">White blood cells</label><br/>  
	<label><input type="radio" name="q78" value="c">None of these</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>The device used to carry digital data on analgue lines is called as _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Multiplexer</label><br/> 
	<label><input type="radio" name="q79" value="b">Modulator</label><br/> 
	<label><input type="radio" name="q79" value="x">Modem</label><br/>  
	<label><input type="radio" name="q79" value="c">Demodulator</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>What is used to test the presence of starch?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Potassium hydroxide</label><br/> 
	<label><input type="radio" name="q80" value="x">Iodine solution</label><br/> 
	<label><input type="radio" name="q80" value="b">Copper sulphate solution</label><br/>  
	<label><input type="radio" name="q80" value="c">Alcohol</label>
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
	<legend><b>The tertiary winds on the north of the Alps(Europe) are called ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">The chinook</label><br/> 
	<label><input type="radio" name="q82" value="b">The sirocco</label><br/> 
	<label><input type="radio" name="q82" value="x">The foehn</label><br/>  
	<label><input type="radio" name="q82" value="c">The loo</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>What is the national flower of Sicily?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Orchid</label><br/> 
	<label><input type="radio" name="q83" value="x">Plumeria</label><br/> 
	<label><input type="radio" name="q83" value="b">Xeranthemum</label><br/>  
	<label><input type="radio" name="q83" value="c">Yarrow</label>
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
	<legend><b>Who invented Vulcanised rubber?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Charles Goodyear</label><br/> 
	<label><input type="radio" name="q85" value="a">William Stockes</label><br/> 
	<label><input type="radio" name="q85" value="b">J.E.Lundstrom</label><br/>  
	<label><input type="radio" name="q85" value="c">Sir Joseph Swann</label>
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
	<legend><b>What are leopards afraid of?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Bull</label><br/> 
	<label><input type="radio" name="q87" value="c">Bugs</label><br/> 
	<label><input type="radio" name="q87" value="x">Human</label><br/>  
	<label><input type="radio" name="q87" value="b">Elephants</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>Which bone in our body is the size of a grain of rice?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Tailbone</label><br/> 
	<label><input type="radio" name="q88" value="b">Collar bone</label><br/> 
	<label><input type="radio" name="q88" value="c">Jaw bone</label><br/>  
	<label><input type="radio" name="q88" value="x">Stapes bone</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>How do you move a copy of file from one computer to another over a communication channel is called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">File copying</label><br/> 
	<label><input type="radio" name="q89" value="b">File encryption</label><br/> 
	<label><input type="radio" name="q89" value="c">File modification</label><br/>  
	<label><input type="radio" name="q89" value="x">File transfer</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>Microorganisms act upon the dead plants to produce a thick brown or black substance called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Sand</label><br/> 
	<label><input type="radio" name="q90" value="x">Humus</label><br/> 
	<label><input type="radio" name="q90" value="b">Mushrooms</label><br/>  
	<label><input type="radio" name="q90" value="c">Wood</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>What is the scientific name of daisy plant?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Tagetes erecta</label><br/> 
	<label><input type="radio" name="q91" value="c">Iris cristata</label><br/> 
	<label><input type="radio" name="q91" value="b">Cuphea ignea</label><br/>  
	<label><input type="radio" name="q91" value="x">Bellis perennis</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Name of the first general purpose electronic computer ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">ENIAC</label><br/> 
	<label><input type="radio" name="q92" value="a">ADVAC</label><br/> 
	<label><input type="radio" name="q92" value="b">UNIVAC</label><br/>  
	<label><input type="radio" name="q92" value="c">ADSAC</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>Calcium crystals are a normal part of what body region?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Ears</label><br/> 
	<label><input type="radio" name="q93" value="a">Heart</label><br/> 
	<label><input type="radio" name="q93" value="b">Skin</label><br/>  
	<label><input type="radio" name="q93" value="c">Stomach</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>Gibbons belong to which family?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Pongidae</label><br/> 
	<label><input type="radio" name="q94" value="x">Hylobatidae</label><br/> 
	<label><input type="radio" name="q94" value="b">Canidae</label><br/>  
	<label><input type="radio" name="q94" value="c">Hominidae</label>
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
	<legend><b>Who was discovered Radioactivity?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Karl Landsteiner</label><br/> 
	<label><input type="radio" name="q96" value="b">Konrad Lorenz</label><br/> 
	<label><input type="radio" name="q96" value="x">Henri Bacquerel</label><br/>  
	<label><input type="radio" name="q96" value="c">Edward O.Wilson</label>
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
	<legend><b>What is national bird of Guatemala?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Red-faced Cormorant</label><br/> 
	<label><input type="radio" name="q98" value="b">Narrow-billed Tody</label><br/> 
	<label><input type="radio" name="q98" value="x">Resplendent quetzal</label><br/>  
	<label><input type="radio" name="q98" value="c">Trumpeter Hornbill</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Which gas is mainly responsible for greenhouse effect?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Sulfur dioxide</label><br/> 
	<label><input type="radio" name="q99" value="b">Oxygen</label><br/> 
	<label><input type="radio" name="q99" value="c">Water vapours</label><br/>  
	<label><input type="radio" name="q99" value="x">Carbon dioxide</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>What is the national tree of Germany?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Pine</label><br/> 
	<label><input type="radio" name="q100" value="b">Beech</label><br/> 
	<label><input type="radio" name="q100" value="c">Spruce</label><br/>  
	<label><input type="radio" name="q100" value="x">Oak</label>
	</fieldset>
</div><br>
	<input type="button" id="btn" value="Check Answers" name="checkanswers"/>
	<input type="button" id="btnclr" value="Clear" name="clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	<form action="testCode.jsp" method="post">
	Student Name: <input type = "text" name = "name"><p></p>
	Enter your Score: <input type="number" name="score"><p></p>
	<input type="submit" value="submit">
	</form>
</body>
 </html>
 