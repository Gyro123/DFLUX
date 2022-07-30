      SUBROUTINE DFLUX(FLUX,SOL,KSTEP,KINC,TIME,NOEL,NPT,COORDS,JLTYP,
     1 TEMP,PRESS,SNAME)
C
      INCLUDE 'ABA_PARAM.INC'
      DIMENSION COORDS(3),FLUX(2),TIME(2)
      CHARACTER*80 SNAME
C     user coding to define FLUX(1) and FLUX(2)
C     高斯热源参数
      Q=1000
      v=50
      Rh=0.005
      d=v*TIME(2)
      x=COORDS(1)
      y=COORDS(2)
C
      x0=0
      y0=0
      z0=0
C
      PI=3.1415
C     焊件上任意一点距离热源中心的距离
      R=SQRT((x-x0-d))**2+(y-y0)**2)
C
      FLUX(1)=3*Q/(PI*Rh**2)*EXP(-3*R**2/Rh**2)
      
      RETURN
      END
