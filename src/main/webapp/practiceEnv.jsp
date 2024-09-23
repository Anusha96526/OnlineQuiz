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
	<legend><b>When was the first time world environment day celebrated?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">1972</label><br/> 
	<label><input type="radio" name="q1" value="b">1976</label><br/> 
	<label><input type="radio" name="q1" value="c">1977</label><br/>  
	<label><input type="radio" name="q1" value="x">1974</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>In which season World Environment Day is observed in Southern Hemisphere</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Summer</label><br/> 
	<label><input type="radio" name="q2" value="x">Rainy</label><br/> 
	<label><input type="radio" name="q2" value="b">Winter</label><br/>  
	<label><input type="radio" name="q2" value="c">None of these</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>Which country is the world leader in the number of solar power system installed per capital?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">China</label><br/> 
	<label><input type="radio" name="q3" value="a">USA</label><br/> 
	<label><input type="radio" name="q3" value="b">Norway</label><br/>  
	<label><input type="radio" name="q3" value="c">Canada</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>The World's first commercial tidal power station was installed in 2007. Where was it?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">France</label><br/> 
	<label><input type="radio" name="q4" value="b">Japan</label><br/> 
	<label><input type="radio" name="q4" value="x">Ireland</label><br/>  
	<label><input type="radio" name="q4" value="c">Australia</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>Which is the largest showcase of environmental technology in the united states?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Greasestock</label><br/> 
	<label><input type="radio" name="q5" value="a">Enviro Tech</label><br/> 
	<label><input type="radio" name="q5" value="b">The Sustainable Show</label><br/>  
	<label><input type="radio" name="q5" value="c">The Greater NYK Show</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>The school for Renewable energy science is a private, non-profit, international graduate school. Where it is located?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Osaka in Japan</label><br/> 
	<label><input type="radio" name="q6" value="x">Akureyri in Northern Iceland</label><br/> 
	<label><input type="radio" name="q6" value="b">Qubec in Canada</label><br/>  
	<label><input type="radio" name="q6" value="c">Ontario in US</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Who proposed the Green House Effect in 1824?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Svante Arrhenius</label><br/> 
	<label><input type="radio" name="q7" value="b">Henrik Svensmark</label><br/> 
	<label><input type="radio" name="q7" value="x">Joseph Fourier</label><br/>  
	<label><input type="radio" name="q7" value="c">Hendry</label>
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
	<legend><b>In which country was Greenpeace Founded?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Norway</label><br/> 
	<label><input type="radio" name="q9" value="b">USA</label><br/> 
	<label><input type="radio" name="q9" value="x">Canada</label><br/>  
	<label><input type="radio" name="q9" value="c">Finland</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>The Rio Treaty signed at 1992 Earth summit is officially known as______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">UN Convention to Combat Desertification(CCD)</label><br/> 
	<label><input type="radio" name="q10" value="x">United Nations Conference on Environment and Development(UNCED)</label><br/> 
	<label><input type="radio" name="q10" value="b">UN Framework Convention on Climate Change(FCCC)</label><br/>  
	<label><input type="radio" name="q10" value="c">United Nations Convention on the Law of the sea</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>In which country there is a hole in the ozone layer found?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Antarctica</label><br/> 
	<label><input type="radio" name="q11" value="a">North America</label><br/> 
	<label><input type="radio" name="q11" value="b">Europe</label><br/>  
	<label><input type="radio" name="q11" value="c">Australia</label>
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
	<legend><b>Which environmental pressure group was founded in the UK in 1971?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">People of the Earth</label><br/> 
	<label><input type="radio" name="q13" value="b">Friends of the ozean</label><br/> 
	<label><input type="radio" name="q13" value="c">Friends of the global</label><br/>  
	<label><input type="radio" name="q13" value="x">Greenpeace</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>Which city is most affected by air pollution?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Tokyo, Japan</label><br/> 
	<label><input type="radio" name="q14" value="x">Hotan, China</label><br/> 
	<label><input type="radio" name="q14" value="b">Tehran, Iran</label><br/>  
	<label><input type="radio" name="q14" value="c">Moscow, Russia</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>What is caused by the release of sulfur dioxide into the atmosphere?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Air pollution</label><br/> 
	<label><input type="radio" name="q15" value="b">Hailstrom</label><br/> 
	<label><input type="radio" name="q15" value="x">Acid rain</label><br/>  
	<label><input type="radio" name="q15" value="c">Rainfall</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>What is the most common type of trash thrown away by Americans?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Plastics Bags</label><br/> 
	<label><input type="radio" name="q16" value="b">Glass</label><br/> 
	<label><input type="radio" name="q16" value="x">Paper products and cardboard</label><br/>  
	<label><input type="radio" name="q16" value="c">Metals</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>Which country has the highest per capita CO2 emissions?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Qatar</label><br/> 
	<label><input type="radio" name="q17" value="a">USA</label><br/> 
	<label><input type="radio" name="q17" value="b">Saudi Arabia</label><br/>  
	<label><input type="radio" name="q17" value="c">China</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>Which is called the farmers friend?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Earthworm</label><br/> 
	<label><input type="radio" name="q18" value="a">Angelworm</label><br/> 
	<label><input type="radio" name="q18" value="b">Wormcast</label><br/>  
	<label><input type="radio" name="q18" value="c">None of these</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>The word 'ecology'(Okologie) was coined in 1866 by _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Arthur Tansley</label><br/> 
	<label><input type="radio" name="q19" value="b">Charles Darwin</label><br/> 
	<label><input type="radio" name="q19" value="c">Robert Whittaker</label><br/>  
	<label><input type="radio" name="q19" value="x">Ernst Haecked</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>Which country consumes the most energy in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Canada</label><br/> 
	<label><input type="radio" name="q20" value="x">China</label><br/> 
	<label><input type="radio" name="q20" value="b">Russia</label><br/>  
	<label><input type="radio" name="q20" value="c">America</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>What country generates over 85% of their heat and hot water from geothermal resources?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q21" value="b">Ireland</label><br/> 
	<label><input type="radio" name="q21" value="c">Finland</label><br/>  
	<label><input type="radio" name="q21" value="x">Iceland</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>According to the World Health Organization, which is the most polluted city in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Mexico City, Mexico</label><br/> 
	<label><input type="radio" name="q22" value="b">Shanghai, China</label><br/> 
	<label><input type="radio" name="q22" value="x">New Delhi,India</label><br/>  
	<label><input type="radio" name="q22" value="c">Los Angeles, California</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>Which is the driest place on Earth?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Kalahari Desert, Botswana</label><br/> 
	<label><input type="radio" name="q23" value="x">Atacama Desert, Chile</label><br/> 
	<label><input type="radio" name="q23" value="b">Tanami Desert, Australia</label><br/>  
	<label><input type="radio" name="q23" value="c">Nubian Desert, Sudan</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What is the hottest place on earth?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Death Valley, USA</label><br/> 
	<label><input type="radio" name="q24" value="a">Atbara, Sudan</label><br/> 
	<label><input type="radio" name="q24" value="b">Bechar, Algeria</label><br/>  
	<label><input type="radio" name="q24" value="c">Aswan, Egypt</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>What is full form NEERI</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">National Environmental Engineering Research Institute</label><br/> 
	<label><input type="radio" name="q25" value="a">National Engineering Environmental Research Institute</label><br/> 
	<label><input type="radio" name="q25" value="b">National Environmenatal Economic Research Institute</label><br/>  
	<label><input type="radio" name="q25" value="c">National Economic Environmental Research Institute</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>What is the top driver of deforestation in the world's tropical forests?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Gathering of firewood</label><br/> 
	<label><input type="radio" name="q26" value="b">Commercial logging</label><br/> 
	<label><input type="radio" name="q26" value="x">Beef production</label><br/>  
	<label><input type="radio" name="q26" value="c">Building of roads and cities</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>Which is the environmental wing of UNO?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">United Nations Engineering Programme</label><br/> 
	<label><input type="radio" name="q27" value="b">United Nations Envrioment Organisations</label><br/> 
	<label><input type="radio" name="q27" value="x">United Nations Environment Programme</label><br/>  
	<label><input type="radio" name="q27" value="c">United Nations Economic Programme</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What kind of satellite makes the global studies of the environment?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Ecological Satellites</label><br/> 
	<label><input type="radio" name="q28" value="x">Geostationary Satellites</label><br/> 
	<label><input type="radio" name="q28" value="b">Meteorological Satellites</label><br/>  
	<label><input type="radio" name="q28" value="c">Global Positioning System</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>The Environment Protection Act enacted on _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">1991</label><br/> 
	<label><input type="radio" name="q29" value="x">1986</label><br/> 
	<label><input type="radio" name="q29" value="b">1978</label><br/>  
	<label><input type="radio" name="q29" value="c">1980</label>
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
	<legend><b>The First earth day is held _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">1978</label><br/> 
	<label><input type="radio" name="q31" value="b">1976</label><br/> 
	<label><input type="radio" name="q31" value="x">1970</label><br/>  
	<label><input type="radio" name="q31" value="c">1874</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>First International Conference on environment held on ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">1987</label><br/> 
	<label><input type="radio" name="q32" value="b">1970</label><br/> 
	<label><input type="radio" name="q32" value="c">1956</label><br/>  
	<label><input type="radio" name="q32" value="x">1972</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>Deforestation generally decreases on _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Rainfall</label><br/> 
	<label><input type="radio" name="q33" value="a">Drought</label><br/> 
	<label><input type="radio" name="q33" value="b">Global warming</label><br/>  
	<label><input type="radio" name="q33" value="c">Soil erosion</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>The largest unit of living organisms on earth is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Ecosystem</label><br/> 
	<label><input type="radio" name="q34" value="b">Biome</label><br/> 
	<label><input type="radio" name="q34" value="x">Biosphere</label><br/>  
	<label><input type="radio" name="q34" value="c">Population</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>World Wide Fund for Nature was founded in _____________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">1965</label><br/> 
	<label><input type="radio" name="q35" value="b">1969</label><br/> 
	<label><input type="radio" name="q35" value="c">1992</label><br/>  
	<label><input type="radio" name="q35" value="x">1961</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>What is theme of World Environment Day 2021 ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Ecosystem Restoration</label><br/> 
	<label><input type="radio" name="q36" value="a">Connect with the World Wide Web of Life</label><br/> 
	<label><input type="radio" name="q36" value="b">Give Earth a Chance</label><br/>  
	<label><input type="radio" name="q36" value="c">The Environment Millennium - Time to Act</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>Cutting of trees in a forest is called ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Aforestation</label><br/> 
	<label><input type="radio" name="q37" value="c">Reforestation</label><br/> 
	<label><input type="radio" name="q37" value="x">Deforestation</label><br/>  
	<label><input type="radio" name="q37" value="b">All of the above</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>Ozone layer exists in which layer ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Ionosphere</label><br/> 
	<label><input type="radio" name="q38" value="x">Stratosphere</label><br/> 
	<label><input type="radio" name="q38" value="b">Troposphere</label><br/>  
	<label><input type="radio" name="q38" value="c">Mesosphere</label>
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
	<legend><b>The Concentration of which gas is highest in our environment?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Oxygen</label><br/> 
	<label><input type="radio" name="q40" value="b">Hydrogen</label><br/> 
	<label><input type="radio" name="q40" value="x">Nitrogen</label><br/>  
	<label><input type="radio" name="q40" value="c">Carbon dioxide</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>Which ecological pyramid is always upright?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Pyramid of energy</label><br/> 
	<label><input type="radio" name="q41" value="a">Pyramid of number</label><br/> 
	<label><input type="radio" name="q41" value="b">Pyramid of biomass</label><br/>  
	<label><input type="radio" name="q41" value="c">None of these</label>
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
	<legend><b>Mobile combustion accounts _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">10-20% of air pollution</label><br/> 
	<label><input type="radio" name="q43" value="a">40-50% of air pollution</label><br/> 
	<label><input type="radio" name="q43" value="b">50-60% of air pollution</label><br/>  
	<label><input type="radio" name="q43" value="c">5-10% of air pollution</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>The supersonic jets cause pollution by the thinning of _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Troposphere</label><br/> 
	<label><input type="radio" name="q44" value="b">Asthenosphere</label><br/> 
	<label><input type="radio" name="q44" value="c">Lithosphere</label><br/>  
	<label><input type="radio" name="q44" value="x">Ozone layer</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>Acid rain contains ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Sulfur dioxide and nitrogen oxides</label><br/> 
	<label><input type="radio" name="q45" value="a">Nitric acid</label><br/> 
	<label><input type="radio" name="q45" value="b">Sulphuric acid</label><br/>  
	<label><input type="radio" name="q45" value="c">Hydrochloric acid</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>What is the instrument used to detect earthquakes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Barometer</label><br/> 
	<label><input type="radio" name="q46" value="b">Radiometer</label><br/> 
	<label><input type="radio" name="q46" value="x"> Seismograph</label><br/>  
	<label><input type="radio" name="q46" value="c">Speedometer</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>Whic country has the highest incidence of pollution linked deaths in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Kenya</label><br/> 
	<label><input type="radio" name="q47" value="x">India and China</label><br/> 
	<label><input type="radio" name="q47" value="b">Japan</label><br/>  
	<label><input type="radio" name="q47" value="c">Bangladesh</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>Which is world's fastest warming regions?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Arctic</label><br/> 
	<label><input type="radio" name="q48" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q48" value="b">Antarctic</label><br/>  
	<label><input type="radio" name="q48" value="c">North Pole</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>Which year has been selected by WMO as year of polar prediction?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">2016-2018</label><br/> 
	<label><input type="radio" name="q49" value="b">Mid-2015 to Mid-2017</label><br/> 
	<label><input type="radio" name="q49" value="x">Mid-2017 to Mid-2019</label><br/>  
	<label><input type="radio" name="q49" value="c">2018-2019</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>When was 'Earth Hour' initiative started in Australia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">2006</label><br/> 
	<label><input type="radio" name="q50" value="x">2007</label><br/> 
	<label><input type="radio" name="q50" value="b">2005</label><br/>  
	<label><input type="radio" name="q50" value="c">2008</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>Where was the first fluorescent frog in the world discovered?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Argentina</label><br/> 
	<label><input type="radio" name="q51" value="a">California</label><br/> 
	<label><input type="radio" name="q51" value="b">Santa Ana</label><br/>  
	<label><input type="radio" name="q51" value="c">Chile</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>What temperature is the Arctic normally in summer?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">30 degrees F</label><br/> 
	<label><input type="radio" name="q52" value="b">36 degrees F</label><br/> 
	<label><input type="radio" name="q52" value="c">20 degrees F</label><br/>  
	<label><input type="radio" name="q52" value="x">50 degrees F</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What percentage of the world's water is being salt?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">25.00%</label><br/> 
	<label><input type="radio" name="q53" value="b">100.00%</label><br/> 
	<label><input type="radio" name="q53" value="x">97.50%</label><br/>  
	<label><input type="radio" name="q53" value="c">80%</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>Which action can have the greatest impact on reducing the threat of global warming?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Composting</label><br/> 
	<label><input type="radio" name="q54" value="x">Improvements to energy efficiency and vehicle fuel economy</label><br/> 
	<label><input type="radio" name="q54" value="b">Planting a tree</label><br/>  
	<label><input type="radio" name="q54" value="c">Recycling</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>Which is the most stable ecosystem?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Ocean</label><br/> 
	<label><input type="radio" name="q55" value="a">Forest</label><br/> 
	<label><input type="radio" name="q55" value="b">Desert</label><br/>  
	<label><input type="radio" name="q55" value="c">Mountain</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>The 10% energy transfer law of food chain was given by _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Weismann</label><br/> 
	<label><input type="radio" name="q56" value="b">Stanley</label><br/> 
	<label><input type="radio" name="q56" value="c">Tansley</label><br/>  
	<label><input type="radio" name="q56" value="x">Raymond Lindeman</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>Formation of ozone hole is maximum over _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">India</label><br/> 
	<label><input type="radio" name="q57" value="x">Antarctica</label><br/> 
	<label><input type="radio" name="q57" value="b">Africa</label><br/>  
	<label><input type="radio" name="q57" value="c">Europe</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>Which part of the world has a high density of organisms?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Tropical rain forests</label><br/> 
	<label><input type="radio" name="q58" value="a">Grasslands</label><br/> 
	<label><input type="radio" name="q58" value="b">Savannahs</label><br/>  
	<label><input type="radio" name="q58" value="c">Deciduous forests</label>
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
	<legend><b>More than 70% of world's fresh water is contained in ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q60" value="x">Polar ice</label><br/> 
	<label><input type="radio" name="q60" value="b">Antartica</label><br/>  
	<label><input type="radio" name="q60" value="c">Glaciers and mountains</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>The world 'Environment' is derived from _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Italy</label><br/> 
	<label><input type="radio" name="q61" value="b">English</label><br/> 
	<label><input type="radio" name="q61" value="c">German</label><br/>  
	<label><input type="radio" name="q61" value="x">French</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>The term ecosystem was first proposed by __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Arthur G.Tansley</label><br/> 
	<label><input type="radio" name="q62" value="a">Jacob Van Verkul</label><br/> 
	<label><input type="radio" name="q62" value="b">Costanza</label><br/>  
	<label><input type="radio" name="q62" value="c">Tyler Miller</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>EIA full form in environment.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Environmental and Industrial Activities</label><br/> 
	<label><input type="radio" name="q63" value="b">Environmental Internal Activities</label><br/> 
	<label><input type="radio" name="q63" value="c">Environmental Legal Assistance</label><br/>  
	<label><input type="radio" name="q63" value="x">Environmental Impact Assessment</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>Primary cause of acid rain around the world is due to _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Carbon monoxide</label><br/> 
	<label><input type="radio" name="q64" value="b">Ozone</label><br/> 
	<label><input type="radio" name="q64" value="c">Carbon dioxide</label><br/>  
	<label><input type="radio" name="q64" value="x">Sulfur dioxide</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>Who is the father of modern Ecology?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Barbara Jordan</label><br/> 
	<label><input type="radio" name="q65" value="x">Eugene Odum</label><br/> 
	<label><input type="radio" name="q65" value="b">Robert D.Bullard</label><br/>  
	<label><input type="radio" name="q65" value="c">Rex N.Olinare</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>Earth Hour is organized by ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">United Nations Environment Programme</label><br/> 
	<label><input type="radio" name="q66" value="b">UNESCO</label><br/> 
	<label><input type="radio" name="q66" value="x">World Wide Fund</label><br/>  
	<label><input type="radio" name="q66" value="c">None of these</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>Which is major environmental issues in mining activities?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Deforestation, erosion</label><br/> 
	<label><input type="radio" name="q67" value="a">Air pollution and dust</label><br/> 
	<label><input type="radio" name="q67" value="b">Water pollution</label><br/>  
	<label><input type="radio" name="q67" value="c">Soil Degradation</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>Silent Spring is an environmental science book written by _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Carlos Lewis</label><br/> 
	<label><input type="radio" name="q68" value="b">Simon Kerton</label><br/> 
	<label><input type="radio" name="q68" value="x">Rachel Carson</label><br/>  
	<label><input type="radio" name="q68" value="c">Mathew Giselda</label>
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
	<legend><b>The 'thickness' of Stratospheric Ozone layer is measured in/on _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Melson units</label><br/> 
	<label><input type="radio" name="q70" value="x">Dobson units</label><br/> 
	<label><input type="radio" name="q70" value="b">Beaufort Scale</label><br/>  
	<label><input type="radio" name="q70" value="c">Sieverts</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>On which day is World Water Day observed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">29-July</label><br/> 
	<label><input type="radio" name="q71" value="x">22-March</label><br/> 
	<label><input type="radio" name="q71" value="b">12-July</label><br/>  
	<label><input type="radio" name="q71" value="c">01-March</label>
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
	<legend><b>When did Global Green Development Institute(GGGI) be established?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">2011</label><br/> 
	<label><input type="radio" name="q73" value="b">2014</label><br/> 
	<label><input type="radio" name="q73" value="x">2010</label><br/>  
	<label><input type="radio" name="q73" value="c">2000</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>What is the natural causes of pollution?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Automobiles</label><br/> 
	<label><input type="radio" name="q74" value="b">Sewage</label><br/> 
	<label><input type="radio" name="q74" value="c">Industries</label><br/>  
	<label><input type="radio" name="q74" value="x">Volcanic eruptions</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>Who is considered as the father of ecology?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Eugene Odum</label><br/> 
	<label><input type="radio" name="q75" value="a">Rex N Olinares</label><br/> 
	<label><input type="radio" name="q75" value="b">Krishna Kant Patnaik</label><br/>  
	<label><input type="radio" name="q75" value="c">Ernst Mayr</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Who is the father of modern oceanography?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Psalm Eight</label><br/> 
	<label><input type="radio" name="q76" value="b">Aristotle</label><br/> 
	<label><input type="radio" name="q76" value="c">Dave Dwyer</label><br/>  
	<label><input type="radio" name="q76" value="x">Matthew Fontaine Maury</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>World Ocean Day is celebrated on _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">10th June</label><br/> 
	<label><input type="radio" name="q77" value="x">8th June</label><br/> 
	<label><input type="radio" name="q77" value="b">21st June</label><br/>  
	<label><input type="radio" name="q77" value="c">5th June</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>Movement of Nutrients from the soil by the Acid Rain is called ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Infiltration</label><br/> 
	<label><input type="radio" name="q78" value="b">Transpiration</label><br/> 
	<label><input type="radio" name="q78" value="c">Exfiltration</label><br/>  
	<label><input type="radio" name="q78" value="x">Leaching</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>The term 'Abyssal' refers to ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Inner most part of the earth</label><br/> 
	<label><input type="radio" name="q79" value="b">Organism found in the shallow water zone of the seas</label><br/> 
	<label><input type="radio" name="q79" value="x">Bottom waters of the ocean depths</label><br/>  
	<label><input type="radio" name="q79" value="c">None of the above</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>The spring season in the north temperate zone is when _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">The sun is directly overhead the Tropic of Cancer</label><br/> 
	<label><input type="radio" name="q80" value="b">The sun returns to equator</label><br/> 
	<label><input type="radio" name="q80" value="c">The sun is at the Tropic of Cancer</label><br/>  
	<label><input type="radio" name="q80" value="x">The sun is directly overhead the equator</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>The study of day-to-day variations in weather is called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Meteorology</label><br/> 
	<label><input type="radio" name="q81" value="a">Climatology</label><br/> 
	<label><input type="radio" name="q81" value="b">Cyclogenesis</label><br/>  
	<label><input type="radio" name="q81" value="c">None of the above</label>
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
	<legend><b>The temperature increases rapidly after ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Exosphere</label><br/> 
	<label><input type="radio" name="q83" value="x">Ionosphere</label><br/> 
	<label><input type="radio" name="q83" value="b">Stratosphere</label><br/>  
	<label><input type="radio" name="q83" value="c">Troposphere</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>The spiral flow in a stream caused by channel shape is called ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Stream flow</label><br/> 
	<label><input type="radio" name="q84" value="x">Helical flow</label><br/> 
	<label><input type="radio" name="q84" value="b">Laminar flow</label><br/>  
	<label><input type="radio" name="q84" value="c">Turbulent flow</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>The propagation of radio signals is greatly influenced by _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Ionosphere</label><br/> 
	<label><input type="radio" name="q85" value="a">Troposphere</label><br/> 
	<label><input type="radio" name="q85" value="b">Exosphere</label><br/>  
	<label><input type="radio" name="q85" value="c">Thermosphere</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>The process that involves the eroded material being dissolved and carried along in water as individual ions is called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Suspension</label><br/> 
	<label><input type="radio" name="q86" value="b">Saltation</label><br/> 
	<label><input type="radio" name="q86" value="x">Solution</label><br/>  
	<label><input type="radio" name="q86" value="c">Traction</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>Human Rights Day is observed on ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">4th March</label><br/> 
	<label><input type="radio" name="q87" value="c">28th October</label><br/> 
	<label><input type="radio" name="q87" value="x">10th December</label><br/>  
	<label><input type="radio" name="q87" value="b">5th June</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>When the World population Day is observed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">5th June</label><br/> 
	<label><input type="radio" name="q88" value="b">28th February</label><br/> 
	<label><input type="radio" name="q88" value="c">29th July</label><br/>  
	<label><input type="radio" name="q88" value="x">11th July</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>October 14 is observed as _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">World Information Day</label><br/> 
	<label><input type="radio" name="q89" value="b">World Animal Welfare Day</label><br/> 
	<label><input type="radio" name="q89" value="x">World Standards Day</label><br/>  
	<label><input type="radio" name="q89" value="c">None of these</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>When is the World AIDS Day observed all over the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">1st October</label><br/> 
	<label><input type="radio" name="q90" value="b">12th December</label><br/> 
	<label><input type="radio" name="q90" value="x">1st December</label><br/>  
	<label><input type="radio" name="q90" value="c">12th November</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>When is the Earth Day celebrated?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">1st January</label><br/> 
	<label><input type="radio" name="q91" value="x">22nd April</label><br/> 
	<label><input type="radio" name="q91" value="b">22nd June</label><br/>  
	<label><input type="radio" name="q91" value="c">28th February</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Easter falls on which day</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Sunday</label><br/> 
	<label><input type="radio" name="q92" value="a">Monday</label><br/> 
	<label><input type="radio" name="q92" value="b">Friday</label><br/>  
	<label><input type="radio" name="q92" value="c">Thursday</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>Press Freedom Day is Celebrated on ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">3rd May</label><br/> 
	<label><input type="radio" name="q93" value="a">1st December</label><br/> 
	<label><input type="radio" name="q93" value="b">1st October</label><br/>  
	<label><input type="radio" name="q93" value="c">12th November</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>World Red Cross Day falls on ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">3rd May</label><br/> 
	<label><input type="radio" name="q94" value="x">8th May</label><br/> 
	<label><input type="radio" name="q94" value="b">1st October</label><br/>  
	<label><input type="radio" name="q94" value="c">28th February</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>June 20 is celebrated as ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">World Theatre Day</label><br/> 
	<label><input type="radio" name="q95" value="b">World Poetry Day</label><br/> 
	<label><input type="radio" name="q95" value="x">World Refugee Day</label><br/>  
	<label><input type="radio" name="q95" value="c">World Disabled Day</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>International Women's Day is celebrated on __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">12th July</label><br/> 
	<label><input type="radio" name="q96" value="b">12th November</label><br/> 
	<label><input type="radio" name="q96" value="x">8th March</label><br/>  
	<label><input type="radio" name="q96" value="c">8th November</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>When was World Literacy Day observed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">10th February</label><br/> 
	<label><input type="radio" name="q97" value="x">8th September</label><br/> 
	<label><input type="radio" name="q97" value="b">7th February</label><br/>  
	<label><input type="radio" name="q97" value="c">1st October</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>World Thrift Day is observed on _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">1st December</label><br/> 
	<label><input type="radio" name="q98" value="b">22nd April</label><br/> 
	<label><input type="radio" name="q98" value="x">30th October</label><br/>  
	<label><input type="radio" name="q98" value="c">2nd January</label>
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
	<legend><b>Earth day is observed on ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">22nd July</label><br/> 
	<label><input type="radio" name="q100" value="b">2nd April</label><br/> 
	<label><input type="radio" name="q100" value="c">2nd July</label><br/>  
	<label><input type="radio" name="q100" value="x">22nd April</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>