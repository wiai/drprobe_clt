module scattf

contains

	subroutine weko(g, dw, z, akv, dwfflg, absflg, fe, fa)
        ! wrapper subroutine to use wekosca in wekoscatt.f90 from python
		implicit none
		
		real*4,    intent(in) :: g, dw, akv
		integer*4, intent(in) :: z
		logical,   intent(in) :: dwfflg, absflg ! calculation flags
		
		real*8, intent(out) :: fe, fa
        
        complex*8           :: wk
		complex*8, external :: wekosca
        
		wk = wekosca(g,dw,z,akv,dwfflg,absflg)
		
        fe = real(wk)
        fa = imag(wk)
        
	end subroutine weko
	
end module scattf

