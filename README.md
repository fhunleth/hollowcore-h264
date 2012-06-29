HollowCore H.264 decoder
------------------------

This is a completely stripped down version of the Android OpenCORE 
multimedia framework so that only the software H.264 decoder remains. It is
an attempt to make it easier to integrate an H.264 decoder with a
C/C++ application. To that end, all externally needed header files
are in the /include directory and the code produces one small
shared library.

Currently, the project builds using qmake. To build, run:

qmake hollowcore.pro
make
 
Usage
-----

See include/avc_h264/avcdec_api.h for the main calls to the decoder.
The general flow in your application is the following:

  1. Read data from a file or stream
  2. Parse that data into NAL units using PVAVCAnnexBGetNALUnit()
     or other mechanism
  3. Check the NAL type and call PVAVCDecodeSlice for slices and IDR,
     PVAVCDecSeqParamSet for SPS, and PVAVCDecPicParamSet for PPS NALs
  4. Call PVAVCDecGetOutput to get the decoded frames out

Limitations
-----------

The decoder has the same limitations as the original Android
OpenCore decoder. The one that most often affects me is the lack
of support for CABAC entropy encoding. SEI metadata support is
also minimal.


