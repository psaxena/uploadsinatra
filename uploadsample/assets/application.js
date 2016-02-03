$(function() {

	// $('#id-workflow-list').on('click', '.inline-export-workflow', onClickInlineExportWorkflow);
	// $('#id-workflow-list').on('click', '#get-file', onClickInlineExportWorkflow);
	
	$("#get-file").hide();
	
	$("#get-file").click(function() {
		$(this).attr('href',  "download_service_request?req_id="+$("#service-request-id").val());
		downloadFile($(this).attr('href'));
	});

	$("#get-request-status").click(function() {
		getStatus();
	});

	$('input:file').click(function() {
		$(this).one('change', uploadFile);
	});

	function uploadFile() {
		var files = document.getElementById('file-attachment').files;

		var fd = new FormData();
		fd.append("file", files[0]);

		var xhr = new XMLHttpRequest();
		xhr.addEventListener("load", uploadComplete, false);
		// xhr.addEventListener("error", uploadFailed, false);
		xhr.open("POST", '/upload');
		xhr.send(fd);
	}

	function uploadComplete(evt) {
		/* This event is raised when the server send back a response */
		var status = evt.target.status;
		// if (status == "401") {
		// return;
		// }

		res = JSON.parse(evt.target.responseText);
		console.log("status-----" + res.status);
		console.log("request_id-----" + res.request_id);
		$("#upload-status").html("<br> <h3>Service Request Created</h3><b>Request id : </b>" + res.request_id + "<br> <b>Current Status : </b>" + res.status);

	}

	function getStatus() {
		$.ajax({
			// url : "get_status?resource_id=" + $("#service-request-ids").val(),
			url : "get_status?request_id=" + $("#service-request-id").val(),
			type : "GET",
			contentType : "application/json",
			success : function(msg) {
				onAjaxSuccess(msg);
			}
		}).fail(function(msg) {
			onAjaxFailure(msg);
		});
	}

	function onAjaxSuccess(msg) {
		var reqStatus = JSON.parse(msg)["status"];
		$("#request-status").html("<br><b>Request Status : </b>" + reqStatus );
		if(reqStatus == "uploaded")
			$("#get-file").show();
		else
			$("#get-file").hide();
			
	}

	function onAjaxFailure(msg) {
		alert("failure");
		$("#request-status").html(JSON.parse(msg)["status"]);
	}

	function downloadFile(url) {
		$.fileDownload(url, {
			httpMethod : "GET",
			successCallback : function(url) {
				console.log("successCallback-----" + url);
			},
			preparingMessageHtml : "We are preparing your report, please wait...",
			prepareCallback : function(url) {
				console.log("prepareCallback-----" + url);
			},
			failCallback : function(responseHtml, url) {
				console.log("failCallback-----" + url);
			}
		});
	}

});
