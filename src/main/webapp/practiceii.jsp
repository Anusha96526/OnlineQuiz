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
	<legend><b>Who discovered the radioactive element radium?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Isaac Newton</label><br/> 
	<label><input type="radio" name="q1" value="b">Albert Einstein</label><br/> 
	<label><input type="radio" name="q1" value="c">Benjamin Franklin</label><br/>  
	<label><input type="radio" name="q1" value="x">Marie and Pierre Curie</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>What type of system did Paul Nipkow, John Baird, and Charles Jenkins all invent?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Telephone</label><br/> 
	<label><input type="radio" name="q2" value="x">Television</label><br/> 
	<label><input type="radio" name="q2" value="b">Early Warning</label><br/>  
	<label><input type="radio" name="q2" value="c">Electricity</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>Who invented fuel cells in 1839?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">William Robert Grove</label><br/> 
	<label><input type="radio" name="q3" value="a">Buckminster Fuller</label><br/> 
	<label><input type="radio" name="q3" value="b">Sylvester Graham</label><br/>  
	<label><input type="radio" name="q3" value="c">Joyce Hall</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>Which insurance salesman invented the fountain pen in 1884?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Sir William Grove</label><br/> 
	<label><input type="radio" name="q4" value="b">Charles Kettering</label><br/> 
	<label><input type="radio" name="q4" value="x">Lewis Edson Waterman</label><br/>  
	<label><input type="radio" name="q4" value="c">George Fountain</label>
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
	<legend><b>In which year was MIDI introduced?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">1987</label><br/> 
	<label><input type="radio" name="q6" value="x">1983</label><br/> 
	<label><input type="radio" name="q6" value="b">1973</label><br/>  
	<label><input type="radio" name="q6" value="c">1977</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Who invented Automobiles using gasoline?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Leo H Baekeland</label><br/> 
	<label><input type="radio" name="q7" value="b">Evangelista Torricelli</label><br/> 
	<label><input type="radio" name="q7" value="x">Carl Benz</label><br/>  
	<label><input type="radio" name="q7" value="c">Kirkpatrick Macmillan</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>Who invented Ballpoint pen?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Dr.Alan M.Turing</label><br/> 
	<label><input type="radio" name="q8" value="b">Roger Bacon</label><br/> 
	<label><input type="radio" name="q8" value="c">Otto</label><br/>  
	<label><input type="radio" name="q8" value="x">Laszlo Biro, John J.Loud</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>Who invented Dynamite?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Sir Alexander Graham Bell</label><br/> 
	<label><input type="radio" name="q9" value="b">Benjamin Franklin</label><br/> 
	<label><input type="radio" name="q9" value="x">Alfred Nobel</label><br/>  
	<label><input type="radio" name="q9" value="c">Thomas Alva Edison</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>Who invented Fountain pen?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">John J.Loud</label><br/> 
	<label><input type="radio" name="q10" value="x">Petrache Poenaru, Robert William Thomson</label><br/> 
	<label><input type="radio" name="q10" value="b">Sir Frank Whittle</label><br/>  
	<label><input type="radio" name="q10" value="c">Kirkpatrick Macmillan</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>Who invented Rigid Airship?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Ferdinand Von Zeppelin</label><br/> 
	<label><input type="radio" name="q11" value="a">Dr.Alan M.Turing</label><br/> 
	<label><input type="radio" name="q11" value="b">Roger Bacon</label><br/>  
	<label><input type="radio" name="q11" value="c">Otto</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>Who invented Bifocal Lens?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Benjamin Franklin</label><br/> 
	<label><input type="radio" name="q12" value="a">Alfred B.Nobel</label><br/> 
	<label><input type="radio" name="q12" value="b">Thomas Alva Edison</label><br/>  
	<label><input type="radio" name="q12" value="c">Rudolf Diesel</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>Who invented Electric Generator first?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Sir Alexander Graham Bell</label><br/> 
	<label><input type="radio" name="q13" value="b">Alfred B.Nobel</label><br/> 
	<label><input type="radio" name="q13" value="c">Thomas Alva Edison</label><br/>  
	<label><input type="radio" name="q13" value="x">Michael Faraday</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>In which decade was the ARRL founded?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">1940</label><br/> 
	<label><input type="radio" name="q14" value="x">1914</label><br/> 
	<label><input type="radio" name="q14" value="b">1930</label><br/>  
	<label><input type="radio" name="q14" value="c">1920</label>
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
	<legend><b>In which decade with the first transatlantic radio broadcast occur?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">1850</label><br/> 
	<label><input type="radio" name="q16" value="b">1860</label><br/> 
	<label><input type="radio" name="q16" value="x">1901</label><br/>  
	<label><input type="radio" name="q16" value="c">1870</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>The initials JCB on earth-moving equipment are those of the founder of the company that makes it. What is his name?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Joseph Cyril Bamford</label><br/> 
	<label><input type="radio" name="q17" value="a">John Christopher Ballantyne</label><br/> 
	<label><input type="radio" name="q17" value="b">John Christopher Baxter</label><br/>  
	<label><input type="radio" name="q17" value="c">Jack Croxford Baker</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>Where is the village of Branston, after which the famous pickle is named?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Staffordshire</label><br/> 
	<label><input type="radio" name="q18" value="a">Yorkshire</label><br/> 
	<label><input type="radio" name="q18" value="b">Lancashire</label><br/>  
	<label><input type="radio" name="q18" value="c">Norfolk</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>When was Milk Tray first introduced?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">1942</label><br/> 
	<label><input type="radio" name="q19" value="b">1934</label><br/> 
	<label><input type="radio" name="q19" value="c">1923</label><br/>  
	<label><input type="radio" name="q19" value="x">1915</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>When did the first chocolate bar appear?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">1828</label><br/> 
	<label><input type="radio" name="q20" value="x">1847</label><br/> 
	<label><input type="radio" name="q20" value="b">1831</label><br/>  
	<label><input type="radio" name="q20" value="c">1825</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>Who was the first person to patent the JET ENGINE?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">C.Lindbergh</label><br/> 
	<label><input type="radio" name="q21" value="b">W.Histell</label><br/> 
	<label><input type="radio" name="q21" value="c">B.Owings</label><br/>  
	<label><input type="radio" name="q21" value="x">Britain's Frank Whittle</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>Who came up with the idea for INSTANT MASHED POTATO?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">S.Tuberosum</label><br/> 
	<label><input type="radio" name="q22" value="b">W.Raleigh</label><br/> 
	<label><input type="radio" name="q22" value="x">Edward Anton Maria Asselbergs</label><br/>  
	<label><input type="radio" name="q22" value="c">K.Edwards</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>It travels over land and water. Who invented the HOVERCRAFT?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">S.Sperrow</label><br/> 
	<label><input type="radio" name="q23" value="x">C.Cockerell</label><br/> 
	<label><input type="radio" name="q23" value="b">O.Stricheg</label><br/>  
	<label><input type="radio" name="q23" value="c">T.Henman</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>Who invented gene cloning?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Herbert Boyer and Stanley Cohen</label><br/> 
	<label><input type="radio" name="q24" value="a">Hunt and Davids</label><br/> 
	<label><input type="radio" name="q24" value="b">Sinclair and Roberts</label><br/>  
	<label><input type="radio" name="q24" value="c">Jaysson and Simons</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>Who discovered the first practical method of freezing food?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Clarene Birdseye</label><br/> 
	<label><input type="radio" name="q25" value="a">F.Rozenosh</label><br/> 
	<label><input type="radio" name="q25" value="b">G.Findus</label><br/>  
	<label><input type="radio" name="q25" value="c">R.Scott</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>Who is the inventor of the electric battery?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">C.Lindbergh</label><br/> 
	<label><input type="radio" name="q26" value="b">Bottle Warmer</label><br/> 
	<label><input type="radio" name="q26" value="x">Alessandro Volta, John Stringfellow</label><br/>  
	<label><input type="radio" name="q26" value="c">John Harvey Kellogg</label>
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
	<legend><b>Who invented the first controllable flying AIRPLANE?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Lidenbergh Brothers</label><br/> 
	<label><input type="radio" name="q28" value="x">Wright Brothers</label><br/> 
	<label><input type="radio" name="q28" value="b">South Brothers</label><br/>  
	<label><input type="radio" name="q28" value="c">West Brothers</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>Which toy did George Lerner create for Hasbro company in 1952?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Sit and Spin</label><br/> 
	<label><input type="radio" name="q29" value="x">Mr.Potap Head</label><br/> 
	<label><input type="radio" name="q29" value="b">Talking Baby Doll</label><br/>  
	<label><input type="radio" name="q29" value="c">Hula Hoop</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>Which charge card, developed in 1950, was the first to be accepted nationally in the US?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Visa</label><br/> 
	<label><input type="radio" name="q30" value="x">Diner's Club</label><br/> 
	<label><input type="radio" name="q30" value="b">Discover</label><br/>  
	<label><input type="radio" name="q30" value="c">Mastercharge</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>Which drink was invented by Charles Leiper Grigg in 1929?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Yoo-Hoo</label><br/> 
	<label><input type="radio" name="q31" value="b">Pepsi</label><br/> 
	<label><input type="radio" name="q31" value="x">Lemon-Lime soda</label><br/>  
	<label><input type="radio" name="q31" value="c">Hawaiian Punch</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>Which office item was invented by Bette Nesmith Graham in 1951?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Fax Machine</label><br/> 
	<label><input type="radio" name="q32" value="b">Stapler</label><br/> 
	<label><input type="radio" name="q32" value="c">Copy Machine</label><br/>  
	<label><input type="radio" name="q32" value="x">Fluid Liquid Paper</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>Which device was invented by Ann Moore in 1969, for new parents?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Snugli infant carrier</label><br/> 
	<label><input type="radio" name="q33" value="a">Bottle Warmer</label><br/> 
	<label><input type="radio" name="q33" value="b">Baby Monitor</label><br/>  
	<label><input type="radio" name="q33" value="c">Disposable Diaper</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Which item, originally called the 'Whirlwind', was invented by Ives McGaffey in 1869?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Blender</label><br/> 
	<label><input type="radio" name="q34" value="b">Electric Mixer</label><br/> 
	<label><input type="radio" name="q34" value="x">Vacuum Cleaner</label><br/>  
	<label><input type="radio" name="q34" value="c">Washing Machine</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>Which 'game' was first produced by the Southern Novelty Company in Baltimore, Maryland in 1892?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Frisbee</label><br/> 
	<label><input type="radio" name="q35" value="b">Monopoly</label><br/> 
	<label><input type="radio" name="q35" value="c">Ping Pong</label><br/>  
	<label><input type="radio" name="q35" value="x">Ouija</label>
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
	<legend><b>What treat was invented by 11-year-old Frank Epperson in 1905?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Banana Split</label><br/> 
	<label><input type="radio" name="q37" value="c">Cotton Candy</label><br/> 
	<label><input type="radio" name="q37" value="b">Cracker Jacks</label><br/>  
	<label><input type="radio" name="q37" value="x">Popsicle</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>What item of apparel was invented by Ellery Chun, a Hawaiian clothing merchant, in 1931?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">String Bikini</label><br/> 
	<label><input type="radio" name="q38" value="x">Aloha Shirt</label><br/> 
	<label><input type="radio" name="q38" value="b">Muumuu</label><br/>  
	<label><input type="radio" name="q38" value="c">Capri Pants</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>Which toy was invented by Joshua Lionel Cowen around 1900?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Toy Train</label><br/> 
	<label><input type="radio" name="q39" value="a">Raggedy Ann Doll</label><br/> 
	<label><input type="radio" name="q39" value="b">Yo-Yo</label><br/>  
	<label><input type="radio" name="q39" value="c">Tinkertoys</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>What invention made by Garnet Carter made its debut at the Fairyland Inn Resort in Lookout Mountatin, Tennessee, in 1927?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Swimming Pool Slide</label><br/> 
	<label><input type="radio" name="q40" value="b">Ski Lift</label><br/> 
	<label><input type="radio" name="q40" value="x">Miniature Golf</label><br/>  
	<label><input type="radio" name="q40" value="c">Golf Cart</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>What beverage was invented by Charles Alderton in 1885 in Waco, Texas?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Dr.Pepper</label><br/> 
	<label><input type="radio" name="q41" value="a">Cream Soda</label><br/> 
	<label><input type="radio" name="q41" value="b">Coca-Cola</label><br/>  
	<label><input type="radio" name="q41" value="c">Sprite</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>Which plaything was invented by Joe McVickeer in 1956?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Silly Putty</label><br/> 
	<label><input type="radio" name="q42" value="x">Play-Doh</label><br/> 
	<label><input type="radio" name="q42" value="b">Etch-A-Sketch</label><br/>  
	<label><input type="radio" name="q42" value="c">Lite-Brite</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>Which furniture item was invented by California furniture designer Charles Prior Hall in 1968?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Waterbed</label><br/> 
	<label><input type="radio" name="q43" value="a">Sofa Bed</label><br/> 
	<label><input type="radio" name="q43" value="b">Captain's Chair</label><br/>  
	<label><input type="radio" name="q43" value="c">Hammock</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>What invention was first installed at a Hartford, Connecticut bank in 1889?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Automatic Teller Machine</label><br/> 
	<label><input type="radio" name="q44" value="b">Time-Lock Safe</label><br/> 
	<label><input type="radio" name="q44" value="c">Burglar Alarm</label><br/>  
	<label><input type="radio" name="q44" value="x">Pay Telephone</label>
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
	<legend><b>What groovy item was invented by Englishman Edward Craven Walker in 1963?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Leisure Suit</label><br/> 
	<label><input type="radio" name="q46" value="b">Eight-Track Tape Deck</label><br/> 
	<label><input type="radio" name="q46" value="x">Lava Lamp</label><br/>  
	<label><input type="radio" name="q46" value="c">Hot Comb</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>What is the first patented by an Australian in 1889?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Electric Shaver</label><br/> 
	<label><input type="radio" name="q47" value="x">Electric Drill</label><br/> 
	<label><input type="radio" name="q47" value="b">Electric Fence</label><br/>  
	<label><input type="radio" name="q47" value="c">Electric Heater</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>Where were wigs first invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Egypt</label><br/> 
	<label><input type="radio" name="q48" value="a">Japan</label><br/> 
	<label><input type="radio" name="q48" value="b">France</label><br/>  
	<label><input type="radio" name="q48" value="c">China</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>When were barcode scanners invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">1946</label><br/> 
	<label><input type="radio" name="q49" value="b">1964</label><br/> 
	<label><input type="radio" name="q49" value="x">1974</label><br/>  
	<label><input type="radio" name="q49" value="c">1972</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>In the 1700s, who would pay the postage fee for letters before the stamps was invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">The Sender</label><br/> 
	<label><input type="radio" name="q50" value="x">The Receiver of the letter</label><br/> 
	<label><input type="radio" name="q50" value="b">There was no Fee</label><br/>  
	<label><input type="radio" name="q50" value="c">The Post Office</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>When was the first lawn mower invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">1830</label><br/> 
	<label><input type="radio" name="q51" value="a">1854</label><br/> 
	<label><input type="radio" name="q51" value="b">1835</label><br/>  
	<label><input type="radio" name="q51" value="c">1849</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>When was barb wire patented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">1840</label><br/> 
	<label><input type="radio" name="q52" value="b">1895</label><br/> 
	<label><input type="radio" name="q52" value="c">1900</label><br/>  
	<label><input type="radio" name="q52" value="x">1874</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>Where was the yo-yo invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">France</label><br/> 
	<label><input type="radio" name="q53" value="b">United States</label><br/> 
	<label><input type="radio" name="q53" value="x">China</label><br/>  
	<label><input type="radio" name="q53" value="c">England</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>Which invention caused many deaths while testing it?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Dynamite</label><br/> 
	<label><input type="radio" name="q54" value="x">Parachute</label><br/> 
	<label><input type="radio" name="q54" value="b">Ladders</label><br/>  
	<label><input type="radio" name="q54" value="c">Race Cars</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>When was Monopoly created?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">1904</label><br/> 
	<label><input type="radio" name="q55" value="a">1940</label><br/> 
	<label><input type="radio" name="q55" value="b">1920</label><br/>  
	<label><input type="radio" name="q55" value="c">1950</label>
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
	<legend><b>When was the game Frisbee invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">1920</label><br/> 
	<label><input type="radio" name="q57" value="x">1957</label><br/> 
	<label><input type="radio" name="q57" value="b">1900</label><br/>  
	<label><input type="radio" name="q57" value="c">1890</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>For whom high heeled shoes were invented?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Persian soldiers</label><br/> 
	<label><input type="radio" name="q58" value="a">Cleopatra</label><br/> 
	<label><input type="radio" name="q58" value="b">Queen Elizabeth I</label><br/>  
	<label><input type="radio" name="q58" value="c">King Charles Li</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Why is Charles Babbage remembered today?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Telescopes</label><br/> 
	<label><input type="radio" name="q59" value="b">Radio-Telegraphy</label><br/> 
	<label><input type="radio" name="q59" value="x">Father of the computer</label><br/>  
	<label><input type="radio" name="q59" value="c">Steam Boating</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>Who developed the idea of Crop Rotation?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Potato Peterson</label><br/> 
	<label><input type="radio" name="q60" value="x">George Washington Carver</label><br/> 
	<label><input type="radio" name="q60" value="b">Cabbage Carlson</label><br/>  
	<label><input type="radio" name="q60" value="c">Swede Svenson</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>Who invented the Spinning Jenny?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Thornton Hargreaves</label><br/> 
	<label><input type="radio" name="q61" value="b">Peter Hargreaves</label><br/> 
	<label><input type="radio" name="q61" value="c">Simon Hargreaves</label><br/>  
	<label><input type="radio" name="q61" value="x">James Hargreaves</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>Who invented the Seed Drill?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Jethro Tull, William Bullock</label><br/> 
	<label><input type="radio" name="q62" value="a">Arlo Guthrie</label><br/> 
	<label><input type="radio" name="q62" value="b">Woodie Guthrie</label><br/>  
	<label><input type="radio" name="q62" value="c">Thomas Hines</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>What African-American inventor received 5 patents in the field of shoemaking?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Elijah Mccoy</label><br/> 
	<label><input type="radio" name="q63" value="b">Ernest Just</label><br/> 
	<label><input type="radio" name="q63" value="c">Lewis Latimer</label><br/>  
	<label><input type="radio" name="q63" value="x">Jan Ernst Matzeliger</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>This part-time race car driver invented the bucket seat in 1969. Who was he?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Harrison Frazier</label><br/> 
	<label><input type="radio" name="q64" value="b">Paul Newman</label><br/> 
	<label><input type="radio" name="q64" value="c">John Wayne</label><br/>  
	<label><input type="radio" name="q64" value="x">Steve Mcqueen</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>Who is the English physicist responsible for the 'Big Bang Theory?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Albert Einstein</label><br/> 
	<label><input type="radio" name="q65" value="x">George Gamow</label><br/> 
	<label><input type="radio" name="q65" value="b">Michael Skube</label><br/>  
	<label><input type="radio" name="q65" value="c">Roger Penrose</label>
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
	<legend><b>Who is the only U.S. President to invent and patent something?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Abraham Lincoln</label><br/> 
	<label><input type="radio" name="q67" value="a">Theodore Roosevelt</label><br/> 
	<label><input type="radio" name="q67" value="b">Thomas Jefferson</label><br/>  
	<label><input type="radio" name="q67" value="c">Rutherford B.Hayes</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>This English inventor is known as the 'Father of Computing'.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Philo Farnsworth</label><br/> 
	<label><input type="radio" name="q68" value="b">J.Presper Eckert</label><br/> 
	<label><input type="radio" name="q68" value="x">Charles Babbage</label><br/>  
	<label><input type="radio" name="q68" value="c">John Mauchly</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>What invention is credited to the Russian born American inventor Vladimir Kosma Zworykin?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">Telegraph</label><br/> 
	<label><input type="radio" name="q69" value="b">Radio</label><br/> 
	<label><input type="radio" name="q69" value="x">Iconoscope, kinescope</label><br/>  
	<label><input type="radio" name="q69" value="c">Dishwasher</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>Who was the first American female to patent her invention, a method of weaving straw with silk?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Marjorie Joyner</label><br/> 
	<label><input type="radio" name="q70" value="x">Mary Kies</label><br/> 
	<label><input type="radio" name="q70" value="b">Margaret Knight</label><br/>  
	<label><input type="radio" name="q70" value="c">Amanda Jones</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>Benjamin Franklin was a prolific inventor. Among his many other inventions, what musical instrument did he invent?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Banjo</label><br/> 
	<label><input type="radio" name="q71" value="x">Glass Harmonium</label><br/> 
	<label><input type="radio" name="q71" value="b">Oboe</label><br/>  
	<label><input type="radio" name="q71" value="c">Clarinet</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>Who is often called the 'first African-American' inventor?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Thomas L.Jennings</label><br/> 
	<label><input type="radio" name="q72" value="a">Bessie Blount</label><br/> 
	<label><input type="radio" name="q72" value="b">George Washington Carver</label><br/>  
	<label><input type="radio" name="q72" value="c">Elijah Mccoy</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>What was Frank's invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Radar</label><br/> 
	<label><input type="radio" name="q73" value="b">Ethyl Gasoline</label><br/> 
	<label><input type="radio" name="q73" value="x">Jet engine</label><br/>  
	<label><input type="radio" name="q73" value="c">Sonar</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>What was Igor Sikorsky's invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Hydroplane</label><br/> 
	<label><input type="radio" name="q74" value="b">Jet Engine Airplane</label><br/> 
	<label><input type="radio" name="q74" value="c">Glider</label><br/>  
	<label><input type="radio" name="q74" value="x">Helicopter</label>
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
	<legend><b>What was George Pullman's invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Airship</label><br/> 
	<label><input type="radio" name="q76" value="b">Box Car(railway)</label><br/> 
	<label><input type="radio" name="q76" value="c">Air Brakes</label><br/>  
	<label><input type="radio" name="q76" value="x">Pullman sleeper car</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>What did George Westinghouse invent?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Light Bulb</label><br/> 
	<label><input type="radio" name="q77" value="x">Railway Air Brakes</label><br/> 
	<label><input type="radio" name="q77" value="b">Electric Razor</label><br/>  
	<label><input type="radio" name="q77" value="c">Refrigerator</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>What was Elisha Otis invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Jet Engine</label><br/> 
	<label><input type="radio" name="q78" value="b">Turbine</label><br/> 
	<label><input type="radio" name="q78" value="c">Battery</label><br/>  
	<label><input type="radio" name="q78" value="x">Otis Elevator</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>What was Newton's invention?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Chronometer</label><br/> 
	<label><input type="radio" name="q79" value="b">Microscope</label><br/> 
	<label><input type="radio" name="q79" value="x">Reflecting Telescope, Newton's method</label><br/>  
	<label><input type="radio" name="q79" value="c">Spectacles</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>Who invented the railway engine?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Charles Babbage</label><br/> 
	<label><input type="radio" name="q80" value="b">Isaac Newton</label><br/> 
	<label><input type="radio" name="q80" value="c">James Watt</label><br/>  
	<label><input type="radio" name="q80" value="x">George Stephenson</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>Who invented Radar?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Heinrich Hertz, Christian Hulsmeyer</label><br/> 
	<label><input type="radio" name="q81" value="a">Henrey Backquerel</label><br/> 
	<label><input type="radio" name="q81" value="b">Max Planck</label><br/>  
	<label><input type="radio" name="q81" value="c">Humphrey Davy</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>Who invented polio vaccine(oral)?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Burkholder</label><br/> 
	<label><input type="radio" name="q82" value="b">Luise Pasture</label><br/> 
	<label><input type="radio" name="q82" value="x">Albert Sabin</label><br/>  
	<label><input type="radio" name="q82" value="c">Jonas Salk</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>Who developed the smallpox vaccination?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Alexander Fleming</label><br/> 
	<label><input type="radio" name="q83" value="x">Edward Jenner</label><br/> 
	<label><input type="radio" name="q83" value="b">Albert Einstein</label><br/>  
	<label><input type="radio" name="q83" value="c">None of these</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>Which inventor holds the record for the most patents granted to an individual?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">James Watt</label><br/> 
	<label><input type="radio" name="q84" value="x">Thomas Alva Edison</label><br/> 
	<label><input type="radio" name="q84" value="b">Albert Einstein</label><br/>  
	<label><input type="radio" name="q84" value="c">Edwin Land</label>
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
	<legend><b>What writing system is used by blind people?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Henry Bacquerel</label><br/> 
	<label><input type="radio" name="q86" value="b">Sir J.A.Fleming</label><br/> 
	<label><input type="radio" name="q86" value="x">Louis Braille</label><br/>  
	<label><input type="radio" name="q86" value="c">Dr.Charles H.Townes</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>Who invented the revolver?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Eduard Jenne</label><br/> 
	<label><input type="radio" name="q87" value="c">Alexander Fleming</label><br/> 
	<label><input type="radio" name="q87" value="x">Samuel Colt</label><br/>  
	<label><input type="radio" name="q87" value="b">Albert Einstein</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>Who invented the nuclear reactor?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Eduard Jenner</label><br/> 
	<label><input type="radio" name="q88" value="b">Alexander Fleming</label><br/> 
	<label><input type="radio" name="q88" value="c">Albert Einstein Torricelli</label><br/>  
	<label><input type="radio" name="q88" value="x">Enrico Fermi</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>Who discovered the laws of floating bodies?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Pierre Simon De Laplace</label><br/> 
	<label><input type="radio" name="q89" value="b">Edwin Hubble</label><br/> 
	<label><input type="radio" name="q89" value="c">Joseph J.Thomson</label><br/>  
	<label><input type="radio" name="q89" value="x">Archimedes</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>Who discovered the four blood groups?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Richard Feynman</label><br/> 
	<label><input type="radio" name="q90" value="b">Alfred Wegener</label><br/> 
	<label><input type="radio" name="q90" value="x">Karl Landsteiner</label><br/>  
	<label><input type="radio" name="q90" value="c">Stephen Hawking</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>Who invented the spinning frame?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">William Shockley</label><br/> 
	<label><input type="radio" name="q91" value="x">Richard Arkwright</label><br/> 
	<label><input type="radio" name="q91" value="b">Charles Macintosh</label><br/>  
	<label><input type="radio" name="q91" value="c">Samuel Morse</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Who invented the Stethoscope?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Rene Laennec</label><br/> 
	<label><input type="radio" name="q92" value="a">William Shockley</label><br/> 
	<label><input type="radio" name="q92" value="b">Chester Carlson</label><br/>  
	<label><input type="radio" name="q92" value="c">Tim Berners Lee</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>Who discovered Sodium?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Humphry Davy</label><br/> 
	<label><input type="radio" name="q93" value="a">James Watson</label><br/> 
	<label><input type="radio" name="q93" value="b">John Bardeen</label><br/>  
	<label><input type="radio" name="q93" value="c">John Von Neumann</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>Who invented the first safety matches?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Levi Strauss</label><br/> 
	<label><input type="radio" name="q94" value="x">John Walker</label><br/> 
	<label><input type="radio" name="q94" value="b">Benjamin Franklin</label><br/>  
	<label><input type="radio" name="q94" value="c">John Walker</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>Who discovered radium?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Willard Libby</label><br/> 
	<label><input type="radio" name="q95" value="b">Edward Telle</label><br/> 
	<label><input type="radio" name="q95" value="x">Marie And Pierrie Curie</label><br/>  
	<label><input type="radio" name="q95" value="c">Ernst Haeckel</label>
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
	<legend><b>Who invented the first microscope?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Robert Recorde</label><br/> 
	<label><input type="radio" name="q97" value="x">Zacharias Jansen And Aaton Van Leewen Hock</label><br/> 
	<label><input type="radio" name="q97" value="b">William Oughtred</label><br/>  
	<label><input type="radio" name="q97" value="c">Hermann Fottinger</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>Who invented the laser?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Edwin Hubble</label><br/> 
	<label><input type="radio" name="q98" value="b">Albert Einstein</label><br/> 
	<label><input type="radio" name="q98" value="x">Theodore Maiman</label><br/>  
	<label><input type="radio" name="q98" value="c">S.Chandrasekhar</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Who invented lift mechanical?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Thomas A Edison</label><br/> 
	<label><input type="radio" name="q99" value="b">Karl Benz</label><br/> 
	<label><input type="radio" name="q99" value="c">King C Gillette</label><br/>  
	<label><input type="radio" name="q99" value="x">Elisha G Otis</label>
	</fieldset>
	<fieldset id="q100"> 
	<legend><b>Question 100</b></legend> 
	<legend><b>Who invented the Electrocardiography?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q100" value="a">John Boyd Dunlop</label><br/> 
	<label><input type="radio" name="q100" value="b">William R.Bennett Jr.</label><br/> 
	<label><input type="radio" name="q100" value="c">John Harington</label><br/>  
	<label><input type="radio" name="q100" value="x">Willem Einthoven</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>