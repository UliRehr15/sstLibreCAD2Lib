/**********************************************************************
 *
 * sstLibreCAD2LibTest - sst Testframe for testing LibreCAD2 functions.
 * Hosted on github
 *
 * Copyright (C) 2016 Hans Ulrich Rehr
 *
 * This file may be distributed and/or modified under the terms of the
 * GNU General Public License version 2 as published by the Free Software
 * Foundation and appearing in the file gpl-2.0.txt included in the
 * packaging of this file.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * This copyright notice MUST APPEAR in all copies of the script!
 *
**********************************************************************/
// sstLibreCAD2LibTest.cpp    13.07.16  Re.    13.07.16  Re.
//
// sst Testframe for LibreCad2 functions

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <string>

#include <sstStr01Lib.h>
#include <sstMisc01Lib.h>

#include <rs.h>
#include <rs_debug.h>
#include <rs_math.h>
#include <rs_vector.h>

#include "sstLibreCAD2LibTest.h"

//=============================================================================
// int main (int argc, char *argv [])
int main ()
//=============================================================================
{

  int iStat = 0;
//-----------------------------------------------------------------------------


  sstMisc01PrtFilCls oPrtFil;

  // Open protocol file
  iStat = oPrtFil.SST_PrtAuf( 1,(char*)"sstLibreCAD2LibTest.prt");
  assert(iStat == 0);

  RS_Vector oVector1(1.0,2.0);
  RS_Vector oVector2(2.0,2.0);
  double dVal = 0.0;

  dVal = oVector1.distanceTo(oVector2);
  assert(dVal==1.0);

  oPrtFil.SST_PrtWrt(1,(char*)"Test RS_Vector.distanceTo: Success");

  // close protocol file
  oPrtFil.SST_PrtZu( 1);

  return iStat;
}
//=============================================================================
