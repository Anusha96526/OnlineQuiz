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
	<legend><b>What is the national flower of USA?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Camellia</label><br/> 
	<label><input type="radio" name="q1" value="b">Apple Blossom</label><br/> 
	<label><input type="radio" name="q1" value="c">Peach Blossom</label><br/>  
	<label><input type="radio" name="q1" value="x">Rose</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>What is the national flower of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Peach Blossom</label><br/> 
	<label><input type="radio" name="q2" value="x">Plum Blossom</label><br/> 
	<label><input type="radio" name="q2" value="b">Cherry Blossom</label><br/>  
	<label><input type="radio" name="q2" value="c">Apple Blossom</label>
	</fieldset>
	<fieldset id="q3"> 
	<legend><b>Question 3</b></legend> 
	<legend><b>Chrysanthemum is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q3" value="x">Japan</label><br/> 
	<label><input type="radio" name="q3" value="a">Israel</label><br/> 
	<label><input type="radio" name="q3" value="b">Thailand</label><br/>  
	<label><input type="radio" name="q3" value="c">China</label>
	</fieldset>
	<fieldset id="q4"> 
	<legend><b>Question 4</b></legend> 
	<legend><b>Knapweed is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Iceland</label><br/> 
	<label><input type="radio" name="q4" value="b">Turkey</label><br/> 
	<label><input type="radio" name="q4" value="x">Germany</label><br/>  
	<label><input type="radio" name="q4" value="c">Bulgaria</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>What is the national flower of France?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">Lily</label><br/> 
	<label><input type="radio" name="q5" value="a">Peony</label><br/> 
	<label><input type="radio" name="q5" value="b">Tiger lilies</label><br/>  
	<label><input type="radio" name="q5" value="c">Cosmos</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>What is the national flower of Brazil?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Catasetum Orchid</label><br/> 
	<label><input type="radio" name="q6" value="x">Ipe-amarelo</label><br/> 
	<label><input type="radio" name="q6" value="b">Brassavola Orchid</label><br/>  
	<label><input type="radio" name="q6" value="c">Cycnoches Orchid</label>
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
	<legend><b>What is the national flower of Italy?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Tiger lilies</label><br/> 
	<label><input type="radio" name="q8" value="b">Easter lily</label><br/> 
	<label><input type="radio" name="q8" value="c">Madonna lily</label><br/>  
	<label><input type="radio" name="q8" value="x">Stylized Lily</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>What is the national flower of Russia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Tripleurospermum inodorum</label><br/> 
	<label><input type="radio" name="q9" value="b">Cladanthus mixtus</label><br/> 
	<label><input type="radio" name="q9" value="x">Chamomile</label><br/>  
	<label><input type="radio" name="q9" value="c">Golden marguerite</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>What is the national flower of Spain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">Daisy</label><br/> 
	<label><input type="radio" name="q10" value="x">Red Carnation</label><br/> 
	<label><input type="radio" name="q10" value="b">Sacred lotus</label><br/>  
	<label><input type="radio" name="q10" value="c">Peony</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>Dahlia is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Mexico</label><br/> 
	<label><input type="radio" name="q11" value="a">Cuba</label><br/> 
	<label><input type="radio" name="q11" value="b">Grenada</label><br/>  
	<label><input type="radio" name="q11" value="c">Belize</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>Rose of sharon is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Korea</label><br/> 
	<label><input type="radio" name="q12" value="a">Nepal</label><br/> 
	<label><input type="radio" name="q12" value="b">Oman</label><br/>  
	<label><input type="radio" name="q12" value="c">Pakistan</label>
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
	<legend><b>Maple is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Panama</label><br/> 
	<label><input type="radio" name="q14" value="x">Canada</label><br/> 
	<label><input type="radio" name="q14" value="b">Mexico</label><br/>  
	<label><input type="radio" name="q14" value="c">Jamaica</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>What is the national flower of Netherlands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">Belgium</label><br/> 
	<label><input type="radio" name="q15" value="b">Lithuania</label><br/> 
	<label><input type="radio" name="q15" value="x">Tulip</label><br/>  
	<label><input type="radio" name="q15" value="c">Croatia</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>Turkey Tulip is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">United Kingdom</label><br/> 
	<label><input type="radio" name="q16" value="b">Iceland</label><br/> 
	<label><input type="radio" name="q16" value="x">Turkey</label><br/>  
	<label><input type="radio" name="q16" value="c">Hungary</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>What is the national flower of Indonesia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Melati putih</label><br/> 
	<label><input type="radio" name="q17" value="a">Star jasmine</label><br/> 
	<label><input type="radio" name="q17" value="b">Jasminum auriculatum</label><br/>  
	<label><input type="radio" name="q17" value="c">Jasminum grandiflorum</label>
	</fieldset>
	<fieldset id="q18"> 
	<legend><b>Question 18</b></legend> 
	<legend><b>Edelweiss is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q18" value="x">Switzerland</label><br/> 
	<label><input type="radio" name="q18" value="a">Sweden</label><br/> 
	<label><input type="radio" name="q18" value="b">Spain</label><br/>  
	<label><input type="radio" name="q18" value="c">Slovenia</label>
	</fieldset>
	<fieldset id="q19"> 
	<legend><b>Question 19</b></legend> 
	<legend><b>What is the national flower of poland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Cornflower</label><br/> 
	<label><input type="radio" name="q19" value="b">Carnation</label><br/> 
	<label><input type="radio" name="q19" value="c">Oxeye daisy</label><br/>  
	<label><input type="radio" name="q19" value="x">Cornopoppy</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>What is the national flower of Belgium?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Oxeye daisy</label><br/> 
	<label><input type="radio" name="q20" value="x">The red poppy</label><br/> 
	<label><input type="radio" name="q20" value="b">Carnation</label><br/>  
	<label><input type="radio" name="q20" value="c">Cornflower</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>Linnea is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Serbia</label><br/> 
	<label><input type="radio" name="q21" value="b">Portugal</label><br/> 
	<label><input type="radio" name="q21" value="c">Spain</label><br/>  
	<label><input type="radio" name="q21" value="x">Kingdom of Sweden</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>What is the national flower of Norway?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">Calluna</label><br/> 
	<label><input type="radio" name="q22" value="b">Cloudberry</label><br/> 
	<label><input type="radio" name="q22" value="x">Pyramidal saxifrage</label><br/>  
	<label><input type="radio" name="q22" value="c">Lingonberry</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>What is the national flower of Austria?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Tulip</label><br/> 
	<label><input type="radio" name="q23" value="x">Edelweiss</label><br/> 
	<label><input type="radio" name="q23" value="b">Calluna</label><br/>  
	<label><input type="radio" name="q23" value="c">Gladiolus</label>
	</fieldset>
	<fieldset id="q24"> 
	<legend><b>Question 24</b></legend> 
	<legend><b>What is the national tree of Argentina?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q24" value="x">Ceibo</label><br/> 
	<label><input type="radio" name="q24" value="a">Rose</label><br/> 
	<label><input type="radio" name="q24" value="b">Astrantia</label><br/>  
	<label><input type="radio" name="q24" value="c">Aconitum</label>
	</fieldset>
	<fieldset id="q25"> 
	<legend><b>Question 25</b></legend> 
	<legend><b>What is the national flower of Armenia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Marshmallow plant</label><br/> 
	<label><input type="radio" name="q25" value="a">Begonia</label><br/> 
	<label><input type="radio" name="q25" value="b">Buttercup</label><br/>  
	<label><input type="radio" name="q25" value="c">Carnation</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>What is the national flower of Azerbaijan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">Clarkia</label><br/> 
	<label><input type="radio" name="q26" value="b">Calla Lily</label><br/> 
	<label><input type="radio" name="q26" value="x">Khari-bulbul</label><br/>  
	<label><input type="radio" name="q26" value="c">Bellflower</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>Yellow Elder is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Bulgeria</label><br/> 
	<label><input type="radio" name="q27" value="b">Belgium</label><br/> 
	<label><input type="radio" name="q27" value="x">Bahamas</label><br/>  
	<label><input type="radio" name="q27" value="c">Belize</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What is the national flower of Balearic Islands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Astilbe</label><br/> 
	<label><input type="radio" name="q28" value="x">Carnation</label><br/> 
	<label><input type="radio" name="q28" value="b">Lilac</label><br/>  
	<label><input type="radio" name="q28" value="c">Lupin</label>
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
	<legend><b>What is the national flower of Barbados?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Pansy</label><br/> 
	<label><input type="radio" name="q30" value="x">Pride of Barbados</label><br/> 
	<label><input type="radio" name="q30" value="b">Forsythia</label><br/>  
	<label><input type="radio" name="q30" value="c">Fuschia</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>What is the national flower of Belarus?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">Floss</label><br/> 
	<label><input type="radio" name="q31" value="b">Foxglove</label><br/> 
	<label><input type="radio" name="q31" value="x">Flax</label><br/>  
	<label><input type="radio" name="q31" value="c">Freesia</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>What is the national flower of Bermuda?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Blue Star Flower</label><br/> 
	<label><input type="radio" name="q32" value="b">Bluebell</label><br/> 
	<label><input type="radio" name="q32" value="c">Buddleja</label><br/>  
	<label><input type="radio" name="q32" value="x">Bermudiana</label>
	</fieldset>
	<fieldset id="q33"> 
	<legend><b>Question 33</b></legend> 
	<legend><b>What is the national flower of Bhutan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q33" value="x">Blue poppy</label><br/> 
	<label><input type="radio" name="q33" value="a">Rondeletia</label><br/> 
	<label><input type="radio" name="q33" value="b">Scilla</label><br/>  
	<label><input type="radio" name="q33" value="c">Snowflake</label>
	</fieldset>
	<fieldset id="q34"> 
	<legend><b>Question 34</b></legend> 
	<legend><b>Thyme is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">Geneva</label><br/> 
	<label><input type="radio" name="q34" value="b">Norway</label><br/> 
	<label><input type="radio" name="q34" value="x">Bohemia</label><br/>  
	<label><input type="radio" name="q34" value="c">Netherland</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>Kantuta is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Belarus</label><br/> 
	<label><input type="radio" name="q35" value="b">Kuwait</label><br/> 
	<label><input type="radio" name="q35" value="c">Mexico</label><br/>  
	<label><input type="radio" name="q35" value="x">Bolivia</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>What is the national flower of British Columbia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Pacific Dogwood</label><br/> 
	<label><input type="radio" name="q36" value="a">Eustoma</label><br/> 
	<label><input type="radio" name="q36" value="b">Celosia</label><br/>  
	<label><input type="radio" name="q36" value="c">Echium</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>What is the national flower of Cayman Islands?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Wild Violet</label><br/> 
	<label><input type="radio" name="q37" value="c">Winter Aconite</label><br/> 
	<label><input type="radio" name="q37" value="b">Woolly Violet</label><br/>  
	<label><input type="radio" name="q37" value="x">Wild Banana Orchid</label>
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
	<legend><b>christmas Orchid is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Colombia</label><br/> 
	<label><input type="radio" name="q39" value="a">Greenland</label><br/> 
	<label><input type="radio" name="q39" value="b">England</label><br/>  
	<label><input type="radio" name="q39" value="c">Indonesia</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>What is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">Clarkia</label><br/> 
	<label><input type="radio" name="q40" value="b">Erica</label><br/> 
	<label><input type="radio" name="q40" value="x">Guaria Morada</label><br/>  
	<label><input type="radio" name="q40" value="c">Freesia</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>Iris Croatica is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">Croatia</label><br/> 
	<label><input type="radio" name="q41" value="a">Paraguay</label><br/> 
	<label><input type="radio" name="q41" value="b">Thailand</label><br/>  
	<label><input type="radio" name="q41" value="c">Romania</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>What is the national flower of Cuba?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Tea Rose</label><br/> 
	<label><input type="radio" name="q42" value="x">White Mariposa</label><br/> 
	<label><input type="radio" name="q42" value="b">Tiger Lily</label><br/>  
	<label><input type="radio" name="q42" value="c">Zenobia</label>
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
	<legend><b>Marguerite Daisy is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Malaysia</label><br/> 
	<label><input type="radio" name="q44" value="b">India</label><br/> 
	<label><input type="radio" name="q44" value="c">Spain</label><br/>  
	<label><input type="radio" name="q44" value="x">Denmark</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>What is the national flower of Ecuador?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Rose</label><br/> 
	<label><input type="radio" name="q45" value="a">Gaura</label><br/> 
	<label><input type="radio" name="q45" value="b">Ice Plant</label><br/>  
	<label><input type="radio" name="q45" value="c">Marigold</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>Lotus is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">Tokyo</label><br/> 
	<label><input type="radio" name="q46" value="b">Panama</label><br/> 
	<label><input type="radio" name="q46" value="x">Egypt</label><br/>  
	<label><input type="radio" name="q46" value="c">Siberia</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>What is the national flower of Estonia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Mayflower</label><br/> 
	<label><input type="radio" name="q47" value="x">Corn flower</label><br/> 
	<label><input type="radio" name="q47" value="b">Moonflower</label><br/>  
	<label><input type="radio" name="q47" value="c">Bellflower</label>
	</fieldset>
	<fieldset id="q48"> 
	<legend><b>Question 48</b></legend> 
	<legend><b>Calla Lily is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q48" value="x">Ethiopia</label><br/> 
	<label><input type="radio" name="q48" value="a">England</label><br/> 
	<label><input type="radio" name="q48" value="b">Ireland</label><br/>  
	<label><input type="radio" name="q48" value="c">Estonia</label>
	</fieldset>
	<fieldset id="q49"> 
	<legend><b>Question 49</b></legend> 
	<legend><b>What is the national flower of French Polynesia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">Ursinia</label><br/> 
	<label><input type="radio" name="q49" value="b">Virginia Creeper</label><br/> 
	<label><input type="radio" name="q49" value="x">Gardenia taitenis</label><br/>  
	<label><input type="radio" name="q49" value="c">Quince</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>Lily of the valley is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Sweden</label><br/> 
	<label><input type="radio" name="q50" value="x">Finland</label><br/> 
	<label><input type="radio" name="q50" value="b">UK</label><br/>  
	<label><input type="radio" name="q50" value="c">France</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>What is the national flower of Greece?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">Bear's Breech</label><br/> 
	<label><input type="radio" name="q51" value="a">Amaranthus</label><br/> 
	<label><input type="radio" name="q51" value="b">Bush Morning Glory</label><br/>  
	<label><input type="radio" name="q51" value="c">Aconitum</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>Willow Herb is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Greece</label><br/> 
	<label><input type="radio" name="q52" value="b">Niberia</label><br/> 
	<label><input type="radio" name="q52" value="c">Guinea</label><br/>  
	<label><input type="radio" name="q52" value="x">Greenland</label>
	</fieldset>
	<fieldset id="q53"> 
	<legend><b>Question 53</b></legend> 
	<legend><b>What is the national flower of Guam?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q53" value="a">Primula</label><br/> 
	<label><input type="radio" name="q53" value="b">Nymphea</label><br/> 
	<label><input type="radio" name="q53" value="x">Bougainvillea</label><br/>  
	<label><input type="radio" name="q53" value="c">Nigella</label>
	</fieldset>
	<fieldset id="q54"> 
	<legend><b>Question 54</b></legend> 
	<legend><b>White Nun Orchid is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Malta</label><br/> 
	<label><input type="radio" name="q54" value="x">Guatemala</label><br/> 
	<label><input type="radio" name="q54" value="b">Maldives</label><br/>  
	<label><input type="radio" name="q54" value="c">Iceland</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>What is the national flower of Guyana?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Victoria amazonica</label><br/> 
	<label><input type="radio" name="q55" value="a">Calla Lily</label><br/> 
	<label><input type="radio" name="q55" value="b">Canna Lily</label><br/>  
	<label><input type="radio" name="q55" value="c">Lily of the Valley</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>What is the national flower of Hong Kong?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Xylosma</label><br/> 
	<label><input type="radio" name="q56" value="b">Yarrow</label><br/> 
	<label><input type="radio" name="q56" value="c">Zenobia</label><br/>  
	<label><input type="radio" name="q56" value="x">Bauhinia blakeana</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>Mountain Avens is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Switzerland</label><br/> 
	<label><input type="radio" name="q57" value="x">Iceland</label><br/> 
	<label><input type="radio" name="q57" value="b">France</label><br/>  
	<label><input type="radio" name="q57" value="c">Spain</label>
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
	<legend><b>What is the national flower of Ireland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Rudbeckia</label><br/> 
	<label><input type="radio" name="q59" value="b">Balloon Flower</label><br/> 
	<label><input type="radio" name="q59" value="x">Shamrock</label><br/>  
	<label><input type="radio" name="q59" value="c">Blazing Star</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>What is the national flower of Israel?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Buttercup</label><br/> 
	<label><input type="radio" name="q60" value="x">Anemone coronaria</label><br/> 
	<label><input type="radio" name="q60" value="b">Heliotrope</label><br/>  
	<label><input type="radio" name="q60" value="c">Hosta</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>Lignum Vitae is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Guatamala</label><br/> 
	<label><input type="radio" name="q61" value="b">Jordan</label><br/> 
	<label><input type="radio" name="q61" value="c">Libya</label><br/>  
	<label><input type="radio" name="q61" value="x">Jamaica</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>What is the national flower of Jordan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Black Iris</label><br/> 
	<label><input type="radio" name="q62" value="a">Iberis</label><br/> 
	<label><input type="radio" name="q62" value="b">Ixora</label><br/>  
	<label><input type="radio" name="q62" value="c">Ice Plant</label>
	</fieldset>
	<fieldset id="q63"> 
	<legend><b>Question 63</b></legend> 
	<legend><b>Champa Flower is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q63" value="a">Liberia</label><br/> 
	<label><input type="radio" name="q63" value="b">Mexico</label><br/> 
	<label><input type="radio" name="q63" value="c">Slovakia</label><br/>  
	<label><input type="radio" name="q63" value="x">Laos</label>
	</fieldset>
	<fieldset id="q64"> 
	<legend><b>Question 64</b></legend> 
	<legend><b>What is the flower is the national flower of Kuwait?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Lavatera</label><br/> 
	<label><input type="radio" name="q64" value="b">Nepeta</label><br/> 
	<label><input type="radio" name="q64" value="c">Nolana</label><br/>  
	<label><input type="radio" name="q64" value="x">Arfaj</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>What is the national flower of Latvia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Oriental Poppy</label><br/> 
	<label><input type="radio" name="q65" value="x">Daisy</label><br/> 
	<label><input type="radio" name="q65" value="b">Oyster Plant</label><br/>  
	<label><input type="radio" name="q65" value="c">Orchid</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>What is the national flower of Lebanon?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Lantana</label><br/> 
	<label><input type="radio" name="q66" value="b">Lily</label><br/> 
	<label><input type="radio" name="q66" value="x">Cyclamen libanoticum</label><br/>  
	<label><input type="radio" name="q66" value="c">Lotus</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What is the national flower of Libya?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Pomegranate blossom</label><br/> 
	<label><input type="radio" name="q67" value="a">Passion Flower</label><br/> 
	<label><input type="radio" name="q67" value="b">Purple Coneflower</label><br/>  
	<label><input type="radio" name="q67" value="c">Plume Celosia</label>
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
	<legend><b>What is the national flower of Maldives?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">Red Rose</label><br/> 
	<label><input type="radio" name="q69" value="b">Yellow Rose</label><br/> 
	<label><input type="radio" name="q69" value="x">Pink Rose</label><br/>  
	<label><input type="radio" name="q69" value="c">Rose of Sharon</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>What is the national flower of Malta?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Violet</label><br/> 
	<label><input type="radio" name="q70" value="x">Cheirolophus crassifolius</label><br/> 
	<label><input type="radio" name="q70" value="b">Hypericum</label><br/>  
	<label><input type="radio" name="q70" value="c">Hebe</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>What is the national flower of Moldova?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Meconopsis</label><br/> 
	<label><input type="radio" name="q71" value="x">Basil</label><br/> 
	<label><input type="radio" name="q71" value="b">Monk's Hood</label><br/>  
	<label><input type="radio" name="q71" value="c">Morning Glory</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>Kowhai is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">New Zealand</label><br/> 
	<label><input type="radio" name="q72" value="a">South Korea</label><br/> 
	<label><input type="radio" name="q72" value="b">South Africa</label><br/>  
	<label><input type="radio" name="q72" value="c">Netherland</label>
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
	<legend><b>What is the national flower of Peru?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Maltese Cross</label><br/> 
	<label><input type="radio" name="q74" value="b">Forsythia</label><br/> 
	<label><input type="radio" name="q74" value="c">Fuschia</label><br/>  
	<label><input type="radio" name="q74" value="x">Cantua buxifolia</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>What is the national flower of Philippines?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Sampaguita</label><br/> 
	<label><input type="radio" name="q75" value="a">Oriental Poppy</label><br/> 
	<label><input type="radio" name="q75" value="b">Sedum</label><br/>  
	<label><input type="radio" name="q75" value="c">Snapdragon</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Lavender is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Poland</label><br/> 
	<label><input type="radio" name="q76" value="b">Sweden</label><br/> 
	<label><input type="radio" name="q76" value="c">Siberia</label><br/>  
	<label><input type="radio" name="q76" value="x">Portugal</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>What is the national flower of Puerto Rico?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">Solidago</label><br/> 
	<label><input type="radio" name="q77" value="x">Flor de Maga's flower</label><br/> 
	<label><input type="radio" name="q77" value="b">Tithonia</label><br/>  
	<label><input type="radio" name="q77" value="c">Tropaeolum</label>
	</fieldset>
	<fieldset id="q78"> 
	<legend><b>Question 78</b></legend> 
	<legend><b>Common Sagebrush is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q78" value="a">Moracco</label><br/> 
	<label><input type="radio" name="q78" value="b">Latvia</label><br/> 
	<label><input type="radio" name="q78" value="c">Syria</label><br/>  
	<label><input type="radio" name="q78" value="x">Republic of Molossia</label>
	</fieldset>
	<fieldset id="q79"> 
	<legend><b>Question 79</b></legend> 
	<legend><b>What is the national flower of Romania?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Tiger Flower</label><br/> 
	<label><input type="radio" name="q79" value="b">Lobelia</label><br/> 
	<label><input type="radio" name="q79" value="x">Romanian Peony</label><br/>  
	<label><input type="radio" name="q79" value="c">Lupin</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>Cyclamen is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Gabon</label><br/> 
	<label><input type="radio" name="q80" value="b">San Marino</label><br/> 
	<label><input type="radio" name="q80" value="c">Mangolia</label><br/>  
	<label><input type="radio" name="q80" value="x">Cyprus</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>What is the national flower of Scotland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Thistle</label><br/> 
	<label><input type="radio" name="q81" value="a">Verbena</label><br/> 
	<label><input type="radio" name="q81" value="b">Wallflower</label><br/>  
	<label><input type="radio" name="q81" value="c">Wisteria</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>Tropicbird Orchid is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">Russia</label><br/> 
	<label><input type="radio" name="q82" value="b">Cambodia</label><br/> 
	<label><input type="radio" name="q82" value="x">Seychelles</label><br/>  
	<label><input type="radio" name="q82" value="c">Bahrain</label>
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
	<legend><b>Vanda Miss Joaquim Orchid is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">Rwanda</label><br/> 
	<label><input type="radio" name="q84" value="x">Singapore</label><br/> 
	<label><input type="radio" name="q84" value="b">Vietnam</label><br/>  
	<label><input type="radio" name="q84" value="c">Philippines</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>What is the national flower of Slovakia?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Rose</label><br/> 
	<label><input type="radio" name="q85" value="a">Jasmine</label><br/> 
	<label><input type="radio" name="q85" value="b">Lotus</label><br/>  
	<label><input type="radio" name="q85" value="c">Lily</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>Nil Mahanel Water Lily is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">India</label><br/> 
	<label><input type="radio" name="q86" value="b">Pakistan</label><br/> 
	<label><input type="radio" name="q86" value="x">Sri Lanka</label><br/>  
	<label><input type="radio" name="q86" value="c">Bangladesh</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>What is the national flower of South Africa?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">Muscari</label><br/> 
	<label><input type="radio" name="q87" value="c">Linaria</label><br/> 
	<label><input type="radio" name="q87" value="x">King protea</label><br/>  
	<label><input type="radio" name="q87" value="b">Lunario</label>
	</fieldset>
	<fieldset id="q88"> 
	<legend><b>Question 88</b></legend> 
	<legend><b>What is the national flower of Syria?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q88" value="a">Celosia</label><br/> 
	<label><input type="radio" name="q88" value="b">Gladiolus</label><br/> 
	<label><input type="radio" name="q88" value="c">Goldenrod</label><br/>  
	<label><input type="radio" name="q88" value="x">Jasmine</label>
	</fieldset>
	<fieldset id="q89"> 
	<legend><b>Question 89</b></legend> 
	<legend><b>What is the national flower of Thailand?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Gerbera</label><br/> 
	<label><input type="radio" name="q89" value="b">Kalmia</label><br/> 
	<label><input type="radio" name="q89" value="c">Gaillardia</label><br/>  
	<label><input type="radio" name="q89" value="x">Golden shower flower</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>Chaconia is the national flower of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">Uzbekistan</label><br/> 
	<label><input type="radio" name="q90" value="b">Saint Lucia</label><br/> 
	<label><input type="radio" name="q90" value="x">Trinidad and Tobago</label><br/>  
	<label><input type="radio" name="q90" value="c">Cook Islands</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>What is the national flower of Tonga?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">Jamesia americana</label><br/> 
	<label><input type="radio" name="q91" value="x">Heilala</label><br/> 
	<label><input type="radio" name="q91" value="b">Kolkwitzia</label><br/>  
	<label><input type="radio" name="q91" value="c">Narcissus</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>What is the national flower of Turkmenistan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Red rose</label><br/> 
	<label><input type="radio" name="q92" value="a">Helenium</label><br/> 
	<label><input type="radio" name="q92" value="b">Hydrangea</label><br/>  
	<label><input type="radio" name="q92" value="c">Red rose</label>
	</fieldset>
	<fieldset id="q93"> 
	<legend><b>Question 93</b></legend> 
	<legend><b>What is the national flower of Ukraine?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q93" value="x">Sunflower</label><br/> 
	<label><input type="radio" name="q93" value="a">Flannel Flower</label><br/> 
	<label><input type="radio" name="q93" value="b">Astrantia</label><br/>  
	<label><input type="radio" name="q93" value="c">Aster</label>
	</fieldset>
	<fieldset id="q94"> 
	<legend><b>Question 94</b></legend> 
	<legend><b>What is the national flower of Uruguay?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Aquilegia</label><br/> 
	<label><input type="radio" name="q94" value="x">Ceibo</label><br/> 
	<label><input type="radio" name="q94" value="b">Aubreita deltoidea</label><br/>  
	<label><input type="radio" name="q94" value="c">Bee Balm Flower</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>What is the national flower of Uzbekistan?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Black-Eyed Susan</label><br/> 
	<label><input type="radio" name="q95" value="b">Flannel Flower</label><br/> 
	<label><input type="radio" name="q95" value="x">Cotton Flower</label><br/>  
	<label><input type="radio" name="q95" value="c">Sunflower</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>What is the national flower of Zimbabwe?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Rain Lily</label><br/> 
	<label><input type="radio" name="q96" value="b">Kaffir Lily</label><br/> 
	<label><input type="radio" name="q96" value="x">Flame Lily</label><br/>  
	<label><input type="radio" name="q96" value="c">Kolkwitzia</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>What is the national tree of the United States of America?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Slash pine</label><br/> 
	<label><input type="radio" name="q97" value="x">Oak</label><br/> 
	<label><input type="radio" name="q97" value="b">Sweetgum</label><br/>  
	<label><input type="radio" name="q97" value="c">Hackberry</label>
	</fieldset>
	<fieldset id="q98"> 
	<legend><b>Question 98</b></legend> 
	<legend><b>What is the national tree of China?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q98" value="a">Chinese Elm</label><br/> 
	<label><input type="radio" name="q98" value="b">Persian silk tree</label><br/> 
	<label><input type="radio" name="q98" value="x">Ginkgo</label><br/>  
	<label><input type="radio" name="q98" value="c">Empress tree</label>
	</fieldset>
	<fieldset id="q99"> 
	<legend><b>Question 99</b></legend> 
	<legend><b>Cherry Blossom is the national tree of which country?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q99" value="a">Kuwait</label><br/> 
	<label><input type="radio" name="q99" value="b">Turkey</label><br/> 
	<label><input type="radio" name="q99" value="c">Bhutan</label><br/>  
	<label><input type="radio" name="q99" value="x">Japan</label>
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
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>