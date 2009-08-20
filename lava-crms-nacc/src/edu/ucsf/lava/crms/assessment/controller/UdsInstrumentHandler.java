package edu.ucsf.lava.crms.assessment.controller;

import java.util.Map;

import org.springframework.validation.BindingResult;
import org.springframework.webflow.execution.RequestContext;

import edu.ucsf.lava.crms.assessment.controller.upload.FileLoader;

public class UdsInstrumentHandler extends InstrumentHandler {

	public UdsInstrumentHandler() {
		super();

	}

	public UdsInstrumentHandler(Map<String, FileLoader> fileLoaders) {
		super(fileLoaders);

	}

	@Override
	public Map addReferenceData(RequestContext context, Object command, BindingResult errors, Map model) {
		model = super.addReferenceData(context, command, errors, model);
		this.addListsToModel(model,listManager.getStaticListsForEntity("udsinstrument"));
		return model;
	}

}
