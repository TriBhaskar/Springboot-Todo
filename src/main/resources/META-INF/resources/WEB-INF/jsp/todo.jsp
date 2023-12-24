<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<h1>
        <div class="container">
        <h1>Enter TODO details</h1>
        <form:form method="POST" modelAttribute="todo">
        <fieldset>
            Description:<form:input type="text" path="description" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>
        <fieldset>
          Target Date:<form:input type="text" path="targetDate" required="required"/>
          <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
        <input type="submit" class="btn btn-success">
        </form:form>

</div>
<%@ include file="common/footer.jspf" %>
        <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd'
        });
        </script>