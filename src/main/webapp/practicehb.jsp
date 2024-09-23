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
		document.getElementById("score").innerHTML = 'Total Questions: 97'+'<br/>Correct: '+ right +'<br/>Incorrect: ' + wrong +'<br/>Percent Correct: ' + pcnt +'%';
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
	<legend><b>What is the smallest bone in the body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q1" value="a">Patella</label><br/> 
	<label><input type="radio" name="q1" value="b">Thigh</label><br/> 
	<label><input type="radio" name="q1" value="c">Teeny</label><br/>  
	<label><input type="radio" name="q1" value="x">Stapes</label>
	</fieldset>
	<fieldset id="q2"> 
	<legend><b>Question 2</b></legend> 
	<legend><b>What is the largest part of the human brain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q2" value="a">Cerebellum</label><br/> 
	<label><input type="radio" name="q2" value="x">Cerebrum</label><br/> 
	<label><input type="radio" name="q2" value="b">Brainstem</label><br/>  
	<label><input type="radio" name="q2" value="c">Thalamus</label>
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
	<legend><b>What is the largest organ in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q4" value="a">Stomach</label><br/> 
	<label><input type="radio" name="q4" value="b">Liver</label><br/> 
	<label><input type="radio" name="q4" value="x">Skin</label><br/>  
	<label><input type="radio" name="q4" value="c">None of these</label>
	</fieldset>
	<fieldset id="q5"> 
	<legend><b>Question 5</b></legend> 
	<legend><b>How much of the volume of urine is produced in an adult human every 24 hours?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q5" value="x">800-2000 ml</label><br/> 
	<label><input type="radio" name="q5" value="a">800-900 ml</label><br/> 
	<label><input type="radio" name="q5" value="b">1000-2000 ml</label><br/>  
	<label><input type="radio" name="q5" value="c">900-1000 ml</label>
	</fieldset>
	<fieldset id="q6"> 
	<legend><b>Question 6</b></legend> 
	<legend><b>In which part of an eye a pigment is present which is responsible for brown, blue or black eyes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q6" value="a">Cornea</label><br/> 
	<label><input type="radio" name="q6" value="x">Iris</label><br/> 
	<label><input type="radio" name="q6" value="b">Choroid</label><br/>  
	<label><input type="radio" name="q6" value="c">Vitreous Body</label>
	</fieldset>
	<fieldset id="q7"> 
	<legend><b>Question 7</b></legend> 
	<legend><b>Name the gland which controls blood pressure?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q7" value="a">Thalamus Gland</label><br/> 
	<label><input type="radio" name="q7" value="b">Thyroid Gland</label><br/> 
	<label><input type="radio" name="q7" value="x">Adrenal Gland</label><br/>  
	<label><input type="radio" name="q7" value="c">Pancreas Gland</label>
	</fieldset>
	<fieldset id="q8"> 
	<legend><b>Question 8</b></legend> 
	<legend><b>In which organ of the human body are the lymphocytes cells formed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q8" value="a">Liver</label><br/> 
	<label><input type="radio" name="q8" value="b">Pancreas</label><br/> 
	<label><input type="radio" name="q8" value="c">Spleen</label><br/>  
	<label><input type="radio" name="q8" value="x">Thymus and Bone Marrow</label>
	</fieldset>
	<fieldset id="q9"> 
	<legend><b>Question 9</b></legend> 
	<legend><b>A human disorders cretinism is caused due to the under secretion of ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q9" value="a">Adrenalin hormone</label><br/> 
	<label><input type="radio" name="q9" value="b">Cortisone hormone</label><br/> 
	<label><input type="radio" name="q9" value="x">Thyroid hormone</label><br/>  
	<label><input type="radio" name="q9" value="c">Glucagon hormone</label>
	</fieldset>
	<fieldset id="q10"> 
	<legend><b>Question 10</b></legend> 
	<legend><b>What percentage of water is in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q10" value="a">50.00%</label><br/> 
	<label><input type="radio" name="q10" value="x">60.00%</label><br/> 
	<label><input type="radio" name="q10" value="b">70.00%</label><br/>  
	<label><input type="radio" name="q10" value="c">80.00%</label>
	</fieldset>
	<fieldset id="q11"> 
	<legend><b>Question 11</b></legend> 
	<legend><b>How many lungs does the human body have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q11" value="x">Two</label><br/> 
	<label><input type="radio" name="q11" value="a">Four</label><br/> 
	<label><input type="radio" name="q11" value="b">One</label><br/>  
	<label><input type="radio" name="q11" value="c">Three</label>
	</fieldset>
	<fieldset id="q12"> 
	<legend><b>Question 12</b></legend> 
	<legend><b>Where is the longest bone in the human body located?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q12" value="x">Thigh</label><br/> 
	<label><input type="radio" name="q12" value="a">Leg</label><br/> 
	<label><input type="radio" name="q12" value="b">Hand</label><br/>  
	<label><input type="radio" name="q12" value="c">Lower leg</label>
	</fieldset>
	<fieldset id="q13"> 
	<legend><b>Question 13</b></legend> 
	<legend><b>Cell or tissue death within a living body is called as _______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q13" value="a">Neutrophilia</label><br/> 
	<label><input type="radio" name="q13" value="b">Nephrosis</label><br/> 
	<label><input type="radio" name="q13" value="c">Neoplasia</label><br/>  
	<label><input type="radio" name="q13" value="x">Necrosis</label>
	</fieldset>
	<fieldset id="q14"> 
	<legend><b>Question 14</b></legend> 
	<legend><b>When we eat something we like, our mouth waters. This is actually not water but fluid secreted from?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q14" value="a">Nasal Glands</label><br/> 
	<label><input type="radio" name="q14" value="x">Salivary Glands</label><br/> 
	<label><input type="radio" name="q14" value="b">Oval Epithelium</label><br/>  
	<label><input type="radio" name="q14" value="c">Tongue</label>
	</fieldset>
	<fieldset id="q15"> 
	<legend><b>Question 15</b></legend> 
	<legend><b>How many teeth does a normal adult human have?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q15" value="a">20</label><br/> 
	<label><input type="radio" name="q15" value="b">24</label><br/> 
	<label><input type="radio" name="q15" value="x">32</label><br/>  
	<label><input type="radio" name="q15" value="c">44</label>
	</fieldset>
	<fieldset id="q16"> 
	<legend><b>Question 16</b></legend> 
	<legend><b>What tissue connects muscles and bones?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q16" value="a">skin</label><br/> 
	<label><input type="radio" name="q16" value="b">Joints</label><br/> 
	<label><input type="radio" name="q16" value="x">Tendons</label><br/>  
	<label><input type="radio" name="q16" value="c">Cartilage</label>
	</fieldset>
	<fieldset id="q17"> 
	<legend><b>Question 17</b></legend> 
	<legend><b>What part of the body makes new blood?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q17" value="x">Bone Marrow</label><br/> 
	<label><input type="radio" name="q17" value="a">Heart</label><br/> 
	<label><input type="radio" name="q17" value="b">Liver</label><br/>  
	<label><input type="radio" name="q17" value="c">Chronic fatigue</label>
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
	<legend><b>Which is the contractile protein of a muscle?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q19" value="a">Tubulin</label><br/> 
	<label><input type="radio" name="q19" value="b">Collagen</label><br/> 
	<label><input type="radio" name="q19" value="c">Troponin</label><br/>  
	<label><input type="radio" name="q19" value="x">Mysoin</label>
	</fieldset>
	<fieldset id="q20"> 
	<legend><b>Question 20</b></legend> 
	<legend><b>Where does your small intestine start?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q20" value="a">Caecum</label><br/> 
	<label><input type="radio" name="q20" value="x">Duodenum</label><br/> 
	<label><input type="radio" name="q20" value="b">Jejunum</label><br/>  
	<label><input type="radio" name="q20" value="c">Ileum</label>
	</fieldset>
	<fieldset id="q21"> 
	<legend><b>Question 21</b></legend> 
	<legend><b>During the process of respiration in human beings, the exchange of gases takes place in ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q21" value="a">Bronchi</label><br/> 
	<label><input type="radio" name="q21" value="b">Bronchiole</label><br/> 
	<label><input type="radio" name="q21" value="c">Pleura</label><br/>  
	<label><input type="radio" name="q21" value="x">Alveoli</label>
	</fieldset>
	<fieldset id="q22"> 
	<legend><b>Question 22</b></legend> 
	<legend><b>How many parts is the heart divided into?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q22" value="a">8</label><br/> 
	<label><input type="radio" name="q22" value="b">2</label><br/> 
	<label><input type="radio" name="q22" value="x">4</label><br/>  
	<label><input type="radio" name="q22" value="c">5</label>
	</fieldset>
	<fieldset id="q23"> 
	<legend><b>Question 23</b></legend> 
	<legend><b>What is the shape of DNA called?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q23" value="a">Multiple helix</label><br/> 
	<label><input type="radio" name="q23" value="x">Double helix</label><br/> 
	<label><input type="radio" name="q23" value="b">Single helix</label><br/>  
	<label><input type="radio" name="q23" value="c">DNA</label>
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
	<legend><b>In human beings, the opening of the stomach into the small intestine is called ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q25" value="x">Pylorus</label><br/> 
	<label><input type="radio" name="q25" value="a">Caecum</label><br/> 
	<label><input type="radio" name="q25" value="b">Oesophagus</label><br/>  
	<label><input type="radio" name="q25" value="c">Ileum</label>
	</fieldset>
	<fieldset id="q26"> 
	<legend><b>Question 26</b></legend> 
	<legend><b>What is the average heart-beat in a human body per minute?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q26" value="a">72 to 100</label><br/> 
	<label><input type="radio" name="q26" value="b">80 to 100</label><br/> 
	<label><input type="radio" name="q26" value="x">60 to 100</label><br/>  
	<label><input type="radio" name="q26" value="c">75 to 100</label>
	</fieldset>
	<fieldset id="q27"> 
	<legend><b>Question 27</b></legend> 
	<legend><b>What is the main component of bones and teeth?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q27" value="a">Iron</label><br/> 
	<label><input type="radio" name="q27" value="b">Hydrogen</label><br/> 
	<label><input type="radio" name="q27" value="x">Calcium</label><br/>  
	<label><input type="radio" name="q27" value="c">Potassium</label>
	</fieldset>
	<fieldset id="q28"> 
	<legend><b>Question 28</b></legend> 
	<legend><b>What is the healthy vitamin that is function for eyes in human beings?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q28" value="a">Vitamin c</label><br/> 
	<label><input type="radio" name="q28" value="x">Vitamin A</label><br/> 
	<label><input type="radio" name="q28" value="b">Vitamin B</label><br/>  
	<label><input type="radio" name="q28" value="c">Vitamin D</label>
	</fieldset>
	<fieldset id="q29"> 
	<legend><b>Question 29</b></legend> 
	<legend><b>What is the main constituent of haemoglobin?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q29" value="a">Chlorine</label><br/> 
	<label><input type="radio" name="q29" value="x">Iron</label><br/> 
	<label><input type="radio" name="q29" value="b">Calcium</label><br/>  
	<label><input type="radio" name="q29" value="c">None of these</label>
	</fieldset>
	<fieldset id="q30"> 
	<legend><b>Question 30</b></legend> 
	<legend><b>What is the strongest muscle in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q30" value="a">Stapedius</label><br/> 
	<label><input type="radio" name="q30" value="x">Masseter</label><br/> 
	<label><input type="radio" name="q30" value="b">Sartorius muscle</label><br/>  
	<label><input type="radio" name="q30" value="c">Rectus</label>
	</fieldset>
	<fieldset id="q31"> 
	<legend><b>Question 31</b></legend> 
	<legend><b>What is the main function of kidney?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q31" value="a">To control blood pressure</label><br/> 
	<label><input type="radio" name="q31" value="b">To control body temperature</label><br/> 
	<label><input type="radio" name="q31" value="x">To transform the waste into urine</label><br/>  
	<label><input type="radio" name="q31" value="c">To help in digestion of food</label>
	</fieldset>
	<fieldset id="q32"> 
	<legend><b>Question 32</b></legend> 
	<legend><b>Which organ system includes the spleen?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q32" value="a">Reproductive system</label><br/> 
	<label><input type="radio" name="q32" value="b">Nervous system</label><br/> 
	<label><input type="radio" name="q32" value="c">Immune system</label><br/>  
	<label><input type="radio" name="q32" value="x">Lymphatic system</label>
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
	<legend><b>The appendix is normally located where in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q34" value="a">In the throat</label><br/> 
	<label><input type="radio" name="q34" value="b">In the lower left abdomen</label><br/> 
	<label><input type="radio" name="q34" value="x">In the lower right abdomen</label><br/>  
	<label><input type="radio" name="q34" value="c">In the chest cavity</label>
	</fieldset>
	<fieldset id="q35"> 
	<legend><b>Question 35</b></legend> 
	<legend><b>Where is the philtrum located</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q35" value="a">Between your thumb and forefinger</label><br/> 
	<label><input type="radio" name="q35" value="b">Between your eyebrow and eyelid</label><br/> 
	<label><input type="radio" name="q35" value="c">Between your shoulder blades</label><br/>  
	<label><input type="radio" name="q35" value="x">Midline groove in the upper lip</label>
	</fieldset>
	<fieldset id="q36"> 
	<legend><b>Question 36</b></legend> 
	<legend><b>What is the longest bone in the body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q36" value="x">Femur</label><br/> 
	<label><input type="radio" name="q36" value="a">Tibia</label><br/> 
	<label><input type="radio" name="q36" value="b">Fibula</label><br/>  
	<label><input type="radio" name="q36" value="c">Humerus</label>
	</fieldset>
	<fieldset id="q37"> 
	<legend><b>Question 37</b></legend> 
	<legend><b>Which lens is used for short sightedness?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q37" value="a">Convex lens</label><br/> 
	<label><input type="radio" name="q37" value="c">Convex-concave lens</label><br/> 
	<label><input type="radio" name="q37" value="b">Concave-convex lens</label><br/>  
	<label><input type="radio" name="q37" value="x">Concave lens</label>
	</fieldset>
	<fieldset id="q38"> 
	<legend><b>Question 38</b></legend> 
	<legend><b>Where does the Food is normally digested?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q38" value="a">Liver</label><br/> 
	<label><input type="radio" name="q38" value="x">Small intestine</label><br/> 
	<label><input type="radio" name="q38" value="b">Stomach</label><br/>  
	<label><input type="radio" name="q38" value="c">Large intestine</label>
	</fieldset>
	<fieldset id="q39"> 
	<legend><b>Question 39</b></legend> 
	<legend><b>How enzymes work in our body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q39" value="x">Digestion of food</label><br/> 
	<label><input type="radio" name="q39" value="a">Respiration</label><br/> 
	<label><input type="radio" name="q39" value="b">Immune system</label><br/>  
	<label><input type="radio" name="q39" value="c">Reproduction</label>
	</fieldset>
	<fieldset id="q40"> 
	<legend><b>Question 40</b></legend> 
	<legend><b>How many chromosomes does each cell of the human body contains?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q40" value="a">44 chromosomes</label><br/> 
	<label><input type="radio" name="q40" value="b">48 chromosomes</label><br/> 
	<label><input type="radio" name="q40" value="x">46 chromosomes</label><br/>  
	<label><input type="radio" name="q40" value="c">23 chromosome</label>
	</fieldset>
	<fieldset id="q41"> 
	<legend><b>Question 41</b></legend> 
	<legend><b>Why do humans need insulin?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q41" value="x">To control blood sugar</label><br/> 
	<label><input type="radio" name="q41" value="a">Liver pain</label><br/> 
	<label><input type="radio" name="q41" value="b">Stomach ache</label><br/>  
	<label><input type="radio" name="q41" value="c">To contro body pain</label>
	</fieldset>
	<fieldset id="q42"> 
	<legend><b>Question 42</b></legend> 
	<legend><b>ECG is used for the diagnosis of ailments of ___________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q42" value="a">Brain</label><br/> 
	<label><input type="radio" name="q42" value="x">Heart</label><br/> 
	<label><input type="radio" name="q42" value="b">Kidneys</label><br/>  
	<label><input type="radio" name="q42" value="c">Lungs</label>
	</fieldset>
	<fieldset id="q43"> 
	<legend><b>Question 43</b></legend> 
	<legend><b>Which body system makes hormones that regulate other body systems?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q43" value="x">Endocrine system</label><br/> 
	<label><input type="radio" name="q43" value="a">Integumentary system</label><br/> 
	<label><input type="radio" name="q43" value="b">Muscular system</label><br/>  
	<label><input type="radio" name="q43" value="c">Immune system</label>
	</fieldset>
	<fieldset id="q44"> 
	<legend><b>Question 44</b></legend> 
	<legend><b>In which part of the human body do we find the islet of langerhans?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q44" value="a">Brain</label><br/> 
	<label><input type="radio" name="q44" value="b">Kidney</label><br/> 
	<label><input type="radio" name="q44" value="c">Liver</label><br/>  
	<label><input type="radio" name="q44" value="x">Pancreas</label>
	</fieldset>
	<fieldset id="q45"> 
	<legend><b>Question 45</b></legend> 
	<legend><b>Sweating during exercise indicates operation of which processes in the human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q45" value="x">Homeostasis</label><br/> 
	<label><input type="radio" name="q45" value="a">Enthalpy</label><br/> 
	<label><input type="radio" name="q45" value="b">Phagocytosis</label><br/>  
	<label><input type="radio" name="q45" value="c">Osmoregulation</label>
	</fieldset>
	<fieldset id="q46"> 
	<legend><b>Question 46</b></legend> 
	<legend><b>Where is Pituitary gland is situated?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q46" value="a">The base of the heart</label><br/> 
	<label><input type="radio" name="q46" value="b">The neck</label><br/> 
	<label><input type="radio" name="q46" value="x">The base of the brain</label><br/>  
	<label><input type="radio" name="q46" value="c">The abdomen</label>
	</fieldset>
	<fieldset id="q47"> 
	<legend><b>Question 47</b></legend> 
	<legend><b>Who discovered the first human cell?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q47" value="a">Rudolf Virchow</label><br/> 
	<label><input type="radio" name="q47" value="x">Robert Hooke</label><br/> 
	<label><input type="radio" name="q47" value="b">Louis Pasteur</label><br/>  
	<label><input type="radio" name="q47" value="c">Matthias Jakob Schleiden</label>
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
	<legend><b>What is the blood volume of human body(in 70kg body)?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q49" value="a">6.4 liters</label><br/> 
	<label><input type="radio" name="q49" value="b">7.4 liters</label><br/> 
	<label><input type="radio" name="q49" value="x">5.5 liters</label><br/>  
	<label><input type="radio" name="q49" value="c">7.8 liters</label>
	</fieldset>
	<fieldset id="q50"> 
	<legend><b>Question 50</b></legend> 
	<legend><b>What is the normal B.P of Human being?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q50" value="a">Below 130/90 mm Hg</label><br/> 
	<label><input type="radio" name="q50" value="x">Below 120/80 mm Hg</label><br/> 
	<label><input type="radio" name="q50" value="b">Below 140/80 mm Hg</label><br/>  
	<label><input type="radio" name="q50" value="c">Below 140/90 mm Hg</label>
	</fieldset>
	<fieldset id="q51"> 
	<legend><b>Question 51</b></legend> 
	<legend><b>What is the number of R.B.C in Male?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q51" value="x">-4.7 to 6.1 million</label><br/> 
	<label><input type="radio" name="q51" value="a">5.5 to 6.0 million</label><br/> 
	<label><input type="radio" name="q51" value="b">6.5 to 7.0 million</label><br/>  
	<label><input type="radio" name="q51" value="c">7.5 to 8.0 million</label>
	</fieldset>
	<fieldset id="q52"> 
	<legend><b>Question 52</b></legend> 
	<legend><b>Death or mental retardation can takes place if accumulation happens in.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q52" value="a">Somatic cells</label><br/> 
	<label><input type="radio" name="q52" value="b">Sensory cells</label><br/> 
	<label><input type="radio" name="q52" value="c">Meristemetic cells</label><br/>  
	<label><input type="radio" name="q52" value="x">Brain cells</label>
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
	<legend><b>If you have blue eyes, which part of your eye is blue?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q54" value="a">Cornea</label><br/> 
	<label><input type="radio" name="q54" value="x">Iris</label><br/> 
	<label><input type="radio" name="q54" value="b">Pupil</label><br/>  
	<label><input type="radio" name="q54" value="c">Lens</label>
	</fieldset>
	<fieldset id="q55"> 
	<legend><b>Question 55</b></legend> 
	<legend><b>Which is the smallest bone in human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q55" value="x">Stapes</label><br/> 
	<label><input type="radio" name="q55" value="a">Phalanx</label><br/> 
	<label><input type="radio" name="q55" value="b">Femur</label><br/>  
	<label><input type="radio" name="q55" value="c">Carpal</label>
	</fieldset>
	<fieldset id="q56"> 
	<legend><b>Question 56</b></legend> 
	<legend><b>Which vitamin is provided by sunlight to the body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q56" value="a">Vitamin A</label><br/> 
	<label><input type="radio" name="q56" value="b">Vitamin B</label><br/> 
	<label><input type="radio" name="q56" value="c">Vitamin C</label><br/>  
	<label><input type="radio" name="q56" value="x">Vitamin D</label>
	</fieldset>
	<fieldset id="q57"> 
	<legend><b>Question 57</b></legend> 
	<legend><b>The top chambers of the heart are called the ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q57" value="a">Aorta</label><br/> 
	<label><input type="radio" name="q57" value="x">Atrium</label><br/> 
	<label><input type="radio" name="q57" value="b">Septum</label><br/>  
	<label><input type="radio" name="q57" value="c">Ventricle</label>
	</fieldset>
	<fieldset id="q58"> 
	<legend><b>Question 58</b></legend> 
	<legend><b>What are antibodies made of?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q58" value="x">Protein</label><br/> 
	<label><input type="radio" name="q58" value="a">RBC</label><br/> 
	<label><input type="radio" name="q58" value="b">Blood platelets</label><br/>  
	<label><input type="radio" name="q58" value="c">Cell membrane</label>
	</fieldset>
	<fieldset id="q59"> 
	<legend><b>Question 59</b></legend> 
	<legend><b>Which part of human brain is the regulating centre for swallowing and vomiting</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q59" value="a">Hypothalamus</label><br/> 
	<label><input type="radio" name="q59" value="b">Corpus callosum</label><br/> 
	<label><input type="radio" name="q59" value="x">Medulla oblongata</label><br/>  
	<label><input type="radio" name="q59" value="c">Cerebral cortax</label>
	</fieldset>
	<fieldset id="q60"> 
	<legend><b>Question 60</b></legend> 
	<legend><b>In the human body, the blood enters the aorta of the circulatory system from the ________</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q60" value="a">Left atrium</label><br/> 
	<label><input type="radio" name="q60" value="x">Left Ventricle</label><br/> 
	<label><input type="radio" name="q60" value="b">Right atrium</label><br/>  
	<label><input type="radio" name="q60" value="c">Right Ventricle</label>
	</fieldset>
	<fieldset id="q61"> 
	<legend><b>Question 61</b></legend> 
	<legend><b>Where are cardiac muscles located?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q61" value="a">Kidney</label><br/> 
	<label><input type="radio" name="q61" value="b">Lungs</label><br/> 
	<label><input type="radio" name="q61" value="c">Liver</label><br/>  
	<label><input type="radio" name="q61" value="x">Heart</label>
	</fieldset>
	<fieldset id="q62"> 
	<legend><b>Question 62</b></legend> 
	<legend><b>Which organ belongs to the Digestive system?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q62" value="x">Stomach</label><br/> 
	<label><input type="radio" name="q62" value="a">Thymus</label><br/> 
	<label><input type="radio" name="q62" value="b">Heart</label><br/>  
	<label><input type="radio" name="q62" value="c">Trachea</label>
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
	<legend><b>What part of the body controls balance?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q64" value="a">Intercostals Muscles</label><br/> 
	<label><input type="radio" name="q64" value="b">Pelvic Girdle</label><br/> 
	<label><input type="radio" name="q64" value="c">Diaphragm</label><br/>  
	<label><input type="radio" name="q64" value="x">Cerebellum</label>
	</fieldset>
	<fieldset id="q65"> 
	<legend><b>Question 65</b></legend> 
	<legend><b>In which part of the human ear is amplification of sound done by 3 bones?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q65" value="a">Auditory nerve</label><br/> 
	<label><input type="radio" name="q65" value="x">Middle ear</label><br/> 
	<label><input type="radio" name="q65" value="b">Inner ear</label><br/>  
	<label><input type="radio" name="q65" value="c">Outer ear</label>
	</fieldset>
	<fieldset id="q66"> 
	<legend><b>Question 66</b></legend> 
	<legend><b>What does the protein hemoglobin carry in the blood?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q66" value="a">Carbon dioxide</label><br/> 
	<label><input type="radio" name="q66" value="b">Nitrogen</label><br/> 
	<label><input type="radio" name="q66" value="x">Oxygen</label><br/>  
	<label><input type="radio" name="q66" value="c">Ozone</label>
	</fieldset>
	<fieldset id="q67"> 
	<legend><b>Question 67</b></legend> 
	<legend><b>What is required for the normal function of the thyroid gland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q67" value="x">Iodine</label><br/> 
	<label><input type="radio" name="q67" value="a">Sodium</label><br/> 
	<label><input type="radio" name="q67" value="b">Calcium</label><br/>  
	<label><input type="radio" name="q67" value="c">Potassium</label>
	</fieldset>
	<fieldset id="q68"> 
	<legend><b>Question 68</b></legend> 
	<legend><b>Where is Bile stored?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q68" value="a">Mouth</label><br/> 
	<label><input type="radio" name="q68" value="b">Liver</label><br/> 
	<label><input type="radio" name="q68" value="x">Gall Bladder</label><br/>  
	<label><input type="radio" name="q68" value="c">Stomach</label>
	</fieldset>
	<fieldset id="q69"> 
	<legend><b>Question 69</b></legend> 
	<legend><b>What is the number of essential amino acids in man?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q69" value="a">15</label><br/> 
	<label><input type="radio" name="q69" value="b">20</label><br/> 
	<label><input type="radio" name="q69" value="x">9</label><br/>  
	<label><input type="radio" name="q69" value="c">40</label>
	</fieldset>
	<fieldset id="q70"> 
	<legend><b>Question 70</b></legend> 
	<legend><b>Which is the vestigial organ in human?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q70" value="a">Diaphram</label><br/> 
	<label><input type="radio" name="q70" value="x">Appendix</label><br/> 
	<label><input type="radio" name="q70" value="b">Centriole</label><br/>  
	<label><input type="radio" name="q70" value="c">Molar teeth</label>
	</fieldset>
	<fieldset id="q71"> 
	<legend><b>Question 71</b></legend> 
	<legend><b>Which organ have the capacity of regeneration?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q71" value="a">Spleen</label><br/> 
	<label><input type="radio" name="q71" value="x">Liver</label><br/> 
	<label><input type="radio" name="q71" value="b">Kidney</label><br/>  
	<label><input type="radio" name="q71" value="c">Brain</label>
	</fieldset>
	<fieldset id="q72"> 
	<legend><b>Question 72</b></legend> 
	<legend><b>What is the bone that protects the brain?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q72" value="x">Cranium</label><br/> 
	<label><input type="radio" name="q72" value="a">Tibia</label><br/> 
	<label><input type="radio" name="q72" value="b">Patella</label><br/>  
	<label><input type="radio" name="q72" value="c">Ribs</label>
	</fieldset>
	<fieldset id="q73"> 
	<legend><b>Question 73</b></legend> 
	<legend><b>Middle layer of skin is called ______</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q73" value="a">Epidermis</label><br/> 
	<label><input type="radio" name="q73" value="b">Protodermis</label><br/> 
	<label><input type="radio" name="q73" value="x">Dermis</label><br/>  
	<label><input type="radio" name="q73" value="c">None of these</label>
	</fieldset>
	<fieldset id="q74"> 
	<legend><b>Question 74</b></legend> 
	<legend><b>Which organism is responsible for sleeping sickness?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q74" value="a">Leishmania</label><br/> 
	<label><input type="radio" name="q74" value="b">Hellicobacter</label><br/> 
	<label><input type="radio" name="q74" value="c">Ascaris</label><br/>  
	<label><input type="radio" name="q74" value="x">Trypanosoma</label>
	</fieldset>
	<fieldset id="q75"> 
	<legend><b>Question 75</b></legend> 
	<legend><b>Which is the large blood vessel that carries blood away from the heart to the lungs?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q75" value="x">Pulmonary artery</label><br/> 
	<label><input type="radio" name="q75" value="a">Vein</label><br/> 
	<label><input type="radio" name="q75" value="b">Capillary</label><br/>  
	<label><input type="radio" name="q75" value="c">Nerve</label>
	</fieldset>
	<fieldset id="q76"> 
	<legend><b>Question 76</b></legend> 
	<legend><b>Which chemical is present in tooth enamel?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q76" value="a">Calcium Carbonate</label><br/> 
	<label><input type="radio" name="q76" value="b">Calcium Sulphate</label><br/> 
	<label><input type="radio" name="q76" value="c">Calcium Hydroxide</label><br/>  
	<label><input type="radio" name="q76" value="x">Calcium Phosphate</label>
	</fieldset>
	<fieldset id="q77"> 
	<legend><b>Question 77</b></legend> 
	<legend><b>How many taste buds do you have on your tongue?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q77" value="a">About 50,000</label><br/> 
	<label><input type="radio" name="q77" value="x">About 10,000</label><br/> 
	<label><input type="radio" name="q77" value="b">About 500,000</label><br/>  
	<label><input type="radio" name="q77" value="c">About 600,000</label>
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
	<legend><b>Insulin hormone is secreted by which organ?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q79" value="a">Kidney</label><br/> 
	<label><input type="radio" name="q79" value="b">Heart</label><br/> 
	<label><input type="radio" name="q79" value="x">Pancreas</label><br/>  
	<label><input type="radio" name="q79" value="c">Liver</label>
	</fieldset>
	<fieldset id="q80"> 
	<legend><b>Question 80</b></legend> 
	<legend><b>Arteries, Veins and Capillaries are the _________ in the circulatory system.</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q80" value="a">Tissues</label><br/> 
	<label><input type="radio" name="q80" value="b">Cells</label><br/> 
	<label><input type="radio" name="q80" value="c">Organs</label><br/>  
	<label><input type="radio" name="q80" value="x">Blood Vessels</label>
	</fieldset>
	<fieldset id="q81"> 
	<legend><b>Question 81</b></legend> 
	<legend><b>Where does the smooth muscles are likely to found in human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q81" value="x">Stomach</label><br/> 
	<label><input type="radio" name="q81" value="a">Muscles of legs</label><br/> 
	<label><input type="radio" name="q81" value="b">Muscles of arms</label><br/>  
	<label><input type="radio" name="q81" value="c">Heart</label>
	</fieldset>
	<fieldset id="q82"> 
	<legend><b>Question 82</b></legend> 
	<legend><b>What is the focal length of the lens for a normal human eye?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q82" value="a">5 cm</label><br/> 
	<label><input type="radio" name="q82" value="b">3 cm</label><br/> 
	<label><input type="radio" name="q82" value="x">2 cm</label><br/>  
	<label><input type="radio" name="q82" value="c">1 cm</label>
	</fieldset>
	<fieldset id="q83"> 
	<legend><b>Question 83</b></legend> 
	<legend><b>How do you fix bengin paroxysmal positional vertigo?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q83" value="a">Remains constant</label><br/> 
	<label><input type="radio" name="q83" value="x">Inner ear and canalith repositioning</label><br/> 
	<label><input type="radio" name="q83" value="b">Epley maneuver</label><br/>  
	<label><input type="radio" name="q83" value="c">Quick spins</label>
	</fieldset>
	<fieldset id="q84"> 
	<legend><b>Question 84</b></legend> 
	<legend><b>What is a full cancer screening?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q84" value="a">CT Scans</label><br/> 
	<label><input type="radio" name="q84" value="x">Imaging tests</label><br/> 
	<label><input type="radio" name="q84" value="b">Ultrasound</label><br/>  
	<label><input type="radio" name="q84" value="c">Mammograms</label>
	</fieldset>
	<fieldset id="q85"> 
	<legend><b>Question 85</b></legend> 
	<legend><b>What cells divide faster than any other cells in the body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q85" value="x">Basal cells</label><br/> 
	<label><input type="radio" name="q85" value="a">Epithelial cells</label><br/> 
	<label><input type="radio" name="q85" value="b">Nerve cells</label><br/>  
	<label><input type="radio" name="q85" value="c">Muscle cells</label>
	</fieldset>
	<fieldset id="q86"> 
	<legend><b>Question 86</b></legend> 
	<legend><b>Which cell is smallest cell in our body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q86" value="a">Red blood cells</label><br/> 
	<label><input type="radio" name="q86" value="b">Ovum</label><br/> 
	<label><input type="radio" name="q86" value="x">Sperm</label><br/>  
	<label><input type="radio" name="q86" value="c">Mycoplasmas</label>
	</fieldset>
	<fieldset id="q87"> 
	<legend><b>Question 87</b></legend> 
	<legend><b>How many pair of chromosomes are in human body?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q87" value="a">30</label><br/> 
	<label><input type="radio" name="q87" value="c">25</label><br/> 
	<label><input type="radio" name="q87" value="x">23</label><br/>  
	<label><input type="radio" name="q87" value="b">26</label>
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
	<legend><b>Where is the pharynx located?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q89" value="a">Foot</label><br/> 
	<label><input type="radio" name="q89" value="b">Arm</label><br/> 
	<label><input type="radio" name="q89" value="c">Leg</label><br/>  
	<label><input type="radio" name="q89" value="x">Throat</label>
	</fieldset>
	<fieldset id="q90"> 
	<legend><b>Question 90</b></legend> 
	<legend><b>What is the hearing range of human ear?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q90" value="a">20 Hz to 80 kHz</label><br/> 
	<label><input type="radio" name="q90" value="b">20 Hz to 90 kHz</label><br/> 
	<label><input type="radio" name="q90" value="x">20 Hz to 20 kHz</label><br/>  
	<label><input type="radio" name="q90" value="c">20 Hz to 100kHz</label>
	</fieldset>
	<fieldset id="q91"> 
	<legend><b>Question 91</b></legend> 
	<legend><b>How many cells are there in amoeba?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q91" value="a">12</label><br/> 
	<label><input type="radio" name="q91" value="x">1</label><br/> 
	<label><input type="radio" name="q91" value="b">8</label><br/>  
	<label><input type="radio" name="q91" value="c">6</label>
	</fieldset>
	<fieldset id="q92"> 
	<legend><b>Question 92</b></legend> 
	<legend><b>Where are red blood corpuscles formed?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q92" value="x">Red Bone Marrow</label><br/> 
	<label><input type="radio" name="q92" value="a">Heart</label><br/> 
	<label><input type="radio" name="q92" value="b">Lungs</label><br/>  
	<label><input type="radio" name="q92" value="c">Latissimus dorsi</label>
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
	<legend><b>Which hormones is produced by testes?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q94" value="a">Progesterone</label><br/> 
	<label><input type="radio" name="q94" value="x">Testosterone</label><br/> 
	<label><input type="radio" name="q94" value="b">Adrenaline</label><br/>  
	<label><input type="radio" name="q94" value="c">Vasopressin</label>
	</fieldset>
	<fieldset id="q95"> 
	<legend><b>Question 95</b></legend> 
	<legend><b>What is the largest solid internal organ?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q95" value="a">Lungs</label><br/> 
	<label><input type="radio" name="q95" value="b">Heart</label><br/> 
	<label><input type="radio" name="q95" value="x">Liver</label><br/>  
	<label><input type="radio" name="q95" value="c">Intestine</label>
	</fieldset>
	<fieldset id="q96"> 
	<legend><b>Question 96</b></legend> 
	<legend><b>What body system controls everything you do?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q96" value="a">Olfactory system</label><br/> 
	<label><input type="radio" name="q96" value="b">Respiratory system</label><br/> 
	<label><input type="radio" name="q96" value="x">Nervous system</label><br/>  
	<label><input type="radio" name="q96" value="c">Endocrine system</label>
	</fieldset>
	<fieldset id="q97"> 
	<legend><b>Question 97</b></legend> 
	<legend><b>In humans, oil is secreted in which gland?</b></legend> <!-- x = correct answer -->
	<label><input type="radio" name="q97" value="a">Oil gland</label><br/> 
	<label><input type="radio" name="q97" value="x">Sebaceous gland</label><br/> 
	<label><input type="radio" name="q97" value="b">Subcutaneous layer</label><br/>  
	<label><input type="radio" name="q97" value="c">None of these</label>
	</fieldset>
	</div><br>
	<input type="button" id="btn" value="Check Answers"/>
	<input type="button" id="btnclr" value="Clear"/>
	<button onclick="history.back()">Go Back</button>
	<h2 id="score"></h2>
	</body>    
	</html>