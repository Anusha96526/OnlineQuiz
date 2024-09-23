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
	<legend><b>Which vegetable grow under the ground?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Cabbage, lettuce, broccoli, and spanish</label><br/> 
	<label><input type="radio" name="q1" value="b">Zucchini, tomatoes, squash, and pumpkins</label><br/> 
	<label><input type="radio" name="q1" value="x">Potatoes, beets, onions, and carrots</label><br/> 
	<label><input type="radio" name="q1" value="c">Green beans, peas, corn, and okra</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>The vegetable made of leaves that we can eat is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Green bean</label><br/> 
	<label><input type="radio" name="q2" value="b">Tomato</label><br/> 
	<label><input type="radio" name="q2" value="c">Potato</label><br/>  
	<label><input type="radio" name="q2" value="x">Spinach or Lettuce</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>What fruit is grown in Florida and California?</b></legend> 
	<label><input type="radio" name="q3" value="x">Orange</label><br/> 
	<label><input type="radio" name="q3" value="a">Mango</label><br/> 
	<label><input type="radio" name="q3" value="b">Coconut</label><br/> 
	<label><input type="radio" name="q3" value="c">Banana</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>What vegetable is a flower that we eat?</b></legend> 
	<label><input type="radio" name="q4" value="x">Broccoli</label><br/> 
	<label><input type="radio" name="q4" value="a">Squash</label><br/> 
	<label><input type="radio" name="q4" value="b">Potato</label><br/>  
	<label><input type="radio" name="q4" value="c">Lettuce</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>Which produces pollen for the flower?</b></legend> 
	<label><input type="radio" name="q5" value="x">Stamen</label><br/> 
	<label><input type="radio" name="q5" value="a">Anther</label><br/> 
	<label><input type="radio" name="q5" value="b">Ovary</label><br/>  
	<label><input type="radio" name="q5" value="c">Pistil</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>Plants take carbon dioxide from the atmosphere mainly through their __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Roots</label><br/> 
	<label><input type="radio" name="q6" value="b">Stem</label><br/> 
	<label><input type="radio" name="q6" value="c">Flowers</label><br/>  
	<label><input type="radio" name="q6" value="x">Leaves</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>What is the female flower parts used for reproduction?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">pollen</label><br/> 
	<label><input type="radio" name="q7" value="x">Pistil</label><br/> 
	<label><input type="radio" name="q7" value="b">Conifers</label><br/>  
	<label><input type="radio" name="q7" value="c">Spores</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>What we call the female cells in flowering plants?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="x">Megaspores</label><br/> 
	<label><input type="radio" name="q8" value="a">Ovary</label><br/> 
	<label><input type="radio" name="q8" value="b">Bees</label><br/>  
	<label><input type="radio" name="q8" value="c">Pistil</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>What seeds are dispersed by explosion?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Sesame</label><br/> 
	<label><input type="radio" name="q9" value="b">Flax</label><br/> 
	<label><input type="radio" name="q9" value="c">Corn</label><br/>  
	<label><input type="radio" name="q9" value="x">Pea and Beans</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>Which part of plant is used for reproduction?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="x">Flower</label><br/> 
	<label><input type="radio" name="q10" value="a">Leaves</label><br/> 
	<label><input type="radio" name="q10" value="b">Stems</label><br/>  
	<label><input type="radio" name="q10" value="c">Roots</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>What is ephedra used for?</b></legend> 
	<label><input type="radio" name="q11" value="a">Malaria</label><br/> 
	<label><input type="radio" name="q11" value="b">Skin</label><br/> 
	<label><input type="radio" name="q11" value=x>Weight loss and obesity</label><br/>  
	<label><input type="radio" name="q11" value="c">Blood pressure</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>What is Isabgol used for?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="a">Fever</label><br/> 
	<label><input type="radio" name="q12" value="x">Constipation</label><br/> 
	<label><input type="radio" name="q12" value="b">Skin</label><br/>  
	<label><input type="radio" name="q12" value="c">Cold</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>The plant which traps and feeds on insects is _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Cuscuta</label><br/> 
	<label><input type="radio" name="q13" value="b">China rose</label><br/> 
	<label><input type="radio" name="q13" value="x">Pitcher plant</label><br/>  
	<label><input type="radio" name="q13" value="c">Rose</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>The process of fusion of the male and the female gamets is called _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Pollination</label><br/> 
	<label><input type="radio" name="q14" value="b">Reproduction</label><br/> 
	<label><input type="radio" name="q14" value="x">Fertilisation</label><br/>  
	<label><input type="radio" name="q14" value="c">Seed formation</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>In plants, water is transported through _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="x">Xylem</label><br/> 
	<label><input type="radio" name="q15" value="a">Phloem</label><br/> 
	<label><input type="radio" name="q15" value="b">Stomato</label><br/>  
	<label><input type="radio" name="q15" value="c">Root hair</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>What is the Japanese art of growing very small shrubs and trees called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Origami</label><br/> 
	<label><input type="radio" name="q16" value="x">Bonsai</label><br/> 
	<label><input type="radio" name="q16" value="b">Ikebana</label><br/>  
	<label><input type="radio" name="q16" value="c">Moribana</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>What tree is soap and perfume made from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="a">Redwood tree</label><br/> 
	<label><input type="radio" name="q17" value="x">Agarwood tree</label><br/> 
	<label><input type="radio" name="q17" value="b">Banyan tree</label><br/>  
	<label><input type="radio" name="q17" value="c">Eucalyptus tree</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>What is the original name of the love apple?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Tomato</label><br/> 
	<label><input type="radio" name="q18" value="a">Carrot</label><br/> 
	<label><input type="radio" name="q18" value="b">Orange</label><br/>  
	<label><input type="radio" name="q18" value="c">Raddish</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>Mature ovary forms the ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Seed</label><br/> 
	<label><input type="radio" name="q19" value="b">Stamen</label><br/> 
	<label><input type="radio" name="q19" value="c">Pistil</label><br/>  
	<label><input type="radio" name="q19" value="x">Fruit</label>
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
	<legend><b>What cereal must be grown in water?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Wheat</label><br/> 
	<label><input type="radio" name="q21" value="b">Atta</label><br/> 
	<label><input type="radio" name="q21" value="x">Rice</label><br/>  
	<label><input type="radio" name="q21" value="c">Ragi</label>
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
	<legend><b>What part of a flowering plant is often used to make oil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="x">Seed</label><br/> 
	<label><input type="radio" name="q23" value="a">Stem</label><br/> 
	<label><input type="radio" name="q23" value="b">Root</label><br/>  
	<label><input type="radio" name="q23" value="c">Leaf</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What is the sacred flower of the Buddhist religion?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="a">Rose</label><br/> 
	<label><input type="radio" name="q24" value="x">Lotus</label><br/> 
	<label><input type="radio" name="q24" value="b">Lily</label><br/>  
	<label><input type="radio" name="q24" value="c">Jasmine</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>What part of a flower becomes the fruit?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="a">Ovules</label><br/> 
	<label><input type="radio" name="q25" value="b">Bees</label><br/> 
	<label><input type="radio" name="q25" value="c">Pistil</label><br/>  
	<label><input type="radio" name="q25" value="x">Ovary</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>What spice is good for heart?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Cumin</label><br/> 
	<label><input type="radio" name="q26" value="b">Mustard</label><br/> 
	<label><input type="radio" name="q26" value="x">Cinnamon</label><br/>  
	<label><input type="radio" name="q26" value="c">Fenugreek</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>What is the smallest flowering plant?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Raffelsia</label><br/> 
	<label><input type="radio" name="q27" value="b">Pistia</label><br/> 
	<label><input type="radio" name="q27" value="c">Marchantia</label><br/>  
	<label><input type="radio" name="q27" value="x">Wolffia</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What is the largest flower in the world</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Dahlia</label><br/> 
	<label><input type="radio" name="q28" value="b">Lotus</label><br/> 
	<label><input type="radio" name="q28" value="c">Sunflower</label><br/>  
	<label><input type="radio" name="q28" value="x">Rafflesia arnoldii</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>What cut flower is the most popular for purchase?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="x">Rose</label><br/> 
	<label><input type="radio" name="q29" value="a">Sunflower</label><br/> 
	<label><input type="radio" name="q29" value="b">Lily</label><br/>  
	<label><input type="radio" name="q29" value="c">Tulip</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Which flower symbolizes beauty and innocence?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Honeysuckle</label><br/> 
	<label><input type="radio" name="q30" value="b">Gardenia</label><br/> 
	<label><input type="radio" name="q30" value="x">White Calla Lily</label><br/>  
	<label><input type="radio" name="q30" value="c">Rose</label>
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
	<legend><b>What part of the flower is the corolla?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Stem</label><br/> 
	<label><input type="radio" name="q32" value="b">Stamen</label><br/> 
	<label><input type="radio" name="q32" value="c">Pistil</label><br/>  
	<label><input type="radio" name="q32" value="x">Petals</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>What flower is worn to remember the fallen soldiers?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="a">Red Rose</label><br/> 
	<label><input type="radio" name="q33" value="x">Red Poppy</label><br/> 
	<label><input type="radio" name="q33" value="b">Iris</label><br/>  
	<label><input type="radio" name="q33" value="c">Lily</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Where are the most cut flower grown?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">India</label><br/> 
	<label><input type="radio" name="q34" value="b">China</label><br/> 
	<label><input type="radio" name="q34" value="x">Netherlands</label><br/>  
	<label><input type="radio" name="q34" value="c">USA</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>What flower bulb can be used in the place of onions in cooking?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="x">Tulip bulbs</label><br/> 
	<label><input type="radio" name="q35" value="a">Freesia</label><br/> 
	<label><input type="radio" name="q35" value="b">Dahlia</label><br/>  
	<label><input type="radio" name="q35" value="c">Gladiolus</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>In which season does the Trochetia Boutoniana flower?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="a">July to September</label><br/> 
	<label><input type="radio" name="q36" value="b">August to November</label><br/> 
	<label><input type="radio" name="q36" value="x">June to October</label><br/>  
	<label><input type="radio" name="q36" value="c">June to September</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>What is the second most common gas found in the air we breathe?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Neon</label><br/> 
	<label><input type="radio" name="q37" value="b">Orgon</label><br/> 
	<label><input type="radio" name="q37" value="c">Hydrogen</label><br/>  
	<label><input type="radio" name="q37" value="x">Oxygen</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>What plant and herb stops itching?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Isabgul</label><br/> 
	<label><input type="radio" name="q38" value="b">Neem</label><br/> 
	<label><input type="radio" name="q38" value="x">Basil</label><br/>  
	<label><input type="radio" name="q38" value="c">Tulsi</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>What roots does banyan tree have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Prop roots</label><br/> 
	<label><input type="radio" name="q39" value="a">Stilt roots</label><br/> 
	<label><input type="radio" name="q39" value="b">Climbing roots</label><br/>  
	<label><input type="radio" name="q39" value="c">Moniliform roots</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question </b></legend> 
	<legend><b>What did the first land plants evolve from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Livewort</label><br/> 
	<label><input type="radio" name="q40" value="b">Moss</label><br/> 
	<label><input type="radio" name="q40" value="c">Fern</label><br/>  
	<label><input type="radio" name="q40" value="x">Green Algae</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>What is the study of trees and plants?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="a">Zoology</label><br/> 
	<label><input type="radio" name="q41" value="x">Botany</label><br/> 
	<label><input type="radio" name="q41" value="b">Chemistry</label><br/>  
	<label><input type="radio" name="q41" value="c">Physics</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>What type of cells do plants have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="x">Eukaryotic</label><br/> 
	<label><input type="radio" name="q42" value="a">Monocyte</label><br/> 
	<label><input type="radio" name="q42" value="b">Osteoclast</label><br/>  
	<label><input type="radio" name="q42" value="c">Prokaryotic</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>What is the scientific name for conifers?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="a">Huon pine</label><br/> 
	<label><input type="radio" name="q43" value="b">Radiata pine</label><br/> 
	<label><input type="radio" name="q43" value="x">Pinophyta</label><br/>  
	<label><input type="radio" name="q43" value="c">Norfolk pine</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>What is the waxy layer on the surface of plants called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Spore</label><br/> 
	<label><input type="radio" name="q44" value="x">Cuticle</label><br/> 
	<label><input type="radio" name="q44" value="b">Isabgul</label><br/>  
	<label><input type="radio" name="q44" value="c">Cuticle</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>In which direction do the roots of plants grow?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="a">Toward air flow</label><br/> 
	<label><input type="radio" name="q45" value="b">Upward light</label><br/> 
	<label><input type="radio" name="q45" value="x">Downwards gravity</label><br/>  
	<label><input type="radio" name="q45" value="c">Upward gravity</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>What is the most important part of a plant?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="x">Leaves</label><br/> 
	<label><input type="radio" name="q46" value="a">Stem</label><br/> 
	<label><input type="radio" name="q46" value="b">Root</label><br/>  
	<label><input type="radio" name="q46" value="c">Petal</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>What parts of the pitcher plant becomes modified into a picher?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Flower bud</label><br/> 
	<label><input type="radio" name="q47" value="c">Flower</label><br/> 
	<label><input type="radio" name="q47" value="b">Fruit</label><br/>  
	<label><input type="radio" name="q47" value="x">Leaves</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>What plants is referred to as a living fossil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="a">Adiantum</label><br/> 
	<label><input type="radio" name="q48" value="x">Ginkgo biloba</label><br/> 
	<label><input type="radio" name="q48" value="b">Cycas</label><br/>  
	<label><input type="radio" name="q48" value="c">Ephedra</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>The process by which plants lose water into the atmosphere is known as _____</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Perspiration</label><br/> 
	<label><input type="radio" name="q49" value="b">Photosynthesis</label><br/> 
	<label><input type="radio" name="q49" value="x">Transpiration</label><br/>  
	<label><input type="radio" name="q49" value="c">Osmosis</label>
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
	<legend><b>What kind of trees do silk worms live in?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Peepsl</label><br/> 
	<label><input type="radio" name="q52" value="x">Mulberry</label><br/> 
	<label><input type="radio" name="q52" value="b">Willow</label><br/>  
	<label><input type="radio" name="q52" value="c">Banyan</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What is a natural auxin in plants?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Citric acid</label><br/> 
	<label><input type="radio" name="q53" value="b">Butane</label><br/> 
	<label><input type="radio" name="q53" value="x">Indole butyric acid</label><br/>  
	<label><input type="radio" name="q53" value="c">Propane</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>What is the most common aggregate fruit?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="x">Strawberry</label><br/> 
	<label><input type="radio" name="q54" value="a">Tomato</label><br/> 
	<label><input type="radio" name="q54" value="b">Mango</label><br/>  
	<label><input type="radio" name="q54" value="c">Guava</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>What does not come from a plant?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="a">Paper</label><br/> 
	<label><input type="radio" name="q55" value="b">Medicine</label><br/> 
	<label><input type="radio" name="q55" value="x">Water</label><br/>  
	<label><input type="radio" name="q55" value="c">Oxygen</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>What is the most common name for Ocimum tenuiflorum?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Cinnamon</label><br/> 
	<label><input type="radio" name="q56" value="b">Cardamom</label><br/> 
	<label><input type="radio" name="q56" value="c">Neem</label><br/>  
	<label><input type="radio" name="q56" value="x">Basil</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>What is the scientific name of rhizome?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Cassava</label><br/> 
	<label><input type="radio" name="q57" value="x">Rootstocks</label><br/> 
	<label><input type="radio" name="q57" value="b">Turnip</label><br/>  
	<label><input type="radio" name="q57" value="c">Carrot</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>Plants take carbon dioxide from the atmosphere mainly through _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">leaves</label><br/> 
	<label><input type="radio" name="q58" value="a">Soil</label><br/> 
	<label><input type="radio" name="q58" value="b">Sand</label><br/>  
	<label><input type="radio" name="q58" value="c">Air</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>What is the name of a edible root?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Banyan</label><br/> 
	<label><input type="radio" name="q59" value="b">Potato</label><br/> 
	<label><input type="radio" name="q59" value="x">Carrot</label><br/>  
	<label><input type="radio" name="q59" value="c">Beans</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>Underground part of a plant is called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Stem</label><br/> 
	<label><input type="radio" name="q60" value="x">Root</label><br/> 
	<label><input type="radio" name="q60" value="b">Flower</label><br/>  
	<label><input type="radio" name="q60" value="c">Leaves</label>
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
	<legend><b>What plant has flowers but no proper leaves?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Cactus</label><br/> 
	<label><input type="radio" name="q62" value="a">Mango</label><br/> 
	<label><input type="radio" name="q62" value="b">Neem</label><br/>  
	<label><input type="radio" name="q62" value="c">Tulsi</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>What cells fomr the middle layer of plant leaves?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Chlorophyll</label><br/> 
	<label><input type="radio" name="q63" value="b">Starch</label><br/> 
	<label><input type="radio" name="q63" value="x">Mesophyll</label><br/>  
	<label><input type="radio" name="q63" value="c">Carbon dioxide</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>The main parts of a plant are seed, leaves, flowers, stem, and ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="x">Roots</label><br/> 
	<label><input type="radio" name="q64" value="a">Seedling</label><br/> 
	<label><input type="radio" name="q64" value="b">Roots</label><br/>  
	<label><input type="radio" name="q64" value="c">Soil</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>What part of androecium produces pollen grains?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Petal</label><br/> 
	<label><input type="radio" name="q65" value="b">Sepal</label><br/> 
	<label><input type="radio" name="q65" value="c">Ovary</label><br/>  
	<label><input type="radio" name="q65" value="x">Anther</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>A young plant growing from a seed is called a _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Seeding</label><br/> 
	<label><input type="radio" name="q66" value="x">Seedling</label><br/> 
	<label><input type="radio" name="q66" value="b">Seedlet</label><br/>  
	<label><input type="radio" name="q66" value="c">Baby plant</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What is fossilized amber made from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="a">Solid</label><br/> 
	<label><input type="radio" name="q67" value="b">Mucilage</label><br/> 
	<label><input type="radio" name="q67" value="c">Liquid</label><br/>  
	<label><input type="radio" name="q67" value="x">Resin</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b></b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Cocaine</label><br/> 
	<label><input type="radio" name="q68" value="x">Hemp</label><br/> 
	<label><input type="radio" name="q68" value="b">Opium</label><br/>  
	<label><input type="radio" name="q68" value="c">Quinine</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>Plants store extra food in the form of ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="x">Starch</label><br/> 
	<label><input type="radio" name="q69" value="a">Chlorophyll</label><br/> 
	<label><input type="radio" name="q69" value="b">Carbon dioxide</label><br/>  
	<label><input type="radio" name="q69" value="c">Oxygen</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>The Japanese word 'sakura' means the blossoming of what kind of tree?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Photinia serratifolia</label><br/> 
	<label><input type="radio" name="q70" value="b">Magnolia salicifolia</label><br/> 
	<label><input type="radio" name="q70" value="x">Cherry tree</label><br/>  
	<label><input type="radio" name="q70" value="c">Fraxinus lanuginosa</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>What is the largest group of plants that make seeds?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="x">Angiosperms</label><br/> 
	<label><input type="radio" name="q71" value="a">Pitcher</label><br/> 
	<label><input type="radio" name="q71" value="b">Nonvascular plants</label><br/>  
	<label><input type="radio" name="q71" value="c">Vascular plants</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>A trailing or climbing plant is also known as a ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="a">Bramble</label><br/> 
	<label><input type="radio" name="q72" value="b">Chaparrol</label><br/> 
	<label><input type="radio" name="q72" value="x">Lianas</label><br/>  
	<label><input type="radio" name="q72" value="c">Boscage</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>Who is the father of modern ethnobotany?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Sir Robert Watson</label><br/> 
	<label><input type="radio" name="q73" value="b">Dr.Lal Pathlabs</label><br/> 
	<label><input type="radio" name="q73" value="c">Dr.John Whyte</label><br/>  
	<label><input type="radio" name="q73" value="x">Richard Evans Schultes</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>The tiny pores present on the leaves of plants are called _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="x">Stomata</label><br/> 
	<label><input type="radio" name="q74" value="a">Grains</label><br/> 
	<label><input type="radio" name="q74" value="b">Chlorophyll</label><br/>  
	<label><input type="radio" name="q74" value="c">Cells</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>What is common edible mushroom?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="a">Type of hypha</label><br/> 
	<label><input type="radio" name="q75" value="b">Tightly packed mycelium</label><br/> 
	<label><input type="radio" name="q75" value="x">White button mushrooms</label><br/>  
	<label><input type="radio" name="q75" value="c">Structure used for producing asexual sproes</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>What things is made from jute?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Spices</label><br/> 
	<label><input type="radio" name="q76" value="x">Ropes</label><br/> 
	<label><input type="radio" name="q76" value="b">Perfumes</label><br/>  
	<label><input type="radio" name="q76" value="c">Medicines</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>Where is Opium obtained from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Stem bark</label><br/> 
	<label><input type="radio" name="q77" value="x">Opium poppy</label><br/> 
	<label><input type="radio" name="q77" value="b">Roots</label><br/>  
	<label><input type="radio" name="q77" value="c">Dried leaves</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>The Root nodules are commonly found in ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Parsitic plants</label><br/> 
	<label><input type="radio" name="q78" value="b">Aquatic plants</label><br/> 
	<label><input type="radio" name="q78" value="x">Leguminous plants</label><br/>  
	<label><input type="radio" name="q78" value="c">Epiphytic plants</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>What plant needs external support to stand?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="x">Climbers</label><br/> 
	<label><input type="radio" name="q79" value="a">Herbs</label><br/> 
	<label><input type="radio" name="q79" value="b">Trees</label><br/>  
	<label><input type="radio" name="q79" value="c">Shrubs</label>
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
	<legend><b>What is the name of trees or plants which give us Perfume?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="a">Neem</label><br/> 
	<label><input type="radio" name="q81" value="b">Orange</label><br/> 
	<label><input type="radio" name="q81" value="x">Jasmine</label><br/>  
	<label><input type="radio" name="q81" value="c">None of these</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>What plant can grow in very low or no water for long period of time?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Tulsi plant</label><br/> 
	<label><input type="radio" name="q82" value="b">Neem</label><br/> 
	<label><input type="radio" name="q82" value="c">Mango</label><br/>  
	<label><input type="radio" name="q82" value="x">Snake plant</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>What are the holes in a leaf called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Monocyte</label><br/> 
	<label><input type="radio" name="q83" value="b">Sepal</label><br/> 
	<label><input type="radio" name="q83" value="c">Ginkgo</label><br/>  
	<label><input type="radio" name="q83" value="x">Stomata</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>Plants store their food in the form of _____</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Leaves</label><br/> 
	<label><input type="radio" name="q84" value="b">Roots</label><br/> 
	<label><input type="radio" name="q84" value="x">Starch</label><br/>  
	<label><input type="radio" name="q84" value="c">Flowers</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>Wheat is a _________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Grass</label><br/> 
	<label><input type="radio" name="q85" value="b">Tree</label><br/> 
	<label><input type="radio" name="q85" value="a">Shrubs</label><br/>  
	<label><input type="radio" name="q85" value="c">Climber</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>What are insectivorous plants called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="x">Carnivorous plant</label><br/> 
	<label><input type="radio" name="q86" value="b">All insects eat these plants</label><br/> 
	<label><input type="radio" name="q86" value="c">Insects like such plants</label><br/>  
	<label><input type="radio" name="q86" value="a">They don't eat insects</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>Where do plants absorb water and minerals?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Stem</label><br/> 
	<label><input type="radio" name="q87" value="x">Soil</label><br/> 
	<label><input type="radio" name="q87" value="b">Leaves</label><br/>  
	<label><input type="radio" name="q87" value="c">Roots</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>In plants a common symptom caused by deficiency of P,K,Ca and Mg is the ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Poor development of vasculature</label><br/> 
	<label><input type="radio" name="q88" value="b">Formation of anthocyanin</label><br/> 
	<label><input type="radio" name="q88" value="c">Bending of leaf tip</label><br/>  
	<label><input type="radio" name="q88" value="x">Necrosis</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>What family are carnivorous plants in?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Cannabaceae</label><br/> 
	<label><input type="radio" name="q89" value="b">Alismataceae</label><br/> 
	<label><input type="radio" name="q89" value="x">Sarraceniaceae</label><br/>  
	<label><input type="radio" name="q89" value="c">Penaeaceae</label>
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
	<legend><b>What is chlorophyll used to trap?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Sunlight</label><br/> 
	<label><input type="radio" name="q92" value="a">Oxygen</label><br/> 
	<label><input type="radio" name="q92" value="b">Water</label><br/>  
	<label><input type="radio" name="q92" value="c">Nutrients</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>Man-made fertilizers which are produced from chemicals are called __________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="a">Organic fertilizers</label><br/> 
	<label><input type="radio" name="q93" value="b">Low fertilizers</label><br/> 
	<label><input type="radio" name="q93" value="x">Inorganic fertilizers</label><br/>  
	<label><input type="radio" name="q93" value="c">Complex fertilizers</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>In the word photosynthesis 'photo' means ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Photograph</label><br/> 
	<label><input type="radio" name="q94" value="b">Making</label><br/> 
	<label><input type="radio" name="q94" value="c">Reproduction</label><br/>  
	<label><input type="radio" name="q94" value="x">Light</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>What is the first stage of a plant in the life cycle of plants?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Hydroponics</label><br/> 
	<label><input type="radio" name="q95" value="b">Seedling</label><br/> 
	<label><input type="radio" name="q95" value="x">Germination</label><br/>  
	<label><input type="radio" name="q95" value="c">None of these</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>In which part of the plant do you find the seeds?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="x">Ovary</label><br/> 
	<label><input type="radio" name="q96" value="a">Fruit</label><br/> 
	<label><input type="radio" name="q96" value="b">Filament</label><br/>  
	<label><input type="radio" name="q96" value="c">Petal</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>Seedless plants reproduce with ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="x">Spores</label><br/> 
	<label><input type="radio" name="q97" value="a">Seeds</label><br/> 
	<label><input type="radio" name="q97" value="b">Binary fission</label><br/>  
	<label><input type="radio" name="q97" value="c">Flowers</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>What plants give us oil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="c">Sunflower</label><br/> 
	<label><input type="radio" name="q98" value="b">Oil palm</label><br/> 
	<label><input type="radio" name="q98" value="a">Soybeans</label><br/>  
	<label><input type="radio" name="q98" value="x">All of the above</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Which fruit seeds are harmful?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Apricots</label><br/> 
	<label><input type="radio" name="q99" value="b">Cherries</label><br/> 
	<label><input type="radio" name="q99" value="c">Plums</label><br/>  
	<label><input type="radio" name="q99" value="x">All of the above</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>What plants eat insects and animals?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Pitcher plant</label><br/> 
	<label><input type="radio" name="q100" value="b">Venus Flytrap</label><br/> 
	<label><input type="radio" name="q100" value="c">Yellow Pitcher plant</label><br/>  
	<label><input type="radio" name="q100" value="x">All of the above</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>