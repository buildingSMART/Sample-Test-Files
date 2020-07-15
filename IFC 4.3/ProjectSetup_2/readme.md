
# UT: Project Set Up - 2

### Intent

This scenario introduces simple owner history. 
- It sets the history of `IfcProject` to have been produced by Stefan Jaud with Sublime Text.

### Prerequisites

This scenario builds upon following other scenarios:
- ProjectSetup_1

### Content

This scenario covers the following concepts and/or IFC entities:
- owner history
  - `IfcOwnerHistory`
  - `IfcPersonAndOrganization`
- software information
  - `IfcAppication`
- personal information
  - `IfcActorRole`
  - `IfcPerson`
- postal information
  - `IfcPostalAddress`
- organizational information
  - `IfcOrganization`

### Supporting files

Following files correspond to this scenario:

| Filename                          | Description                               |
|-----------------------------------|-------------------------------------------|
| `UT_ModelSetup_2.ifc`           | the IFC document							|
| `UT_ModelSetup_2.png`			| a screen dump of owner history			|

### Additional explanation

This UT adds some information about the person and application responsible for authoring the project.
There are no products, geometries, properties or anything inside.
The main purpose is to have a basis for all UT, where this kind of *boilerplate* content will be included, but not explained in detail.