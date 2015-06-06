<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="naccpathology10"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>



<c:set var="controlMode" value="lv"/>
<c:set var="domainControlMode" value="vw"/>
<c:set var="labelStyle" value="tightRight"/>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'collect' || componentView == 'enter' || componentView == 'doubleEnter' || componentView == 'compare'}">

		<c:set var="focusField" value="npid"/>
		<c:set var="controlMode" value="le"/>
		<c:set var="labelStyle" value=""/>		
	</c:when>
</c:choose>	


<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">NACC Pathology (V10)</page:param>
  <page:param name="quicklinks">tracking,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19</page:param>

<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>


<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">tracking</page:param>
  <page:param name="sectionNameKey">naccpathology10.tracking.section</page:param>

<tags:contentColumn columnClass="colLeft2Col5050">

			<tags:createField property="ptid" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npform" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npid" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npsex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npdage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npdod" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="nppmih" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npfix" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
			<tags:createField property="npfixx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="right" labelStyle="${labelStyle}"/>
</tags:contentColumn>
<tags:contentColumn columnClass="colRight2Col5050"> 

			<tags:createField property="submissionstatus" component="${component}" entity="${instrTypeEncoded}"  labelAlignment="top"/>
			<tags:createField property="subdate" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>
			<tags:createField property="statnote" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

</tags:contentColumn>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q9</page:param>
  <page:param name="sectionNameKey">naccpathology10.q9.section</page:param>
	<tags:tableForm>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q9a.label"/></tags:listCell>
			<tags:listCell><tags:createField property="npwbrwt" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q9b.label"/></tags:listCell>
			<tags:listCell><tags:createField property="npwbrf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	

	<tags:listRow>
		<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q9c.label" /></tags:listCell>
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c1.label" inline="false" indent="true"/></tags:listCell>
		<tags:listCell><tags:createField property="npgrcca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c2.label" inline="false" indent="true"/></tags:listCell>
		<tags:listCell><tags:createField property="npgrla" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c3.label" inline="false" indent="true"/></tags:listCell>
		<tags:listCell><tags:createField property="npgrha" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c4.label" inline="false" indent="true"/></tags:listCell>
		<tags:listCell><tags:createField property="npgrsnh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c5.label" inline="false" indent="true"/></tags:listCell>	
		<tags:listCell><tags:createField property="npgrlch" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	</tags:listRow>
	<tags:listRow>
		<tags:listCell><tags:outputText textKey="naccpathology10.q9c6.label" inline="false" indent="true"/></tags:listCell>
		<tags:listCell><tags:createField property="npavas" component="${component}" entity="${instrTypeEncoded}"/>	</tags:listCell>
	</tags:listRow>
</tags:tableForm>		
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q10</page:param>
  <page:param name="sectionNameKey">naccpathology10.q10.section</page:param>			
	<tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10a.label"/></tags:listCell>
			<tags:listCell><tags:createField property="nptan" component="${component}" entity="${instrTypeEncoded}"/><br><tags:outputText text="   Specify:"/><tags:createField property="nptanx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10b.label"/></tags:listCell>
			<tags:listCell><tags:createField property="npaban" component="${component}" entity="${instrTypeEncoded}"/><br><tags:outputText text="   Specify:"/><tags:createField property="npabanx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10c.label"/></tags:listCell>
			<tags:listCell><tags:createField property="npasan" component="${component}" entity="${instrTypeEncoded}"/><br><tags:outputText text="   Specify:"/><tags:createField property="npasanx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10d.label"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpan" component="${component}" entity="${instrTypeEncoded}"/><br><tags:outputText text="   Specify:"/><tags:createField property="nptdpanx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="e. Histochemical stains"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10e1.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="nphismb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10e2.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="nphisg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10e3.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="nphisss" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10e4.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="nphist" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q10e5.label" inline="false" indent="true"/><tags:createField property="nphisox" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
			<tags:listCell><tags:createField property="nphiso" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>			
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q11</page:param>
  <page:param name="sectionNameKey">naccpathology10.q11.section</page:param>
  	<page:param name="instructions">Please score AD neuropathologic changes</page:param>					
	<tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="a. Thal phase for amyloid plaques by immunohisto- chemistry (IHC)"/></tags:listCell>
			<tags:listCell><tags:createField property="npthal" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="b. Braak stage for neurofibrillary degeneration"/></tags:listCell>
			<tags:listCell><tags:createField property="npbraak" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="c. CERAD score for density of neocortical neuritic plaque (plaques with argyrophilic dystrophic neurites, with or without dense amyloid cores). Score without respect to age or diagnosis."/></tags:listCell>
			<tags:listCell><tags:createField property="npneur" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="d. NIA-AA Alzheimer?s disease neuropathologic change"/></tags:listCell>
			<tags:listCell><tags:createField property="npadnc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="e. Other pathologic changes associated with AD"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="1. CERAD semi-quantitative score for diffuse plaques (plaques with non-compact amyloid and no apparent dystrophic neurites). Score from the neocortical field with the highest plaque density and without respect to age or diagnosis." inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npdiff" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		<tags:listRow>
		</tags:listRow>
			<tags:listCell><tags:outputText text="2. Cerebral amyloid angiopathy" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npamy" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q12</page:param>
  <page:param name="sectionNameKey">naccpathology10.q12.section</page:param>	
  <page:param name="instructions">Report all CVD, macroscopic vacular (VBI), and microfarcts or microhemorrhages</page:param>				
	<tags:tableForm>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="a. Old infarcts observed grossly, including lacunes?"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npinf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
	<tags:tableForm>
		<tags:listRow>
			<tags:listColumnHeader labelKey="naccpathology10.q12.header" width="40%"/>
			<tags:listColumnHeader labelKey="naccpathology10.q12a.header" width="15%"/>
			<tags:listColumnHeader labelKey="naccpathology10.q12b.header" width="15%"/>
			<tags:listColumnHeader labelKey="naccpathology10.q12d.header" width="15%"/>
			<tags:listColumnHeader labelKey="naccpathology10.q12f.header" width="15%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q12_1.label" inline = "false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf1a" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
			<tags:listCell><tags:createField property="npinf1b" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
			<tags:listCell><tags:createField property="npinf1d" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
			<tags:listCell><tags:createField property="npinf1f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q12_2.label" inline = "false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf2a" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf2b" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf2d" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf2f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q12_3.label" inline = "false" indent="true"/></tags:listCell>			
			<tags:listCell><tags:createField property="npinf3a" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf3b" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf3d" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf3f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="naccpathology10.q12_4.label" inline = "false" indent="true"/></tags:listCell>	
			<tags:listCell><tags:createField property="npinf4a" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf4b" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf4d" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="npinf4f" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
	</tags:tableForm>	
	<tags:tableForm>		
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_b.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nphemo" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_b1.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nphemo1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_b2.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nphemo2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_b3.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nphemo3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_c.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npold" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
		</tags:listRow>		
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_c1.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npold1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_c2.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npold2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_c3.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npold3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_c4.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npold4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_d.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npoldd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>	
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_d1.label" inline="false" indent="true"/></tags:listCell>			
			<tags:listCell colspan="3"><tags:createField property="npoldd1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_d2.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npoldd2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_d3.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npoldd3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_d4.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npoldd4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_e.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nparter" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_f.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npwmr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g.label"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g1.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="npnec" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g2.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g3.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g4.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g5.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath5" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g6.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath6" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g7.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath7" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g8.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath8" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g9.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath9" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g10.label" inline="false" indent="true"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppath10" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g11.label" inline="false" indent="true"/></tags:listCell>			
			<tags:listCell colspan="3"><tags:createField property="nppath11" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>	
			<tags:listCell colspan="2"><tags:outputText textKey="naccpathology10.q12_g12.label" inline="false" indent="true"/></b><tags:createField property="nppathox" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell colspan="3"><tags:createField property="nppatho" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>		
	</tags:tableForm>		
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q13</page:param>
  <page:param name="sectionNameKey">naccpathology10.q13.section</page:param>			
			<tags:createField property="nplbod" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q14</page:param>
  <page:param name="sectionNameKey">naccpathology10.q14.section</page:param>				
			<tags:createField property="npnloss" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q15</page:param>
  <page:param name="sectionNameKey">naccpathology10.q15.section</page:param>				
			<tags:createField property="nphipscl" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q16</page:param>
  <page:param name="sectionNameKey">naccpathology10.q16.section</page:param>			
 	 <tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="a. Spinal Cord"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="b. Amygdala"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="c. Hippocampus"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="d. Entorhinal/inferior temporal cortex"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="e. Neocortex"/></tags:listCell>
			<tags:listCell><tags:createField property="nptdpe" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
 	 </tags:tableForm>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q17</page:param>
  <page:param name="sectionNameKey">naccpathology10.q17.section</page:param>
   	 <tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="a. FTLD with tau pathology (FTLD-tau) or other tauopathy"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdtau" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="b. FTLD-tau subtype"/></tags:listCell>
		</tags:listRow>		
		<tags:listRow>
			<tags:listCell><tags:outputText text="1. FTLD-tau (PiD)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="nppick" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="2. Other 3R tauopathy" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>		
		<tags:listRow>
			<tags:listCell><tags:outputText text="3. FTLD-tau (CBD)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npcort" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>							
		<tags:listRow>
			<tags:listCell><tags:outputText text="4.	FTLD-tau (PSP)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npprog" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>		
		<tags:listRow>
			<tags:listCell><tags:outputText text="5.	Argyrophilic grains" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt5" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>							
		<tags:listRow>
			<tags:listCell><tags:outputText text="6.	Other 4R tauopathy" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt6" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>								
		<tags:listRow>
			<tags:listCell><tags:outputText text="7.	Chronic traumatic encephalopathy" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt7" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>								
		<tags:listRow>
			<tags:listCell><tags:outputText text="8.	Amyotrophic lateral sclerosis (ALS)/" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt8" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>								
		<tags:listRow>
			<tags:listCell><tags:outputText text="9.	Tangle dominant disease" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt9" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>							
		<tags:listRow>
			<tags:listCell><tags:outputText text="10. Other 3R + 4R tauopathy" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdt10" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="c.	FTLD with TDP-43 pathology (FTLD-TDP)?"/></tags:listCell>
			<tags:listCell><tags:createField property="npftdtdp" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="d. ALS/motor neuron disease (MND) present?"/></tags:listCell>
			<tags:listCell><tags:createField property="npalsmnd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="e. Other FTLD?"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="f. Other FTLD subtype"/></tags:listCell>
		</tags:listRow>		
		<tags:listRow>
			<tags:listColumnHeader colspan="2" labelKey="naccpathology10.q17fus.header"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="1.	Atypical FTLD-U (aFTLD-U)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="2. NIFID (neuronal intermediate filament inclusions disease)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="3. BIBD (basophilic inclusion body disease)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listColumnHeader colspan="2" labelKey="naccpathology10.q17other.header"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="4. FTLD-UPS (ubiquitin-proteasome system [ubiquitin or p62 positive, tau/TDP-43/FUS negative inclusions])" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="5. FTLD-NOS (includes dementia lacking distinctive histology (DLDH) and FTLD with no inclusions (FTLD-NI) detected by tau, TDP-43, or ubiquitin/p62 IHC)" inline="false" indent="true"/></tags:listCell>
			<tags:listCell><tags:createField property="npoftd5" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
   	 </tags:tableForm>	
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q18</page:param>
  <page:param name="sectionNameKey">naccpathology10.q18.section</page:param>				
	<tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="a.	Pigment-spheroid degeneration/NBIA"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="b.	Multiple system atrophy"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="c.	Prion disease"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="d.	Trinucleotide disease (Huntington disease, SCA, other)"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="e.	Malformation of cortical development"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxe" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="f.	Metabolic/storage disorder of any type"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="g.	WM disease, leukodystrophy"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="h.	WM disease, multiple sclerosis or other demyelinating disease"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="i.	Contusion/traumatic brain injury of any type, acute"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="j.	Contusion/traumatic brain injury of any type, chronic"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="k.	Neoplasm, primary"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxk" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="l.	Neoplasm, metastatic"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="m.	Infectious process of any type (encephalitis, abscess, etc.)"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="n.	Herniation, any site"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxn" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="o.	Hydrocephalus ex vacuo"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxo" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="p.	Trisomy 21/Down syndrome"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxp" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="q.	APP, PSEN1, PSEN2, or C9orf72 mutation"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxq" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="r. Other"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxr" component="${component}" entity="${instrTypeEncoded}"/><tags:outputText text="Specify:"/><tags:createField property="nppdxrx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="s. Other"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxs" component="${component}" entity="${instrTypeEncoded}"/><tags:outputText text="Specify:"/><tags:createField property="nppdxsx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="t. Other"/></tags:listCell>
			<tags:listCell><tags:createField property="nppdxt" component="${component}" entity="${instrTypeEncoded}"/><tags:outputText text="Specify:"/><tags:createField property="nppdxtx" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="sectionId">q19</page:param>
  <page:param name="sectionNameKey">naccpathology10.q19.section</page:param>			
  <page:param name="instructions">Use this section to record information related to the storage and accessibility of brain, blood, plasma, serum, DNA, and CSF.</page:param>		
	<tags:tableForm>	
		<tags:listRow>
			<tags:listCell><tags:outputText text="a.	Banked frozen brain or half brain"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnka" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="b.	Banked frozen wedge of cerebellum or other sample for future DNA prep"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnkb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="c.	Formalin- or paraformaldehyde-fixed brain"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnkc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="d.	Paraffin-embedded blocks of brain regions"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnkd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="e.	Banked postmortem CSF"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnke" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="f.	Banked postmortem blood or serum"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnkf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="g.	Banked DNA"/></tags:listCell>
			<tags:listCell><tags:createField property="npbnkg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText text="h.	Full autopsy performed?"/></tags:listCell>
			<tags:listCell><tags:createField property="npfaut" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="If full autopsy, major findings:"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="1."/><tags:createField property="npfaut1" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="2."/><tags:createField property="npfaut2" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="3."/><tags:createField property="npfaut3" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell colspan="2"><tags:outputText text="4."/><tags:createField property="npfaut4" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>			
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


<ui:formGuide>
    <ui:observe elementIds="npfix" component="${component}" forValue="7"  />
    <ui:unskip elementIds="npfixx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="npwbrwt" component="${component}" negate="true" forValue="-6|-7|-8|-9|9999"/>
	<ui:unskip elementIds="npwbrf" skipValue="8" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="nptan" component="${component}" forValue="7" />
    <ui:unskip elementIds="nptanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="npaban" component="${component}" forValue="7" />
    <ui:unskip elementIds="npabanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="npasan" component="${component}" forValue="7" />
    <ui:unskip elementIds="npasanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="nptdpan" component="${component}" forValue="7" />
    <ui:unskip elementIds="nptdpanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="nphiso" component="${component}" forValue="1" />
    <ui:unskip elementIds="nphisox" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
    <ui:observe elementIds="npinf" component="${component}" forValue="1" />
    <ui:unskip elementIds="npinf1a,npinf2a,npinf3a,npinf4a" component="${component}"/>
</ui:formGuide>

 <ui:formGuide>
 	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf1a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|88|99"/>
    <ui:unskip elementIds="npinf1b" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf1a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|88|99"/>
    <ui:unskip elementIds="npinf1d" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf1a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|2|88|99"/>
    <ui:unskip elementIds="npinf1f" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf2a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|88|99" />
    <ui:unskip elementIds="npinf2b" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf2a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|88|99" />
    <ui:unskip elementIds="npinf2d" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf2a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|2|88|99" />
    <ui:unskip elementIds="npinf2f" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf3a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|88|99" />
    <ui:unskip elementIds="npinf3b" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf3a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|88|99" />
    <ui:unskip elementIds="npinf3d" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf3a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|2|88|99" />
    <ui:unskip elementIds="npinf3f" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf4a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|88|99" />
    <ui:unskip elementIds="npinf4b" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf4a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|88|99" />
    <ui:unskip elementIds="npinf4d" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="npinf" component="${component}" />
    <ui:observe elementIds="npinf4a" component="${component}" negate="true" forValue="-9|-8|-7|-6|0|1|2|88|99" />
    <ui:unskip elementIds="npinf4f" component="${component}"/>
</ui:formGuide>
 
 
<ui:formGuide>
    <ui:observe elementIds="nphemo" component="${component}" forValue="1" />
    <ui:unskip elementIds="nphemo1,nphemo2,nphemo3" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
    <ui:observe elementIds="npold" component="${component}" forValue="1" />
    <ui:unskip elementIds="npold1,npold2,npold3,npold4" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="npoldd" component="${component}" forValue="1" />
    <ui:unskip elementIds="npoldd1,npoldd2,npoldd3,npoldd4" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
    <ui:observe elementIds="nppath" component="${component}" forValue="1|2|3" />
    <ui:unskip elementIds="npnec,nppath2,nppath3,nppath4,nppath5,nppath6,nppath7,nppath8,nppath9,nppath10,nppath11,nppatho,nppathox" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
	<ui:depends elementIds="nppath" component="${component}" />
    <ui:observe elementIds="nppatho" component="${component}" forValue="1" />
    <ui:unskip elementIds="nppathox" component="${component}"/>
</ui:formGuide>

<!--Question 17a  -->
<ui:formGuide>
    <ui:observe elementIds="npftdtau" component="${component}" forValue="1" />
    <ui:unskip elementIds="nppick,npftdt2,npcort,npprog,npftdt5,npftdt6,npftdt7,npftdt8,npftdt9,npftdt10" component="${component}"/>
</ui:formGuide>
<!--Question 17e  -->
<ui:formGuide>
    <ui:observe elementIds="npoftd" component="${component}" forValue="1" />
    <ui:unskip elementIds="npoftd1,npoftd2,npoftd3,npoftd4,npoftd5" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
    <ui:observe elementIds="nppdxr" component="${component}" forValue="1" />
    <ui:unskip elementIds="nppdxrx" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
    <ui:observe elementIds="nppdxs" component="${component}" forValue="1" />
    <ui:unskip elementIds="nppdxsx" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
    <ui:observe elementIds="nppdxt" component="${component}" forValue="1" />
    <ui:unskip elementIds="nppdxtx" component="${component}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
    <ui:observe elementIds="npfaut" component="${component}" forValue="1" />
    <ui:unskip elementIds="npfaut1,npfaut2,npfaut3,npfaut4" component="${component}"/>
</ui:formGuide>

</c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    

