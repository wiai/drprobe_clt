# precompile files to be linked by f2py
gfortran -c -fPIC ../../wekoscatt.f90 ../../integration.f90 

# make python module pyfefa
python -m numpy.f2py -c ../scattf.f90  -L. -I. wekoscatt.o integration.o  -m pyfefa

# remove files
rm *.o

# pyweko.pyd needs MSYS64 runtime dlls found e.g. in c:\msys64\mingw64\bin\
# libgcc_s_seh-1.dll libgfortran-5.dll libquadmath-0.dll libwinpthread-1.dll
