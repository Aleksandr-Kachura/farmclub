<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="org-common" tagdir="/WEB-INF/tags/addons/commerceorgaddon/responsive/common" %>
<%@ taglib prefix="company" tagdir="/WEB-INF/tags/addons/commerceorgaddon/responsive/company" %>

<spring:htmlEscape defaultHtmlEscape="true" />

<spring:url value="/my-company/organization-management/manage-units/edit" var="editUnitUrl" htmlEscape="false">
	<spring:param name="unit" value="${b2BUnitForm.originalUid}"/>
</spring:url>
<spring:url value="/my-company/organization-management/manage-units/details" var="cancelUrl" htmlEscape="false">
	<spring:param name="unit" value="${b2BUnitForm.originalUid}"/>
</spring:url>

<template:page pageTitle="${pageTitle}">
	<div class="account-section">
		<div>
			<org-common:headline url="${cancelUrl}" labelKey="text.company.manage.units.unit.edit.title"
								 labelArguments="${empty b2BUnitForm.name ? b2BUnitForm.uid : b2BUnitForm.name}"/>
		</div>
		<company:b2bUnitForm formUrl="${editUnitUrl}" b2BUnitForm="${b2BUnitForm}" cancelUrl="${cancelUrl}"/>	
	</div>
</template:page>
