<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../jsp/includes/header.jsp"%>


<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Board update</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Board update</div>
      <div class="panel-body">
      <form id="updateForm" action="/board/updateProc" method="post">
        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
	    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
		<input type="hidden" name="mappingURI" value="update"/>
      
 
<div class="form-group">
  <label>Bno</label> 
  <input class="form-control" name='bno' 
     value='<c:out value="${BoardVO.bno }"/>' readonly="readonly">
</div>

<div class="form-group">
  <label>Title</label> 
  <input class="form-control" name='title' 
    value='<c:out value="${BoardVO.title }"/>' >
</div>

<div class="form-group">
  <label>Text area</label>
  <textarea class="form-control" rows="3" name='content' ><c:out value="${BoardVO.content}"/></textarea>
</div>

<div class="form-group">
  <label>Writer</label> 
  <input class="form-control" name='writer'
    value='<c:out value="${BoardVO.writer}"/>' readonly="readonly">            
</div>

<div class="form-group">
  <label>RegDate</label> 
  <input class="form-control" name='regDate'
    value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${BoardVO.regdate}" />'  readonly="readonly">            
</div>

<div class="form-group">
  <label>Update Date</label> 
  <input class="form-control" name='updateDate'
    value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${BoardVO.updateDate}" />'  readonly="readonly">            
</div>
  <button   id="updateBtn" class="btn btn-default">update</button>
  <button type="button" id="deleteBtn"  bno="${BoardVO.bno}" class="btn btn-danger">delete</button>
  <button type="button" id="listBtn" class="btn btn-info">list</button>
</form>


      </div>
    </div>
  </div>
</div>

<!-- <script type="text/javascript"> -->
// $(document).ready(function() {


// 	  var formObj = $("form");

// 	  $('button').on("click", function(e){
// 	    e.preventDefault(); 
// 	    var operation = $(this).data("oper");
// 	    if(operation === 'remove'){
// 	      formObj.attr("action", "/board/remove");
// 	    }else if(operation === 'list'){
// 	      formObj.attr("action", "/").attr("method","get");
	      
// 	      var pageNumTag = $("input[name='pageNum']").clone();
// 	      var amountTag = $("input[name='amount']").clone();
// 	      var keywordTag = $("input[name='keyword']").clone();
// 	      var typeTag = $("input[name='type']").clone();      
	      
// 	      formObj.empty();
	      
// 	      formObj.append(pageNumTag);
// 	      formObj.append(amountTag);
// 	      formObj.append(keywordTag);
// 	      formObj.append(typeTag);	       
// 	    }
	    
// 	    formObj.submit();
// 	  });

// });
<!-- </script> -->
  




<%@include file="../jsp/includes/footer.jsp"%>
