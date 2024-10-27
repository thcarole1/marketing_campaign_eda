run:
	@python marketing_campaign_eda_package_folder/main.py

run_uvicorn:
	@uvicorn marketing_campaign_eda_package_folder.api:app --reload

install:
	@pip install -e .

test:
	@pytest -v tests

reset_trained_models:
	@rm -rf ${TRAIN_MDL_DIR}
	@mkdir ${TRAIN_MDL_DIR}
