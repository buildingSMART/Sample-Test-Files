
## Road_1

### Intent

Automatically generated IFC file from a corresponding test file in Civil 3D. 

Converting the data exctracted from a Civil3D project into an IFC model. Exports a
corridor containing two different crosssections. The road builds up on the alignment
corresponding to UT_Alignment_3.

Information for the pavement of the corridor:

Cross section 1:
	- width 2.00[m]
	- slope of the pavement -3,00 [%]
	
Cross section 2:
	- width 3.60 [m]
	- slope of the pavement -2.00 [%]


### Prerequisites

This scenario builds upon following other scenarios:
- Alignment_3


### Content

This scenario covers the following concepts and/or IFC entities:
- `IfcRoad` 
- `IfcPavement`
- `IfcOpenCrossProfileDef`


### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| UT_Road_1.ifc                     | the exported corridor as IFC document     |
| UT_Road_1.jpg                     | screenshot from Civil 3D				    |
| UT_Road_1.dwg                     | originating Civil 3D file				    |
