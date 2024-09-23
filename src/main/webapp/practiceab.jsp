<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
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
	<legend><b>Which is the world's leading egg-producing country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">India</label><br/> 
	<label><input type="radio" name="q1" value="b">Japan</label><br/> 
	<label><input type="radio" name="q1" value="c">Malaysia</label><br/>  
	<label><input type="radio" name="q1" value="x">China</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>Which bird lays the world's smallest egg?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Hornbill</label><br/> 
	<label><input type="radio" name="q2" value="x">Bee Humming Bird</label><br/> 
	<label><input type="radio" name="q2" value="b">Gulls</label><br/>  
	<label><input type="radio" name="q2" value="c">Woodpecker</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>Which bird lays the world's largest egg?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Ostrich</label><br/> 
	<label><input type="radio" name="q3" value="a">Vulture</label><br/> 
	<label><input type="radio" name="q3" value="b">Owl</label><br/>  
	<label><input type="radio" name="q3" value="c">Eagle</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>Which is the Heaviest snake?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Viper</label><br/> 
	<label><input type="radio" name="q4" value="b">Reticulated Python</label><br/> 
	<label><input type="radio" name="q4" value="x">Green Anaconda</label><br/>  
	<label><input type="radio" name="q4" value="c">Boa Constrictor</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>Which is the tallest land animal?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Giraffe</label><br/> 
	<label><input type="radio" name="q5" value="a">Elephant</label><br/> 
	<label><input type="radio" name="q5" value="b">Rhinoceros</label><br/>  
	<label><input type="radio" name="q5" value="c">Polar Bear</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>Which is the Longest snake?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">King Cobra</label><br/> 
	<label><input type="radio" name="q6" value="x">Reticulated Python</label><br/> 
	<label><input type="radio" name="q6" value="b">Anaconda</label><br/>  
	<label><input type="radio" name="q6" value="c">Viper</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>The egg laying animals are known as ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Herbivorous</label><br/> 
	<label><input type="radio" name="q7" value="b">Carnivorous</label><br/> 
	<label><input type="radio" name="q7" value="x">Oviparous</label><br/>  
	<label><input type="radio" name="q7" value="c">Reptiles</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>What is the study of bird eggs called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Zoology</label><br/> 
	<label><input type="radio" name="q8" value="b">Ornithology</label><br/> 
	<label><input type="radio" name="q8" value="c">Ichthyology</label><br/>  
	<label><input type="radio" name="q8" value="x">Oology</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>What is the gestation period of an African elephant?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Six Months</label><br/> 
	<label><input type="radio" name="q9" value="b">One Year</label><br/> 
	<label><input type="radio" name="q9" value="x">Twenty Two Months</label><br/>  
	<label><input type="radio" name="q9" value="c">Nine Months</label>
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
	<legend><b>Which animal can look two ways at the same time?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Chameleon</label><br/> 
	<label><input type="radio" name="q11" value="a">Lizard</label><br/> 
	<label><input type="radio" name="q11" value="b">Snake</label><br/>  
	<label><input type="radio" name="q11" value="c">Tortoise</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>Name the bird that enters a saltwater crocodile's mouth to pick out the parasites and food particles?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Egyptian Plover</label><br/> 
	<label><input type="radio" name="q12" value="a">Sparrow</label><br/> 
	<label><input type="radio" name="q12" value="b">Kingfisher</label><br/>  
	<label><input type="radio" name="q12" value="c">Crow</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>What type of species is a gecko?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Dinosaur</label><br/> 
	<label><input type="radio" name="q13" value="b">Bat</label><br/> 
	<label><input type="radio" name="q13" value="c">Snake</label><br/>  
	<label><input type="radio" name="q13" value="x">House Lizard</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>Name the bird that migrates from the North Pole to the South Pole and back?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Swallow</label><br/> 
	<label><input type="radio" name="q14" value="x">Arctic Tern</label><br/> 
	<label><input type="radio" name="q14" value="b">Crane</label><br/>  
	<label><input type="radio" name="q14" value="c">Penguin</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>Snakes that are active in daytime generally have round pupils. What about snakes that come out at night?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Horizontal Pupils</label><br/> 
	<label><input type="radio" name="q15" value="b">No Pupils</label><br/> 
	<label><input type="radio" name="q15" value="x">Vertical Pupils</label><br/>  
	<label><input type="radio" name="q15" value="c">Round Pupils</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>From which animal is the valuable Pashmina wool obtained?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">Black Sheep</label><br/> 
	<label><input type="radio" name="q16" value="b">Deer</label><br/> 
	<label><input type="radio" name="q16" value="x">Changthangi Goat</label><br/>  
	<label><input type="radio" name="q16" value="c">Ram</label>
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
	<legend><b>Feathers are made up of an insoluble protein called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Keratin</label><br/> 
	<label><input type="radio" name="q18" value="a">Calamus</label><br/> 
	<label><input type="radio" name="q18" value="b">Down</label><br/>  
	<label><input type="radio" name="q18" value="c">Cartilage</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>How tall can grizzly bears stand on their hind legs?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">25 Feet</label><br/> 
	<label><input type="radio" name="q19" value="b">21 Feet</label><br/> 
	<label><input type="radio" name="q19" value="c">4 Feet</label><br/>  
	<label><input type="radio" name="q19" value="x">8 Feet</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>The polar bear scientific name is ursus maritimus. What does that mean?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">White Bear</label><br/> 
	<label><input type="radio" name="q20" value="x">Maritime Bear</label><br/> 
	<label><input type="radio" name="q20" value="b">Ice Bear</label><br/>  
	<label><input type="radio" name="q20" value="c">Brown Bear</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>Which is the Fastest land animal?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Antelope</label><br/> 
	<label><input type="radio" name="q21" value="b">Gazelle</label><br/> 
	<label><input type="radio" name="q21" value="c">Hare</label><br/>  
	<label><input type="radio" name="q21" value="x">Cheetah</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>In which animals do distinct black stripes extend from the inner corners of the eyes to the mouth?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Jaguar</label><br/> 
	<label><input type="radio" name="q22" value="b">Leopard</label><br/> 
	<label><input type="radio" name="q22" value="x">Cheetah</label><br/>  
	<label><input type="radio" name="q22" value="c">Panther</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>Which is the Largest mammal?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Elephant</label><br/> 
	<label><input type="radio" name="q23" value="x">Antarctica Blue Whale</label><br/> 
	<label><input type="radio" name="q23" value="b">Rhinoceros</label><br/>  
	<label><input type="radio" name="q23" value="c">Hippopotamus</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>Which bird has the largest wing span?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Wandering Albatross</label><br/> 
	<label><input type="radio" name="q24" value="a">Ostrich</label><br/> 
	<label><input type="radio" name="q24" value="b">Eagle</label><br/>  
	<label><input type="radio" name="q24" value="c">Pelican</label>
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
	<legend><b>How many types of Puffins exist?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">2</label><br/> 
	<label><input type="radio" name="q26" value="b">3</label><br/> 
	<label><input type="radio" name="q26" value="x">4</label><br/>  
	<label><input type="radio" name="q26" value="c">5</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>Which bird sings, 'Who cooks for you? Who cooks for you-all?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">American Robin</label><br/> 
	<label><input type="radio" name="q27" value="b">Indigo Bunting</label><br/> 
	<label><input type="radio" name="q27" value="x">Barred Owl</label><br/>  
	<label><input type="radio" name="q27" value="c">Rufous-Sided Towhee</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>Rock Dove can see how many degrees around them without turning their head?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">100 Degrees</label><br/> 
	<label><input type="radio" name="q28" value="x">300 Degrees</label><br/> 
	<label><input type="radio" name="q28" value="b">150 Degrees</label><br/>  
	<label><input type="radio" name="q28" value="c">235 Degrees</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>In the wild, which animal is found only in China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q29" value="x">Giant Panda</label><br/> 
	<label><input type="radio" name="q29" value="b">Asian Elephant</label><br/>  
	<label><input type="radio" name="q29" value="c">Crocodile</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Which land animal moves most slowly?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Sloth</label><br/> 
	<label><input type="radio" name="q30" value="x">Three-Toed Sloth</label><br/> 
	<label><input type="radio" name="q30" value="b">Turtle</label><br/>  
	<label><input type="radio" name="q30" value="c">Rabbit</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>What is the largest of the great apes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Orangutan</label><br/> 
	<label><input type="radio" name="q31" value="b">Chimpanzee</label><br/> 
	<label><input type="radio" name="q31" value="x">Grauer's Gorilla</label><br/>  
	<label><input type="radio" name="q31" value="c">Monkey</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>Which bird can fly straight up, down, and backwards?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Pigeon</label><br/> 
	<label><input type="radio" name="q32" value="b">Sparrow</label><br/> 
	<label><input type="radio" name="q32" value="c">Eagle</label><br/>  
	<label><input type="radio" name="q32" value="x">Humming bird</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>Which animal used to roam in huge herds across the American West?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">American bison</label><br/> 
	<label><input type="radio" name="q33" value="a">Elk</label><br/> 
	<label><input type="radio" name="q33" value="b">Prairie Dog</label><br/>  
	<label><input type="radio" name="q33" value="c">Cat</label>
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
	<legend><b>Which family is found in Phalacrocoracidae?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Darter</label><br/> 
	<label><input type="radio" name="q35" value="b">Gannet</label><br/> 
	<label><input type="radio" name="q35" value="c">Pelican</label><br/>  
	<label><input type="radio" name="q35" value="x">Cormorant</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>Which family is contained in Podicipedidae?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Grebe</label><br/> 
	<label><input type="radio" name="q36" value="a">Divers</label><br/> 
	<label><input type="radio" name="q36" value="b">Cranes</label><br/>  
	<label><input type="radio" name="q36" value="c">Penguins</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>Which bird family belongs to Apterygidae?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Ostrich</label><br/> 
	<label><input type="radio" name="q37" value="c">Cassowaries</label><br/> 
	<label><input type="radio" name="q37" value="b">Rheas</label><br/>  
	<label><input type="radio" name="q37" value="x">Kiwi</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>Which is the flightless bird found in South America?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Cassowary</label><br/> 
	<label><input type="radio" name="q38" value="x">Rhea</label><br/> 
	<label><input type="radio" name="q38" value="b">Emu</label><br/>  
	<label><input type="radio" name="q38" value="c">Ostrich</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>In which country do you find the kiwi?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">New Zealand</label><br/> 
	<label><input type="radio" name="q39" value="a">Papua New Guinea</label><br/> 
	<label><input type="radio" name="q39" value="b">Australia</label><br/>  
	<label><input type="radio" name="q39" value="c">Brazil</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>The large flightless bird is to be found in Africa. What is it?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Rhea</label><br/> 
	<label><input type="radio" name="q40" value="b">Emu</label><br/> 
	<label><input type="radio" name="q40" value="x">Ostrich</label><br/>  
	<label><input type="radio" name="q40" value="c">Emperor Penguin</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>What is the color of oriole feeder?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Orange</label><br/> 
	<label><input type="radio" name="q41" value="a">Yellow</label><br/> 
	<label><input type="radio" name="q41" value="b">Red</label><br/>  
	<label><input type="radio" name="q41" value="c">Green</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>Which hawk will most commonly visited feeders to prey on birds?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Red-Tailed Hawks</label><br/> 
	<label><input type="radio" name="q42" value="x">Copper's hawks</label><br/> 
	<label><input type="radio" name="q42" value="b">Northern Harrier</label><br/>  
	<label><input type="radio" name="q42" value="c">Common Black Hawk</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>What are the species of wax wings found in the United States?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Bohemian And Cedar</label><br/> 
	<label><input type="radio" name="q43" value="a">American And Western</label><br/> 
	<label><input type="radio" name="q43" value="b">Bohemian And American</label><br/>  
	<label><input type="radio" name="q43" value="c">Bohemian And Western</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>Who monitors Project Feeder Watch?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">World Wildlife Fund</label><br/> 
	<label><input type="radio" name="q44" value="b">Audobon Society</label><br/> 
	<label><input type="radio" name="q44" value="c">Sierra Club</label><br/>  
	<label><input type="radio" name="q44" value="x">Cornell Lab Of Ornithology</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>Which is the only kind of hummingbird found that breeds in the eastern United?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Ruby-Throated Hummingbird</label><br/> 
	<label><input type="radio" name="q45" value="a">Anna's</label><br/> 
	<label><input type="radio" name="q45" value="b">Magnificent</label><br/>  
	<label><input type="radio" name="q45" value="c">Black-Chinned</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>What color is the tufted titmouse?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Black</label><br/> 
	<label><input type="radio" name="q46" value="b">Blue</label><br/> 
	<label><input type="radio" name="q46" value="x">Silver Grey</label><br/>  
	<label><input type="radio" name="q46" value="c">Red</label>
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
	<legend><b>How many families are in Falconiformes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">5</label><br/> 
	<label><input type="radio" name="q48" value="a">3</label><br/> 
	<label><input type="radio" name="q48" value="b">2</label><br/>  
	<label><input type="radio" name="q48" value="c">4</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>What is the order of pigeon belong to?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Cuculiformes</label><br/> 
	<label><input type="radio" name="q49" value="b">Coraciiformes</label><br/> 
	<label><input type="radio" name="q49" value="x">Columbiformes</label><br/>  
	<label><input type="radio" name="q49" value="c">Charadriiformes</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>Which order does the ostrich belong to?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Rheiformes</label><br/> 
	<label><input type="radio" name="q50" value="x">Struthioniformes</label><br/> 
	<label><input type="radio" name="q50" value="b">Piciformes</label><br/>  
	<label><input type="radio" name="q50" value="c">Gaviiformes</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>Which animal has the biggest eye that is ten times bigger than a human eye?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Giant Squid</label><br/> 
	<label><input type="radio" name="q51" value="a">Whale</label><br/> 
	<label><input type="radio" name="q51" value="b">Mongoose</label><br/>  
	<label><input type="radio" name="q51" value="c">Bush Baby</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>What do you call animals that only eat plants?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Carnivores</label><br/> 
	<label><input type="radio" name="q52" value="b">Omnivores</label><br/> 
	<label><input type="radio" name="q52" value="c">Frugivores</label><br/>  
	<label><input type="radio" name="q52" value="x">Herbivores</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What is rhino horn made of?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Calcium</label><br/> 
	<label><input type="radio" name="q53" value="b">Minerals</label><br/> 
	<label><input type="radio" name="q53" value="x">Keratin</label><br/>  
	<label><input type="radio" name="q53" value="c">Fibre</label>
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
	<legend><b>From which animal is Morocco leather derived?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Goat</label><br/> 
	<label><input type="radio" name="q55" value="a">Donkey</label><br/> 
	<label><input type="radio" name="q55" value="b">Cow</label><br/>  
	<label><input type="radio" name="q55" value="c">Horse</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>Which animal has the longest tail?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Horse</label><br/> 
	<label><input type="radio" name="q56" value="b">Lion</label><br/> 
	<label><input type="radio" name="q56" value="c">Elephant</label><br/>  
	<label><input type="radio" name="q56" value="x">Giraffe</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>Which animal represents strength and knowledge?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Tiger</label><br/> 
	<label><input type="radio" name="q57" value="x">Elephant</label><br/> 
	<label><input type="radio" name="q57" value="b">Lion</label><br/>  
	<label><input type="radio" name="q57" value="c">Cow</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>Which bird is a symbol of faith?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Dove</label><br/> 
	<label><input type="radio" name="q58" value="a">Parrot</label><br/> 
	<label><input type="radio" name="q58" value="b">Pigeon</label><br/>  
	<label><input type="radio" name="q58" value="c">Crow</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Which was the first animal to go into space?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Monkey</label><br/> 
	<label><input type="radio" name="q59" value="b">Rabbit</label><br/> 
	<label><input type="radio" name="q59" value="x">Dog</label><br/>  
	<label><input type="radio" name="q59" value="c">Rat</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>What is the only animal in which the male gives birth their young?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Anemonefish</label><br/> 
	<label><input type="radio" name="q60" value="x">Seahorses</label><br/> 
	<label><input type="radio" name="q60" value="b">Parrotfish</label><br/>  
	<label><input type="radio" name="q60" value="c">Hyena</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>Which animal has the sharpest hearing in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Dolphin</label><br/> 
	<label><input type="radio" name="q61" value="b">Owl</label><br/> 
	<label><input type="radio" name="q61" value="c">Elephant</label><br/>  
	<label><input type="radio" name="q61" value="x">Rat</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>A baby kangaroo is also known as _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Joey</label><br/> 
	<label><input type="radio" name="q62" value="a">Booomer</label><br/> 
	<label><input type="radio" name="q62" value="b">Flyer</label><br/>  
	<label><input type="radio" name="q62" value="c">Elephant</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>Which animal has no vocal cords?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Lion</label><br/> 
	<label><input type="radio" name="q63" value="b">Zebra</label><br/> 
	<label><input type="radio" name="q63" value="c">Dolphin</label><br/>  
	<label><input type="radio" name="q63" value="x">Giraffe</label>
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
	<legend><b>How long does a camel can stay without water?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">1 Year</label><br/> 
	<label><input type="radio" name="q65" value="x">15 Days</label><br/> 
	<label><input type="radio" name="q65" value="b">3 Month</label><br/>  
	<label><input type="radio" name="q65" value="c">4 Month</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>How many hearts does an octopus have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">9</label><br/> 
	<label><input type="radio" name="q66" value="b">5</label><br/> 
	<label><input type="radio" name="q66" value="x">3</label><br/>  
	<label><input type="radio" name="q66" value="c">2</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What was the name of the first cloned sheep?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Dolly</label><br/> 
	<label><input type="radio" name="q67" value="a">Jolly</label><br/> 
	<label><input type="radio" name="q67" value="b">Molly</label><br/>  
	<label><input type="radio" name="q67" value="c">Polly</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>How much litres of water a camel can drink?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Up To 60 Ltr</label><br/> 
	<label><input type="radio" name="q68" value="b">Up To 80 Ltr</label><br/> 
	<label><input type="radio" name="q68" value="x">Up To 200 Ltr</label><br/>  
	<label><input type="radio" name="q68" value="c">Up To 120 Ltr</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>How many pangolin species are there?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">6</label><br/> 
	<label><input type="radio" name="q69" value="b">7</label><br/> 
	<label><input type="radio" name="q69" value="x">8</label><br/>  
	<label><input type="radio" name="q69" value="c">12</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>The blood color of octopus is ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Red</label><br/> 
	<label><input type="radio" name="q70" value="x">Blue</label><br/> 
	<label><input type="radio" name="q70" value="b">Green</label><br/>  
	<label><input type="radio" name="q70" value="c">Yellow</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>How many stomach does a giraffe have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">1</label><br/> 
	<label><input type="radio" name="q71" value="x">4</label><br/> 
	<label><input type="radio" name="q71" value="b">2</label><br/>  
	<label><input type="radio" name="q71" value="c">3</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>How many years can a cat live up to?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">12-18</label><br/> 
	<label><input type="radio" name="q72" value="a">4-9</label><br/> 
	<label><input type="radio" name="q72" value="b">4-3</label><br/>  
	<label><input type="radio" name="q72" value="c">5-3</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>How many bones do sharks have in their bodies?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">305 Bones</label><br/> 
	<label><input type="radio" name="q73" value="b">251 Bones</label><br/> 
	<label><input type="radio" name="q73" value="x">No Bones</label><br/>  
	<label><input type="radio" name="q73" value="c">201 Bones</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>What kind of animal is a stallion?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Zebra</label><br/> 
	<label><input type="radio" name="q74" value="b">Deer</label><br/> 
	<label><input type="radio" name="q74" value="c">Lion</label><br/>  
	<label><input type="radio" name="q74" value="x">Male horse</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>Darwin finches refers to a group of?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Birds</label><br/> 
	<label><input type="radio" name="q75" value="a">Fishes</label><br/> 
	<label><input type="radio" name="q75" value="b">Lizards</label><br/>  
	<label><input type="radio" name="q75" value="c">Amphibians</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Which breed of dog is the tallest known breed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Dobberman</label><br/> 
	<label><input type="radio" name="q76" value="b">Greyhound</label><br/> 
	<label><input type="radio" name="q76" value="c">Dalmation</label><br/>  
	<label><input type="radio" name="q76" value="x">Irish wolfhound</label>
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
	<legend><b>How many species of snakes are there in the world</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">2,000</label><br/> 
	<label><input type="radio" name="q78" value="b">5,000</label><br/> 
	<label><input type="radio" name="q78" value="c">6,000</label><br/>  
	<label><input type="radio" name="q78" value="x">3,000</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>How many pounds of meat can a tiger eat at once?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">20 Kg</label><br/> 
	<label><input type="radio" name="q79" value="b">100 Kg</label><br/> 
	<label><input type="radio" name="q79" value="x">40 Kg</label><br/>  
	<label><input type="radio" name="q79" value="c">80 Kg</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>What is a group of crowss called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">A herd</label><br/> 
	<label><input type="radio" name="q80" value="b">A Hangnail</label><br/> 
	<label><input type="radio" name="q80" value="c">A kennel</label><br/>  
	<label><input type="radio" name="q80" value="x">A murder</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>How many Saolas are left in the world?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Less than 250</label><br/> 
	<label><input type="radio" name="q81" value="a">1500</label><br/> 
	<label><input type="radio" name="q81" value="b">2000</label><br/>  
	<label><input type="radio" name="q81" value="c">More than 2000</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>How far can an owl rotate its head?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">90 Degree</label><br/> 
	<label><input type="radio" name="q82" value="b">160 Degree</label><br/> 
	<label><input type="radio" name="q82" value="x">270 Degree</label><br/>  
	<label><input type="radio" name="q82" value="c">235 Degree</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>Which animal has yellow blood?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Fish</label><br/> 
	<label><input type="radio" name="q83" value="x">Sea cucumber</label><br/> 
	<label><input type="radio" name="q83" value="b">Tiger</label><br/>  
	<label><input type="radio" name="q83" value="c">Sea horse</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>In some parts of the world, mysterious deaths of which creatures threaten agriculture?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Rat</label><br/> 
	<label><input type="radio" name="q84" value="x">Bees</label><br/> 
	<label><input type="radio" name="q84" value="b">Cow</label><br/>  
	<label><input type="radio" name="q84" value="c">Fish</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>Which animals swims in an upright position?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Sea horse</label><br/> 
	<label><input type="radio" name="q85" value="a">Sea Slug</label><br/> 
	<label><input type="radio" name="q85" value="b">Sea Lion</label><br/>  
	<label><input type="radio" name="q85" value="c">Sea Urchin</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>Who is the closest living relative of the rock hyrax?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Lion and Yak</label><br/> 
	<label><input type="radio" name="q86" value="b">Wolf and Yak</label><br/> 
	<label><input type="radio" name="q86" value="x">Elephants and Manatees</label><br/>  
	<label><input type="radio" name="q86" value="c">Fox and Lion</label>
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
	<legend><b>What are the knobs on the top of giraffes heads called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Aglets</label><br/> 
	<label><input type="radio" name="q88" value="b">Okapi</label><br/> 
	<label><input type="radio" name="q88" value="c">Climacoceras</label><br/>  
	<label><input type="radio" name="q88" value="x">Ossicones</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>Hippos secrete a substance to cool their hairless skin calledd ____________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Sweat</label><br/> 
	<label><input type="radio" name="q89" value="b">Nose</label><br/> 
	<label><input type="radio" name="q89" value="c">Saliva</label><br/>  
	<label><input type="radio" name="q89" value="x">Blood-sweat</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>What are baby meerkats called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Cubs</label><br/> 
	<label><input type="radio" name="q90" value="b">Whelps</label><br/> 
	<label><input type="radio" name="q90" value="x">Pups</label><br/>  
	<label><input type="radio" name="q90" value="c">Kits</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>Which animal drinks water and die?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Dog</label><br/> 
	<label><input type="radio" name="q91" value="x">Kangaroo rat</label><br/> 
	<label><input type="radio" name="q91" value="b">Rat</label><br/>  
	<label><input type="radio" name="q91" value="c">Dolphin</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Which animal can create the loudest sound among any living creature?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Blue whale</label><br/> 
	<label><input type="radio" name="q92" value="a">Gibbon</label><br/> 
	<label><input type="radio" name="q92" value="b">Humpback Whales</label><br/>  
	<label><input type="radio" name="q92" value="c">Howler monkey</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>The fish that can taste with its whole body is ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Catfish</label><br/> 
	<label><input type="radio" name="q93" value="a">Coryfish</label><br/> 
	<label><input type="radio" name="q93" value="b">Silurus</label><br/>  
	<label><input type="radio" name="q93" value="c">Armoredfish</label>
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
	<legend><b>What is the maximum running land speed of American Crocodile?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">28-39 km/h</label><br/> 
	<label><input type="radio" name="q95" value="b">35 km/h</label><br/> 
	<label><input type="radio" name="q95" value="x">32 km/h</label><br/>  
	<label><input type="radio" name="q95" value="c">26-31 km/h</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>Male lemurs are known for their ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Ring Tails</label><br/> 
	<label><input type="radio" name="q96" value="b">Sound</label><br/> 
	<label><input type="radio" name="q96" value="x">Stink Fights</label><br/>  
	<label><input type="radio" name="q96" value="c">Hunting</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>What animal hibernates in colder months?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Snakes</label><br/> 
	<label><input type="radio" name="q97" value="x">Bears</label><br/> 
	<label><input type="radio" name="q97" value="b">Leopards</label><br/>  
	<label><input type="radio" name="q97" value="c">Beavers</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>For how many years have the dinosaurs been extinct?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">About 25 million years</label><br/> 
	<label><input type="radio" name="q98" value="b">About 100 million years</label><br/> 
	<label><input type="radio" name="q98" value="x">About 65 million years</label><br/>  
	<label><input type="radio" name="q98" value="c">About 135 million years</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Which animal mothers 'sing' to their newborns?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Bat</label><br/> 
	<label><input type="radio" name="q99" value="b">Kangaroo</label><br/> 
	<label><input type="radio" name="q99" value="c">Dolphins</label><br/>  
	<label><input type="radio" name="q99" value="x">Bears</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>What are baby echidnas called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">Joeys</label><br/> 
	<label><input type="radio" name="q100" value="b">Kits</label><br/> 
	<label><input type="radio" name="q100" value="c">Echidnettes</label><br/>  
	<label><input type="radio" name="q100" value="x">Puggles</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>