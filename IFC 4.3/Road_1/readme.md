
## Road_1

### Intent

Automatically generated IFC file from a corresponding test file in Civil 3D. 

Converting the data given by the API of Civil into the IFC schema. Exports a
corridor containing two different crosssections. The Road builds up on the Alignment
corresponding to UT_Alignment_3.

Information for the Pavment of the Corridor:

Cross Section 1:
	- width 2.00[m]
	- slope -3,00 [%]
	
Cross Section 2:
	- width 3.60 [m]
	- slope -2.00 [%]


### Prerequisites

This scenario builds upon following other scenarios:
- Alignment_3

### Content

This scenario covers the following concepts and/or IFC entities:
- `IfcRoad` 
- `IfcPavment`
- `IfcOpenCrossProfileDef`


### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| UT_Road_1.ifc                     | the exported corridor as IFC document     |
| UT_Road_1.jpg                     | screenshot from Civil 3D				    |
| UT_Road_1.dwg                     | originating Civil 3D file				    |

