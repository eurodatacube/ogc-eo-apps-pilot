# ogc-eo-apps-pilot
OGC Earth Observation Apps Pilot

## test

```shell
# install cwl-runner
pip install cwl-runner
# run test job using Sentinel-2 archive on AWS
cwl-runner eo_agri_app.cwl testdata/test_job_aws.yml
# run test job using staged STAC
cwl-runner eo_agri_app.cwl testdata/test_job_stac.yml
```
