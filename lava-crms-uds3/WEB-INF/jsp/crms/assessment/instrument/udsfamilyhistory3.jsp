<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsfamilyhistory3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Family History 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="afffamm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fadmut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fadmutx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fadmuso" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fadmusox" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fftdmut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fftdmutx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fftdmuso" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fftdmusx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fothmut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fothmutx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fothmuso" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="fothmusx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="mommob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momyob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momdage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momneur" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momprdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="mommoe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momageo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadmob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadyob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="daddage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadneur" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadprdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadmoe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dadageo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sibs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib1ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib2ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib3ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib4ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib5ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib6ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib7ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib8ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib9ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib10ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib11ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib12ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib13ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib14ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib15ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib16ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib17ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib18ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib19ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sib20ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kids" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid1ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid2ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid3ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid4ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid5ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid6ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid7ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid8ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid9ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid10ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid11ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid12ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid13ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid14ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15mob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15yob" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15agd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15neu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15pdx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15moe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="kid15ago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

    </page:applyDecorator>

    <page:applyDecorator name="component.instrument.section">
      <page:param name="sectionId">anonymous</page:param>
      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param>
      <tags:createField property="notes['']" component="${component}" entity="${instrTypeEncoded}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>

    </page:applyDecorator>
    <c:if test="${componentMode != 'vw'}">
      <c:forEach begin="0" end="1" var="current">
        <c:choose>
          <c:when test="${componentView == 'doubleEnter' || (componentView == 'compare' && current == 1)}">
            <c:set var="component" value="compareInstrument"/>
          </c:when>
          <c:otherwise>
            <c:set var="component" value="instrument"/>
          </c:otherwise>
        </c:choose>
        <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">
          <!-- Custom skip logic within ui:formGuide tags -->
          <ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
          </ui:formGuide>
        </c:if>
      </c:forEach>
    </c:if>
  </page:applyDecorator>
</page:applyDecorator>
