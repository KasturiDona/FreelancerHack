var apiTest = function(){
	$.ajax({
		method : 'GET',
		dataType : 'json',
		// data : '{"jobs[]": [1,2,3]}',
		url: 'https://freelancer.com/api/users/0.1/users/8222390/?compact',
	    headers: {
	      'Freelancer-Developer-Auth-V1': '34; FLN3U493UOO0QW6G9Q101ET2CML5XAKC',
	      'Content-Type': 'application/json'
	    },
	    success : function(result){
	    	console.log(result)
	    }
	})
}


$(document).ready(function(){
	// console.log(gon.current_user)

	var baseURL = 'https://www.freelancer.com/'
	var localURl = 'localhost:3000/'
		$.ajaxSetup({
        headers: { 'Freelancer-Developer-Auth-V1': 34 + ';' + 'FLN3U493UOO0QW6G9Q101ET2CML5XAKC' }
    });

    $.ajax({
      method: "POST",
      url: baseURL + 'api/projects/0.1/projects/',
      contentType: "application/json",
      data: JSON.stringify({
      title: "I WANT PANCAKES!",
       description: "I need a CHOCOLATE MILKSHAKE",
       currency: {
         id: 1
        },
          budget: {
        minimum: 200
            },
           jobs: [
        {
        id: 3
        }
                ]
        }),
      dataType: 'json'
      }).done(function(data){
      	console.log(data)
      })
    .done(function(data){
        console.log(data)
        $.ajax({
        	method: 'PUT',
        	url: '/' + 'projects/' + gon.current_user.id,
        	contentType: "application/json",
        	data: JSON.stringify({
            user: {
          		user_id: gon.current_user.id,
          		pfid: data.result.id
            }
        	}),
          dataType: 'json'
        }).done(function(d){
          console.log(d)
        })
    });  

})