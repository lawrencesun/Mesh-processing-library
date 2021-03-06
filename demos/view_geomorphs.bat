@echo off
setlocal

cd "%~p0"
call bin/_initdemos.bat

echo .
echo Move slider up and down to see geomorphs.
echo .
echo Move slider to bottom, press 'PDe' to toggle edges off.  Again move slider up and down.
echo .
echo Move slider to top.  Move object backward/forward (dragging right button), adjusting LOD using slider.
echo .

:: Could use -hwkey but problem is that mesh_init() gets called later,
::  and then that results in jerky slider motion.

set LOD_LEVEL=0.3
set G3D_DOLLY_LOD=1

G3dOGL data/standingblob.geomorphs -st data/standingblob.s3d -key ,PDeS -lightambient .5 -thickboundary 1 -sharpedgecolor #FF000000 %G3DARGS%
