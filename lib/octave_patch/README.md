### Octave 4.0.0 Patch
----------------------
This patch works around the defective `printf()` function in Octave 4.0.0.

Instructions:

1. Copy the contents of the `lib` folder to the `machine-learning-ex?/ex?/lib` folder for each programming exercise. Be sure you preserve the folder attributes and the other files in that subfolder.
2. Restart Octave or MATLAB after installing the patch.

This patch will overwrite these two existing files:
* `lib/makeValidFieldName.m`
* `lib/jsonlab/loadjson.m`

And it will add the following new file:
* `lib/xxNumToHexStr.m`
