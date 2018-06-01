<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsformchecklistx3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<c:set var="packetType">
        <tags:componentProperty component="instrument" property="packet"/>
</c:set>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Z1X Form Checklist Form</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>
    
    <tags:outputText textKey="udsformchecklistx.allowablePacketTypes"/>

    <c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
      <c:param name="entity" value="${instrTypeEncoded}"/>
      <c:param name="view" value="${componentView}"/>
      <c:param name="component" value="${component}"/>
    </c:import>

    <page:applyDecorator name="component.instrument.section">
      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 
      
		<tags:tableForm>

			<tags:listRow>
				<tags:listColumnHeader labelKey="udsformchecklist3.FormColHeader" width="5%"/>
				<tags:listColumnHeader labelKey="udsformchecklistx.LanguageColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.DescColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.SubColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.IfNotSubColHeader" width="29%"/>
			</tags:listRow>      


		    <c:if test="${packetType == 'T'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.T1Form"/></tags:listCell>
				    <tags:listCell><tags:createField property="langt1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.T1Desc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		    
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A1Form"/></tags:listCell>
			    <tags:listCell><tags:createField property="langa1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A1Desc"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
			</tags:listRow>

			<c:choose>
				<c:when test="${packetType=='T'}">
					<tags:listRow>
						<tags:listCell><tags:outputText textKey="udsformchecklist3.A2Form"/></tags:listCell>
						<tags:listCell><tags:createField property="langa2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
						<tags:listCell><tags:outputText textKey="udsformchecklist3.A2Desc"/></tags:listCell>
						<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
						<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
					</tags:listRow>
				</c:when>
				<c:otherwise>
					<tags:listRow>
						<tags:listCell><tags:outputText textKey="udsformchecklist3.A2Form"/></tags:listCell>
						<tags:listCell><tags:createField property="langa2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
						<tags:listCell><tags:outputText textKey="udsformchecklist3.A2Desc"/></tags:listCell>
						<tags:listCell><tags:createField property="a2sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
						<tags:listCell><tags:createField property="a2not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
					</tags:listRow>
				</c:otherwise>
			</c:choose>
		
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A3Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langa3" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A3Desc"/></tags:listCell>
				<tags:listCell><tags:createField property="a3sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:createField property="a3not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			</tags:listRow>

			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A4Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langa4" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.A4Desc"/></tags:listCell>
				<tags:listCell><tags:createField property="a4sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:createField property="a4not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			</tags:listRow>
    
		    <c:if test="${packetType == 'I'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.A5Form"/></tags:listCell>
				    <tags:listCell><tags:createField property="langa5" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.A5Desc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		
		    <c:if test="${packetType == 'I' || packetType == 'F'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B1Form"/></tags:listCell>
					<tags:listCell><tags:createField property="langb1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B1Desc"/></tags:listCell>
					<tags:listCell><tags:createField property="b1sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
					<tags:listCell><tags:createField property="b1not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				</tags:listRow>
		    </c:if>

			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B4Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langb4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B4Desc"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
			</tags:listRow>
		
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B5Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langb5" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B5Desc"/></tags:listCell>
				<tags:listCell><tags:createField property="b5sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:createField property="b5not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			</tags:listRow>
		
		    <c:if test="${packetType == 'I' || packetType == 'F'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B6Form"/></tags:listCell>
					<tags:listCell><tags:createField property="langb6" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B6Desc"/></tags:listCell>
					<tags:listCell><tags:createField property="b6sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
					<tags:listCell><tags:createField property="b6not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B7Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langb7" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B7Desc"/></tags:listCell>
				<tags:listCell><tags:createField property="b7sub" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
				<tags:listCell><tags:createField property="b7not" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			</tags:listRow>
		
		    <c:if test="${packetType == 'I' || packetType == 'F'}">
			    	<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B8Form"/></tags:listCell>
					<tags:listCell><tags:createField property="langb8" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.B8Desc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B9Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langb9" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.B9Desc"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
			</tags:listRow>
		
		    <c:if test="${packetType == 'F'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.C1Form"/></tags:listCell>
					<tags:listCell><tags:createField property="langc1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.C1Desc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsformchecklist3.C1C2Form"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		    <c:if test="${packetType == 'I' || packetType == 'F'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.C2Form"/></tags:listCell>
					<tags:listCell><tags:createField property="langc2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.C2Desc"/></tags:listCell>
					<c:choose>
						<c:when test="${packetType == 'I'}">
							<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
						</c:when>
						<c:when test="${packetType == 'F'}">
							<%-- text is in C1 cell above this --%>
							<tags:listCell>&nbsp;</tags:listCell>
						</c:when>
					</c:choose>
					<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>

			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.D1Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langd1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.D1Desc"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
			</tags:listRow>
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.D2Form"/></tags:listCell>
				<tags:listCell><tags:createField property="langd2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.D2Desc"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklist3.Required"/></b></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklist3.NA"/></tags:listCell>
			</tags:listRow>
		</tags:tableForm>


		<%-- FTLD MODULE --%>
		<tags:tableForm>
			<tags:listRow>
				<tags:listColumnHeader labelKey="udsformchecklist3.FormColHeader" width="5%"/>
				<tags:listColumnHeader labelKey="udsformchecklistx.LanguageColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.DescColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.SubColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.IfNotSubColHeader" width="29%"/>
			</tags:listRow>      
		
			<c:if test="${packetType == 'I' || packetType == 'F'}">
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.A3aFForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langa3a" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.A3aFDesc"/></tags:listCell>
					<tags:listCell><tags:createField property="ftda3afs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:createField property="ftda3afr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B3FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langb3f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B3FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B9FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langb9f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B9FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C1FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc1f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C1FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C2FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc2f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C2FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C3FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc3f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C3FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C4FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc4f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C4FDesc"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc4fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc4fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C5FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc5f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C5FDesc"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc5fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc5fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C6FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="langc6f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C6FDesc"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc6fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:createField property="ftdc6fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E2FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="lange2f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E2FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E3FForm"/></tags:listCell>
					<tags:listCell><tags:createField property="lange3f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E3FDesc"/></tags:listCell>
					<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
					<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
				</tags:listRow>
		    </c:if>
		</tags:tableForm>

		<tags:tableForm>
			<tags:listRow>
				<tags:listColumnHeader labelKey="udsformchecklist3.FormColHeader" width="5%"/>
				<tags:listColumnHeader labelKey="udsformchecklistx.LanguageColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.DescColHeader" width="22%"/>
				<tags:listColumnHeader labelKey="udsformchecklist3.SubColHeader" width="22%"/>
				<tags:listColumnHeader label="" width="29%"/>
			</tags:listRow>      
			<tags:listRow>
				<tags:listCell><tags:outputText textKey="udsformchecklistx.CLSForm"/></tags:listCell>
				<tags:listCell><tags:createField property="langcls" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><tags:outputText textKey="udsformchecklistx.CLSDesc"/></tags:listCell>
				<tags:listCell><tags:createField property="clssub" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
				<tags:listCell><b><tags:outputText textKey="udsformchecklistx.clsSubmitOnlyOnce"/></b></tags:listCell>
			</tags:listRow>
		</tags:tableForm>

    </page:applyDecorator>


    <page:applyDecorator name="component.instrument.section">
      <page:param name="sectionId">anonymous</page:param>
      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param>
      <tags:createField property="notes['udsformchecklistx3']" component="${component}" entity="${instrTypeEncoded}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
			<ui:formGuide ignoreDoOnLoad="true">
			    <ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
			    <ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
			</ui:formGuide>
        
          <!-- Custom skip logic within ui:formGuide tags -->
          <c:if test="${packetType=='I' || packetType =='F'}">
	          <ui:formGuide>
	            <ui:observe elementIds='a2sub' component='${component}' forValue="^0$"/>
	            <ui:unskip elementIds='a2not' component='${component}'/>
	            <ui:skip elementIds='langa2' component='${component}'/>
	          </ui:formGuide>
	      </c:if>    
          <ui:formGuide>
            <ui:observe elementIds='a3sub' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='a3not' component='${component}'/>
            <ui:skip elementIds='langa3' component='${component}'/>
          </ui:formGuide>
          <ui:formGuide>
            <ui:observe elementIds='a4sub' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='a4not' component='${component}'/>
            <ui:skip elementIds='langa4' component='${component}'/>
          </ui:formGuide>
          <c:if test="${packetType=='I' || packetType=='F'}">
	          <ui:formGuide>
	            <ui:observe elementIds='b1sub' component='${component}' forValue="^0$"/>
	            <ui:unskip elementIds='b1not' component='${component}'/>
	            <ui:skip elementIds='langb1' component='${component}'/>
	          </ui:formGuide>
		  </c:if>	          
          <ui:formGuide>
            <ui:observe elementIds='b5sub' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='b5not' component='${component}'/>
            <ui:skip elementIds='langb5' component='${component}'/>
          </ui:formGuide>
          <c:if test="${packetType=='I' || packetType=='F'}">
	          <ui:formGuide>
	            <ui:observe elementIds='b6sub' component='${component}' forValue="^0$"/>
	            <ui:unskip elementIds='b6not' component='${component}'/>
	            <ui:skip elementIds='langb6' component='${component}'/>
	          </ui:formGuide>
	      </c:if>    
          <ui:formGuide>
            <ui:observe elementIds='b7sub' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='b7not' component='${component}'/>
            <ui:skip elementIds='langb7' component='${component}'/>
          </ui:formGuide>
          
          <ui:formGuide>
            <ui:observe elementIds='ftda3afs' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='ftda3afr' component='${component}'/>
            <ui:skip elementIds='langa3a' component='${component}'/>
          </ui:formGuide>
          <ui:formGuide>
            <ui:observe elementIds='ftdc4fs' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='ftdc4fr' component='${component}'/>
            <ui:skip elementIds='langc4f' component='${component}'/>
          </ui:formGuide>
          <ui:formGuide>
            <ui:observe elementIds='ftdc5fs' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='ftdc5fr' component='${component}'/>
            <ui:skip elementIds='langc5f' component='${component}'/>
          </ui:formGuide>
          <ui:formGuide>
            <ui:observe elementIds='ftdc6fs' component='${component}' forValue="^0$"/>
            <ui:unskip elementIds='ftdc6fr' component='${component}'/>
            <ui:skip elementIds='langc6f' component='${component}'/>
          </ui:formGuide>
          
          <ui:formGuide>
            <ui:observe elementIds='clssub' component='${component}' forValue="^0$"/>
            <ui:skip elementIds='langcls' component='${component}'/>
          </ui:formGuide>
          
          <ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
          </ui:formGuide>
        </c:if>
      </c:forEach>
    </c:if>
  </page:applyDecorator>
</page:applyDecorator>
