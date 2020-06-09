# NURBS IFC4 Sample Files from vendors
This folder contains samples of bspline lines, surfaces and solids from different applications.  
Examples are collected on crowdfunding base.  
**Thank you everybody who provided the examples and responses on the examples!**

## Repository structure
There is a subfolder for every application that provides examples with Application.md file containing information about the application.  
To organize examples the provider can create nested subfolders.  

For each example there are following files:  


1. *ExampleName* **.ifc**: The IFC4 file is an example with NURBS
2. *ExampleName* **.facet.ifc**: The file shows the same example in a tessellated of facet way (IFC4 ReferenceView or IFC2x3)
3.	(Optionally) *ExampleName* **.md**: Remarks and responses to the example about import problems etc.

## Requirements and recommendations to the examples providers
To create an application subfolder please make a pull request with *Application* **.md** file that contains application name, export state, site and contact data.  

To add an example please make a pull request with 2 IFC files with the same name, containing NURBS and facet representations.    
If you have any remark to the example, add the .md file.  
Native files used to create IFC files may be optionally provided.  

Please make basic elementary examples each contains one element.  
You may numerate files according increased complexity.  

Recommended set for basic examples:

- 	Elementary faces:  
-- single non-periodic and periodic faces  
-- faces without and with openings
-	Elementary solids:  
-- The simplest solid bounded by non-periodic faces without openings  
-- Solids with more complex faces (periodic, with openings)

## Testing the examples
If you see an issue in any example, please submit the issue

## View NURBS
The folder Viewers contains md files with info about application that can import and show bsplines.
Welcome everybody to provide the information. Please note it in the file name if the application is free.
