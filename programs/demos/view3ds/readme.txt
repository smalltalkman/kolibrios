View3ds 0.074 - tiny viewer to .3ds and .asc files with several graphics
                effects implementation.

What's new?
1. Fixed emboss bug in grd lines displaying model.
2. Grd line exceedes screen problem fix.
3. New rendering model - ray casted shadows and appropiate button to
   set 'on' this option. Note that is non real time model, especially when
   complex object is computed. I took effort to introduce accelerating
   structure - AABB (Axis Aligned Bounding Boxes).. but it is disabled 
   for now - seems to work incorrect(slow).


Buttons description:
1.  rotary: choosing rotary axle: x, y, x+y.
2.  shd. model: choosing shading model: flat, grd (smooth), env (spherical
    environment mapping, bump (bump mapping), tex (texture mapping),
    pos (position shading depend), dots (app draws only points - nodes of object),
    txgrd (texture mapping + smooth shading),  2tex (texture mapping + spherical
    environment mapping), bmap (bump + texture mapping),  cenv (cubic environment
    mapping), grdl (Gouraud lines - edges only), rphg (real Phong), glas (glass effect),
    ptex (real Phong + texturing + transparency).
3.  speed: idle, full.
4,5. zoom in, out: no comment.
6.  ray shadow: calc ray casted shadows.
7.  culling: backface culling on/ off.
8.  rand. light: Randomize 3 unlinear lights( so called Phong's illumination).
9.  Blur: blur N times; N=0,1,2,3,4,5
10.11,12,13. loseless operations (rotary 90, 180 degrees).
12. emboss: Do emboss effect( flat bumps ), use 'bumps deep' button to do edges
     more deep.
13. fire: do motion blur ( looks like fire ).
14. move: changes meaning x,y,z +/- buttons  ->  obj: moving object, camr: moving
      camera, wave: x,y +/- increase, decrease wave effect frequency and amplitude.
15. generate: Generates some objects: node, Thorn Crown, heart...
16. bumps: random, according to texture.
17. bumps deep -> create bumps deeper or lighter.
18. re-map tex -> re-map texture and bump map coordinates, to change spherical
     mapping  around axle use 'xchg' and 'mirror' buttons, then press 're-map tex' button.
19. bright + -> increase picture brightness.
20. bright - -> decrease picture brightness.
21. wav effect -> do effect based sine function.
22. editor -> setting editing option. If is "on" then red bars are draw according to each
   vertex, Pressing  and moving left mouse button (cursor must be on handler)- change
   vertex position. If left mouse button is released apply current position. You may also
   decrease whole handlers count by enable culling (using appropriate button) - some
   back handlers become hidden.

                         Maciej Guba             IX 2021
