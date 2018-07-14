<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>S18T22</title>
<link rel="stylesheet" href="css/styleSheet.css" />
</head>
<body>
	<f:view>
		<div class="panel">
			<center>
				<h2>Import Functionality</h2>
				<hr />

				<h:form enctype="multipart/form-data">
					<h:commandButton value="Main Menu" action="#{mainMenu.reset}"
						styleClass="button" /> &nbsp;
                    <h:commandButton value="Logout"
						action="#{mainMenu.processLogout}" styleClass="button" />
					<hr />
					<h:panelGrid columns="2"
						style="background-color: #87CEEB;
                        border-bottom-style: solid;
						border-top-style: solid;
						border-left-style: solid;
						border-right-style: solid;
						font-family: Comic Sans MS, cursive, sans-serif">
						<h:outputLabel value="Select file to upload:" />
						<t:inputFileUpload id="fileUpload" label="File to upload"
							storage="default" value="#{dataImport.uploadedFile}" size="60" />
					<%-- 	<h:outputLabel value="File label:" />
						<h:inputText id="fileLabel" value="#{dataImport.fileLabel}"
							size="60" />
						<h:outputLabel value="Dataset label:" />
						<h:inputText id="dataSetLabel" value="#{dataImport.datasetLabel}"
							size="60" />--%>
						<%-- <h:message for="fileLabel" style="color:red; font-size:90%" /> --%>
					<%-- <h:outputLabel value="File Type:"></h:outputLabel>
						<h:selectOneListbox id="data" value="#{dataImport.fileType}"
							size="3" styleClass="selectOneListbox_mono">
							<f:selectItem itemValue="metadata" itemLabel="metadata" />
							<f:selectItem itemValue="data" itemLabel="data" />
							<f:selectItem itemValue="other" itemLabel="other" />
						</h:selectOneListbox>--%>
						<%-- <h:message for="data" style="color:red; font-size:90%" /> --%>
						<h:outputLabel value=" File Format:" />
						<h:selectOneListbox id="dataType" value="#{dataImport.format}"
							size="1" styleClass="forminput" required="true"
							requiredMessage="Required field">
							<f:selectItem itemValue="csv" itemLabel="CSV" />
							<f:selectItem itemValue="tab" itemLabel="Tab" />
							<%-- <f:selectItem itemLabel="Excel" />
					<f:selectItem itemLabel="XML" /> --%>
						</h:selectOneListbox>
						<%-- <h:message for="dataType" style="color:red; font-size:90%" /> --%>
						<h:outputLabel value="Header Row" />
						<h:selectOneListbox id="headerR" value="#{dataImport.headerRow}"
							size="1" styleClass="forminput" required="true"
							requiredMessage="Required field">
							<f:selectItem itemValue="yes" itemLabel="Yes" />
							<f:selectItem itemValue="no" itemLabel="No" />
						</h:selectOneListbox>
						<h:message for="headerR" style="color:red; font-size:90%" />
						<h:outputText value="" />
						<h:commandButton id="upload" action="#{dataImport.uploadTypeFile}"
							value="Submit" />
						<h:commandButton id="reset" value="Reset"
							action="#{dataImport.reset}" />
					</h:panelGrid>
					<h:panelGrid columns="2"
						style="background-color: White;
						border-bottom-style: solid;
						border-top-style: solid;
						border-left-style: solid;
						border-right-style: solid"
						width="800" rendered="#{dataImport.fileImport }">
						<h:outputLabel value="Number of records:" />
						<h:outputText value="#{dataImport.numberRows }" />
						<h:outputLabel value="File Name:" />
						<h:outputText value="#{dataImport.fileName }" />
					</h:panelGrid>
					<h:outputText value="#{dataImport.success}"
						rendered="#{dataImport.successRendered}"
						style="color:red; font-weight:bold" />
					<br></br>
					<h:outputText value="#{dataImport.message}"
						rendered="#{dataImport.renderMessage}"
						style="color:red; font-weight:bold" />
					<br />
					<br />
					<h:outputText value="#{dataImport.errorMessage}"
						rendered="#{dataImport.renderMessage}"
						style="color:red; font-weight:bold" />
					<br></br>
					<h:outputText value="#{dataImport.errorRowMessage}"
						rendered="#{dataImport.renderRowMessage}"
						style="color:red; font-weight:bold" />
					<%-- <h:outputText value="#{dataImport.message1}"
					rendered="#{dataImport.renderMessage}"
					style="color:red; font-weight:bold" /> --%>



					<div
						style="background-attachment: scroll; overflow: auto; background-repeat: repeat"
						align="center">
						<t:dataTable value="#{dataImport.errorRowList}" var="rowNumber"
							rendered="#{dataImport.renderTabledata}" border="1"
							cellspacing="0" cellpadding="1" headerClass="headerWidth">
							<t:columns var="col" value="#{dataImport.headr}">
								<f:facet name="header">
									<t:outputText styleClass="outputHeader" value="#{col}" />
								</f:facet>
								<t:outputText styleClass="outputText" value="#{rowNumber}" />
							</t:columns>
						</t:dataTable>
					</div>
				</h:form>
			</center>
		</div>
	</f:view>
</body>
</html>