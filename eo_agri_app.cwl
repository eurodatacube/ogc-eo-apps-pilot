#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
id: ogc-eo-app-pilot
inputs:
  wkt_geometry:
    inputBinding:
      position: 1
    type: string
  output_geojson:
    inputBinding:
      position: 2
    type: string
  staged_stac:
    inputBinding:
      position: 3
      prefix: --input-stac
    type: Directory?
outputs:
  result:
    outputBinding:
      glob: $(inputs.output_geojson)
    type: File
hints:
  DockerRequirement:
    dockerPull: registry.gitlab.eox.at/maps/masterclassification:ogc_demo
