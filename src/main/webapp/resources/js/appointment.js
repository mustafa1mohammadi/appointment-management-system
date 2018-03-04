/**
 * 
 */

$(document).ready(
		function() {

			//Setting Actions to buttons
			$('#newBtn').click(toggle);
			$('#search').click(search);

			
			/**
			 * To Toggle the Display and/or styles and classes.
			 */
			function toggle() {

				var status = $('#newDiv').css('display');
				if (status == 'none') {
					$('#newDiv').css('display', 'inline');
					$('#newBtn').html('Cancel');
					$('#newBtn').removeClass('btn btn-success').addClass(
							'btn btn-danger');

				} else {
					$('#newDiv').css('display', 'none');
					$('#newBtn').html('New');
					$('#newBtn').removeClass('btn btn-danger').addClass(
							'btn btn-success');
				}

			}
			
			
			/**
			 * For search button
			 */
			function search() {
				var searchQuery = $('#searchQuery').val();
				var contextRoot = "/" + window.location.pathname.split('/')[1];

				$.ajax({
					url : contextRoot+'/search?searchQeury='+searchQuery,
					type : 'GET',
					dataType : "json",
					contentType : 'application/json',
					success : function(response) {
						$('#table tbody').empty();
						var table = '';
						
						$(function(){
							$.each(response,function(i, item){
								table=  $('<tr>').append(
							            $('<td>').text(new Date(item.date).toLocaleDateString()),
							            $('<td>').text(new Date(item.date).toLocaleTimeString()),
							            $('<td>').text(item.description)).appendTo('#table');
								
							});
						});
					},
					//					
					error : function(errorObject) {
						console.log(errorObject);
					}
				});
			}

		});