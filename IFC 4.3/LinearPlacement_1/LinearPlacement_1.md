
# LinearPlacement_1
--- 

### Intent

This scenario is a sample for local and linear placements along an alignment curve. 
An IfcLinearPlacement defines a point in space in dependency to a referenced space curve (often IfcAlignmentCurve). 
The euclidian coordinates can be calculated out of the station/referent along the given alignment curve and related offsets in longitudinal, lateral, and vertical direction. 
The sample contains an IfcBuildingElementProxy product represented by a cuboid. This element is positioned in several ways: 
-  IfcLocalPlacement: the Euclidian points are directly given by x, y, and z-value. 
-  IfcLinearPlacement: the position is defined by the distance along the referenced curve and the orientation (which then contains information about offsets). 

### Prerequisites

This scenario builds upon following other scenarios:
- none

### Content

This scenario builds upon following scenarios:
- project structure
  - `IfcProject`
  - `IfcSite`
- default unit assignment
  - `IfcUnitAssignment`
  - `IfcSIUnit`
- alignment
  - `IfcAlignment`
- core spatial structure
  - `IfcProject`
  -  `IfcSite`

This scenario might be extended by the following concepts: 
- GeoRef (see Georeferencing_1 scenario)
- advanced spatial structure
- Element assemblies and aggregations
- advanced geometry representations  


### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `UT_LinearPlacement_1.ifc`        | the exported content as IFC document      |
| `UT_LinearPlacement_1_1.png`      | screenshot from the KIT FZK Viewer        |
| `UT_LinearPlacement_1_2.png`      | screenshot from the KIT FZK Viewer        |
| `UT_LinearPlacement_1_3.pdf`      | drawing of intended content               |

