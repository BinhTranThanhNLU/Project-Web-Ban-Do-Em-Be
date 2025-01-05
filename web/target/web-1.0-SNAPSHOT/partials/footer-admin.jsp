<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>





<!-- JavaScript riêng cho từng trang -->
<c:if test="${not empty pageJsList}">
  <c:forEach var="jsFile" items="${pageJsList}">
    <script src="${pageContext.request.contextPath}/static/js/${jsFile}"></script>
  </c:forEach>
</c:if>

</body>
</html>
