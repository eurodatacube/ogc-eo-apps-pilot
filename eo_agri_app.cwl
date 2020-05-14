baseCommand: ./usr/local/src/masterclassification/scripts/classify_parcel.py
class: CommandLineTool
id: node
inputs:
  wkt_geometry:
    inputBinding:
      position: 1
    type: string
  staged_stack:
    inputBinding:
      position: 2
      prefix: --input-stac=
    type: File

outputs:
  result:
    outputBinding:
      glob: '*.geojson'
    type: File
stderr: std.err
stdout: std.out
hints:
  DockerRequirement:
    dockerPull: registry.gitlab.eox.at/maps/masterclassification:ogc_demo
cwlVersion: v1.0
