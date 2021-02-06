
# UT Georeferencing_Tin_1 
Tin in map coordinates

## Intent

IFC 4x3 RC2
This scenario has a tin (only 1.5K triangles) with just one colour for all the triangles. 
The coordinates are in Easting, Northing and AHD for the map projection MGA94 Zone 56.
The Horizontal and Vertical datums are specified in IfcProjectedCRS.

The ifc file was written by 12d Model. 

## Prerequisites

This scenario builds upon following other scenarios:
- Georeferencing_1

## Content

This scenario covers the following concepts and/or IFC entities:

- ifcTriangulatedIrregularNetwork
- ifcSolidStratum

## KIT Checking Tool

- Only error is missing ViewDefinition but ViewDefinition is not yet defined in the standard

## Supporting files

Following files correspond to this scenario:

| Filename                     | Description                               |
|------------------------------|-------------------------------------------|
| `UT_Tin_in_MGA_56.ifc`       | the exported content as IFC document      |
| `UT_Tin_in_MGA_56.png`       | screen shot from 12d Model                |

