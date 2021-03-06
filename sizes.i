c  
c  Written by Leandro Martínez, 2009-2011.
c  Copyright (c) 2009-2011, Leandro Martínez, Jose Mario Martinez,
c  Ernesto G. Birgin.
c  
c  This program is free software; you can redistribute it and/or
c  modify it under the terms of the GNU General Public License
c  as published by the Free Software Foundation; either version 2
c  of the License, or (at your option) any later version.
c  
c
c sizes.i: Define the maximum dimensions of the problems
c
c   maxatom:     Maximum number of atoms (total)
c   maxtype:     Maximum number of types of molecules (structures)
c   maxkeywords: Maximum number of keywords in input file
c   Maxlines:    Maximum number of lines of the input file
c   maxrest:     Maximum number of restrictions
c   mrperatom:   Maximum number of restrictions per atom
c   maxtry:      Number of tries for building the initial point  
c   nbp:         Maximum number of boxes for fast function evaluation (nbp**3)
c                FASTER FUNCTION EVALUATION IS OBTAINED WHEN
c                nbp**3 PARAMETER IS OF THE ORDER OF HALF OF THE NUMBER OF ATOMS
c                OF THE SYSTEM
c   nn:          Maximum number of variables 
c                (at least the number of molecules*6)
c
c   sidemax:     Half side length of a cube that must contain all atoms in the
c                system (which means that if the distance tolerance between
c                atoms is 2.0, the cube defined by the minimum
c                coordinates
c                   xmin = ymin = zmin = -sidemax 
c                and maximum coordinates
c                   xmax = ymax = zmax = sidemax
c                must define a region that certainly will contain all atoms
c                in the system at the solution).
c
c
      integer maxatom, maxtype, maxkeywords, maxlines, maxrest,
     +        mrperatom, nbp, nn, maxtry

      double precision sidemax

      parameter(maxatom     =    300000)
      parameter(maxtype     =        20)
      parameter(maxkeywords =       200)
      parameter(maxlines    =      1000)
      parameter(maxrest     =       200)
      parameter(mrperatom   =        10)
      parameter(maxtry      =      1000)
      parameter(nbp         =        84)
      parameter(nn          = maxatom*6)    

      parameter(sidemax     =    400.d0)

