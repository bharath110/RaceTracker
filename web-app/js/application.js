//This is a manifest file that'll be compiled into application.js.

//Any JavaScript file within this directory can be referenced here using a relative path.

//You're free to add application-wide JavaScript to this file, but it's generally better 
//to create separate JavaScript files as needed.

//= require jquery
//= require_tree .
//= require_self


$('#createRace').hide();
$('#raceListDivId').hide();
$('#divcreateRace').hide();
$('.divrunnerCreate').hide();
$('.runnerListDivId').hide();
$('.ListDivId').hide();
$("#buttonShowrace").trigger("click");
function callColorMe(colorMe) {
	$('#' + colorMe).toggleClass('blue');
}

/*$( "#myform" ).on( "submit", function() {("form submitted ") });*/
if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$("#submitB").click(function chechStartDate() {
	var Form = document.editRaceForm;

	if (Form.startDate == null || Form.startDate == "") {
		console.log("Start Date can't be blank");
		return false;
	} else
		return true;

});
$("#divcreateRace").hide();

$("myform").on("submit", function(event) {
	event.preventDefault();
	console.log($(this).serialize());
});

$('#btncreateRace').on("click", function createRace() {

	$("#divcreateRace").show();
	$("#divShowRaceList").hide();

});

function callEditRace(id) {
	console.log("In edit");
	$.ajax({

		url : 'edit',
		data : {
			'id' : id
		},

		success : function(result) {
			console.log(result);
			// console.log(new Date(result.startDate));
			console.log(result.state);
			$("#id").val(result.id);
			$('#name').val(result.name);
			$('#raceCode').val(result.raceCode);
			console.log(result.startDate);
			var dFormat = new Date(result.startDate);
			console.log("dFormat--:" + dFormat);
			// var d=result.startDate.split('T');
			// console.log(d[0]);
			$('#startDate').val(result.startDate);
			$('#state').val(result.state);
			$('#distance').val(result.distance);
			$('#cost').val(result.cost);
			$('#maxRunners').val(result.maxRunners);
			$('#city').val(result.city);

			var modal = document.getElementById('myModal');

			$('#deleteMsg').hide();

			// When the user clicks the button, open the modal

			modal.style.display = "block";

			// When the user clicks on <span> (x), close the modal

			$("#close").on("click", function() {
				var modal = document.getElementById('myModal');
				modal.style.display = "none";
			});

		}

	});
}
function callUpdtaeRace(id) {
	$("#close").on("click", function() {
		modal.style.display = "none";
	});

}

function callDelete(id) {
	console.log("in delete");
	var txt;
	if (confirm("your trying to delete a race having Race Code:" + id
			+ " \nPlesae conform for deletion") == true) {

		var URL = "${createLink(controller:'Race',action:'')}";
		$.ajax({

			url : 'delete',
			data : {
				'id' : id
			},
			success : function(result) {
				if(result)
				{
					console.log("Delete :"+result);
					console.log("Selected race deleted");
					$("#buttonShowrace").trigger("click");
				}


			}

		})
	} 
}



function callCreateRace() {
	console.log("im in callCreateRace js fun");
	var returnMe = validateAndPost();
	if (!returnMe)
		return returnMe;
	var URL = "${createLink(controller:'Race',action:'createRace')}";
	$.ajax({

		url : URL,
		data : {
			'id' : id
		},
		success : function(result) {

			$("#divcreateRace").hide();

		}

	})

}

function callShowRaceList() {

	$('#divcreateRace').hide();

	$.ajax({

		url : "showListRace",
		success : function(result) {
			$('#raceListDivId').show();

		}

	})

}

function callShowRacecreate() {

	$('#raceListDivId').hide();
	document.getElementById("myForm").reset();
	$('#createRace').show();
	$('#afterRaceCreate').hide();
}

function callShowRaceList() {

	$('#raceListDivId').show();

	$('#createRace').hide();
	$('#afterRaceCreate').hide();
}
function callSubmitCreate() {

	$('#afterRaceCreate').show();
	$('#raceListDivId').hide();
	$('#createRace').hide();

}
$("#close").on("click", function() {
	var modal = document.getElementById('myModal');
	modal.style.display = "none";
});
function callregisterRunner() {

	$('.divrunnerCreate').show();
	$('.ListDivId').hide();
	$('.afterRunnerRegister').hide();
}
function callShowRunnerList() {

	$('.divrunnerCreate').hide();
	$('.afterRunnerRegister').hide();
	$('.ListDivId').show();

}
function callShowRunner() {
	$('.ListDivId').hide();
	$('.divrunnerCreate').hide();
	$('.afterRunnerRegister').show();

}
/*function callRegisterShow(){
		console.log("Calling reg page");
		$.ajax({

			url : "registerPageLoad",
		})

	}*/
function callRegisterShow(){
	$('#popupregisterRunner').show();
	$('#login').hide();
}
function callShowLogin(){
	$('#popupregisterRunner').hide();
	$('#login').show();
}

