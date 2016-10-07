<%-- aoweb-struts: Do not edit --%>
<%--
Copyright 2007-2009, 2015, 2016 by AO Industries, Inc.,
7262 Bull Pen Cir, Mobile, Alabama, 36695, U.S.A.
All rights reserved.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@include file="/_taglibs.jsp" %>

<skin:setContentType />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html:html lang="true" xhtml="true">
	<fmt:bundle basename="com.aoindustries.website.signup.ApplicationResources">
		<skin:path>/signup/managed-server-3.do</skin:path>
		<skin:title><fmt:message key="managed.title" /></skin:title>
		<skin:navImageAlt><fmt:message key="managed.navImageAlt" /></skin:navImageAlt>
		<skin:keywords><fmt:message key="managed.keywords" /></skin:keywords>
		<skin:description><fmt:message key="managed.description" /></skin:description>
		<%@include file="add-parents.jsp" %>
		<skin:skin onload="recalcMonthly();">
			<skin:content width="600">
				<skin:contentTitle><fmt:message key="managed.title" /></skin:contentTitle>
				<skin:contentHorizontalDivider />
				<skin:contentLine>
					<ao:script>
						var signupCustomizeManagementFormName = 'managedSignupCustomizeManagementForm';
						function selectStep(step) {
							var form = document.forms['managedSignupCustomizeManagementForm'];
							form.selectedStep.value=step;
							form.submit();
						}
					</ao:script>
					<bean:define toScope="request" type="java.lang.String" id="stepNumber" value="3" />
					<bean:define type="java.lang.String" id="actionPrefix" toScope="request" value="managed-server" />
					<%@include file="managed-server-steps.jsp" %>
					<br />
					<html:form action="/managed-server-3-completed.do">
						<%@include file="signup-customize-management-form.jsp" %>
					</html:form>
				</skin:contentLine>
			</skin:content>
		</skin:skin>
	</fmt:bundle>
</html:html>
