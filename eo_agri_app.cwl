class: CommandLineTool
id: node
inputs:
  wkt_geometry:
    inputBinding:
      position: 1
    type: string
  staged_stac:
    inputBinding:
      position: 2
      prefix: --input-stac=
    type: File?

outputs:
  result:
    outputBinding:
      glob: '*.geojson'
    type: File
hints:
  DockerRequirement:
    dockerPull: registry.gitlab.eox.at/maps/masterclassification:ogc_demo
cwlVersion: v1.0
