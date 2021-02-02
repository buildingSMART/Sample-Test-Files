# IFC schema check procedure: documentation

### Trigger

The check is initiated for every pull request.

The procedure checks newly added as well as modified IFC files.

### Steps

The checking procedure consists of these consecutive steps:
1. <a name="filter"></a> filter
  - filters the pull request for IFC files
1. <a name="check"></a> check
  - runs the checker on filtered IFC files
1. <a name="validate"></a> validate
  - collects the results from checking
  - uploads the artifacts (see [artifacts](#Artifacts))
1. <a name="last"></a> inform_should_not_fail
  - informs the user about the results

### Interpretation of results

The first three steps should not fail at any point.
If that happens, the checking results are invalid and a further investigation in the checking procedure is needed.
In this case, please open a new issue with the repository.

If the [last step](#last) fails as shown below, the IFC files have error(s) in them.

![](./screen_dump_schema_check_fail.png)

The reason(s) for failing are provided in the `checking_result` [artifact](#Artifacts).

If all steps pass successfully, there are no (known) schema issues with the provided IFC files.

### Artifacts

The procedure produces a `zip` directory named `checking_result` with the following content:
- `MVDChecker.xsl`: style sheet for XML results
- for each IFC file determined in [filter step](#filter):
  - `<filename>.ifc`: the original IFC file (for your reference)
  - `<filename>.ifc.chkxml`: the XML file containing all errors, warnings, and suggestion as produced by the [checker](#check)

To visualize the content of the `chkxml` files, use the provided style sheet and a viewer of your choice.
For example, you can:
- use [xsltransform](http://xsltransform.net/), 
- save the resulting HTML to your machine, and 
- study the checking results locally.

### Acknowledgements

This work would not be possible without the awesome checker provided by @arch1501 . Thank you!

The checking procedure was written by @pjanck for the needs of the IFC Infrastructure Extensions Deployment project.
