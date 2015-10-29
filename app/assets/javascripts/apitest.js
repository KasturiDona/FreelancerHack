var apiTest = function(){
	$.ajax({
		url: 'http://www.freelancer.com/api/users/0.1/self/jobs/',
    headers: {
      'Freelancer-Developer-Auth-V1': DEVELOPER_ID; FREELANCER_API,
      "Content-Type: application/json"
    }
	})
}


$(document).ready(function(){

	apiTest;

})