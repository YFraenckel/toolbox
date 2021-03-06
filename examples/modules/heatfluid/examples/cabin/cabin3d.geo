Coherence;
h=0.01;
//Floor
Point(1) = {-2, -0.05, 0.75, h};
Point(2) = {2, -0.05, 0.75, h};
Point(3) = {2, -0.05, -0.75, h};
Point(4) = {-2, -0.05, -0.75, h};

//Outlet Right
Point(5) = {2, -0.05, 0.4, h};
Point(6) = {2, -0.05, -0.4, h};
Point(7) = {1.9, -0.05, -0.4, h};
Point(8) = {1.9, -0.05, 0.4, h};
Point(9) = {2, 0.05, 0.4, h};
Point(10) = {2, 0.05, -0.4, h};
Point(11) = {1.90, 0.05, -0.4, h};
Point(12) = {1.90, 0.05, 0.4, h};

//Outlet Left
Point(13) = {-2, -0.05, -0.4, h};
Point(14) = {-2, -0.05, 0.4, h};
Point(15) = {-1.9, -0.05, 0.4, h};
Point(16) = {-1.9, -0.05, -0.4, h};
Point(17) = {-2, 0.05, -0.4, h};
Point(18) = {-2, 0.05, 0.4, h};
Point(19) = {-1.90, 0.05, 0.4, h};
Point(20) = {-1.90, 0.05, -0.4, h};

//Floor
Line(1) = {1, 2};
Line(2) = {2, 5};
Line(3) = {5, 8};
Line(4) = {8, 7};
Line(5) = {7, 6};
Line(6) = {6, 3};
Line(7) = {3, 4};
Line(8) = {4, 13};
Line(9) = {13, 16};
Line(10) = {16, 15};
Line(11) = {15, 14};
Line(12) = {14, 1};
Line Loop(13) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
Plane Surface(14) = {13};

//Outlet Right
Line(15) = {5, 9};
Line(16) = {9, 12};
Line(17) = {12, 8};
Line(18) = {12, 11};
Line(19) = {11, 7};
Line(20) = {11, 10};
Line(21) = {10, 6};
Line(22) = {10, 9};
Line Loop(25) = {18, 19, -4, -17};
Plane Surface(26) = {25};

//Outlet Left
Line(27) = {18, 19};
Line(28) = {19, 15};
Line(29) = {18, 14};
Line(30) = {19, 20};
Line(31) = {20, 16};
Line(32) = {20, 17};
Line(33) = {17, 13};
Line(34) = {17, 18};
Line Loop(35) = {30, 31, 10, -28};
Plane Surface(36) = {35};

//P1
Point(21) = {-0.55, 0.525, 0, h};
Point(22) = {-0.55, 0.125, 0, h};
Point(23) = {-0.55, 0.925, 0, h};
Point(24) = {-0.35, 0.525, 0, h};
Point(25) = {-0.75, 0.525, 0, h};

Ellipse(37) = {23, 21, 22, 24};
Ellipse(38) = {24, 21, 25, 22};
Ellipse(39) = {22, 21, 23, 25};
Ellipse(40) = {25, 21, 24, 23};

Rotate {{0, 1, 0}, {-0.55, 0, 0}, Pi/2} {
  Duplicata { Line{37, 38, 39, 40}; }
  }
  Circle(45) = {29, 21, 24};
  Circle(46) = {24, 21, 34};
  Circle(47) = {34, 21, 25};
  Circle(48) = {25, 21, 29};
  Line Loop(49) = {37, 46, 44};
  Ruled Surface(50) = {49};
  Line Loop(51) = {41, 45, -37};
  Ruled Surface(52) = {51};
  Line Loop(53) = {48, -41, -40};
  Ruled Surface(54) = {53};
  Line Loop(55) = {47, 40, -44};
  Ruled Surface(56) = {55};
  Line Loop(57) = {43, 47, -39};
  Ruled Surface(58) = {57};
  Line Loop(59) = {46, -43, -38};
  Ruled Surface(60) = {59};
  Line Loop(61) = {45, 38, -42};
  Ruled Surface(62) = {61};
  Line Loop(63) = {48, 42, 39};
  Ruled Surface(64) = {63};


Translate {-0.5, 0, 0} {
  Duplicata { Surface{52, 50, 56, 54, 58, 64, 60, 62}; }
  }
  Translate {-1.0, 0, 0} {
    Duplicata { Surface{52, 50, 56, 54, 58, 64, 60, 62}; }
    }

Translate {1.1, 0, 0} {
  Duplicata { Surface{52, 50, 56, 54, 58, 64, 60, 62}; }
  }
  Translate {1.6, 0, 0} {
    Duplicata { Surface{52, 50, 56, 54, 58, 64, 60, 62}; }
    }
    Translate {2.1, 0, 0} {
      Duplicata { Surface{52, 50, 56, 54, 58, 64, 60, 62}; }
      }

Point(220) = {2, 0.07, 0.75, h};
Point(221) = {1.3, 1.52, 0.75, h};
Point(222) = {0.125, 2, 0.75, h};
Point(223) = {0, 0, 0.75, h};
Point(224) = {1.3, 2, 0.75, h};
Point(225) = {0.47, 2, 0.75, h};
Circle(210) = {220, 223, 221};
Ellipse(211) = {221, 224, 225, 222};
Line(216) = {220, 2};


Rotate {{0, 1, 0}, {0, 0, 0.75}, Pi} {
  Duplicata { Line{211, 210, 216}; }
  }
  Line(220) = {222, 229};

Translate {0, 0, -1.50} {
  Duplicata { Line{211, 210, 216}; }
  }
  Translate {0, 0, -1.5} {
    Duplicata { Line{217, 218, 219}; }
    }
    Line(227) = {244, 236};
    Line(228) = {222, 236};
    Line(229) = {229, 244};
    Point(248) = {0.05, 2, 0.4, h};
    Point(249) = {0.05, 2, -0.4, h};
    Point(250) = {-0.05, 2, -0.4, h};
    Point(251) = {-0.05, 2, 0.4, h};
    Point(252) = {-0.05, 1.90, 0.4, h};
    Point(253) = {0.05, 1.90, 0.4, h};
    Point(254) = {0.05, 1.90, -0.4, h};
    Point(255) = {-0.05, 1.90, -0.4, h};
    Line(230) = {248, 249};
    Line(231) = {250, 249};
    Line(232) = {250, 251};
    Line(233) = {251, 248};
    Line(234) = {253, 254};
    Line(235) = {254, 255};
    Line(236) = {255, 252};
    Line(237) = {252, 253};
    Line(238) = {253, 248};
    Line(239) = {249, 254};
    Line(240) = {250, 255};
    Line(241) = {251, 252};
    Line(242) = {241, 226};
    Line(243) = {233, 221};

Line Loop(248) = {242, 217, 229, -224};
Ruled Surface(249) = {248};
Line Loop(250) = {211, 228, -221, 243};
Ruled Surface(251) = {250};
Line(252) = {247, 232};
Line(253) = {220, 239};
Line Loop(254) = {252, 218, -242, -225};
Ruled Surface(255) = {254};
Line Loop(256) = {210, -243, -222, -253};
Ruled Surface(257) = {256};
Line Loop(258) = {229, 227, -228, 220};
Line Loop(259) = {233, 230, -231, 232};
Plane Surface(260) = {258, 259};
Line Loop(261) = {231, 239, 235, -240};
Plane Surface(262) = {261};
Line Loop(263) = {230, 239, -234, 238};
Plane Surface(264) = {263};
Line Loop(265) = {237, 238, -233, 241};
Plane Surface(266) = {265};
Line Loop(267) = {232, 241, -236, -240};
Plane Surface(268) = {267};
Line Loop(269) = {237, 234, 235, 236};
Plane Surface(270) = {269};
Line Loop(271) = {27, 28, 11, -29};
Plane Surface(272) = {271};
Line Loop(273) = {32, 33, 9, -31};
Plane Surface(274) = {273};
Line Loop(277) = {30, 32, 34, 27};
Plane Surface(278) = {277};
Line Loop(279) = {15, 16, 17, -3};
Plane Surface(280) = {279};
Line Loop(281) = {5, -21, -20, 19};
Plane Surface(282) = {281};
Line Loop(285) = {22, 16, 18, 20};
Plane Surface(286) = {285};
Line Loop(287) = {217, -220, -211, -210, 216, -1, -219, 218};
Plane Surface(288) = {287};
Line Loop(289) = {225, 224, 227, -221, -222, 223, 7, -226};
Plane Surface(290) = {289};


Line Loop(291) = {216, 2, 15, -22, 21, 6, -223, -253};
Plane Surface(292) = {291};
Line Loop(293) = {226, 8, -33, 34, 29, 12, -219, -252};
Plane Surface(294) = {293};
Surface Loop(295) = {14, 288, 249, 255, 294, 290, 260, 251, 257, 292, 280, 286, 26, 282, 268, 266, 270, 264, 262, 274, 278, 36, 272};
Surface Loop(296) = {131, 139, 147, 127, 123, 135, 143, 151};
Surface Loop(297) = {160, 168, 176, 156, 152, 164, 172, 180};
Surface Loop(298) = {189, 197, 205, 185, 181, 193, 201, 209};
Surface Loop(299) = {56, 58, 60, 50, 52, 54, 64, 62};
Surface Loop(300) = {73, 81, 89, 69, 65, 77, 85, 93};
Surface Loop(301) = {98, 94, 106, 114, 122, 118, 110, 102};
Volume(302) = {295, 296, 297, 298, 299, 300, 301};

Physical Surface("inlet") = {270};
Physical Surface("outlet1") = {36};
Physical Surface("outlet2") = {26};
Physical Surface("passengers") = {94, 122, 98, 106, 114, 102, 110, 118, 77, 73, 65, 69, 89, 93, 85, 81, 54, 56, 52, 50, 60, 62, 64, 58, 135, 131, 123, 127, 151, 147, 139, 143, 164, 160, 152, 156, 180, 176, 172, 168, 193, 189, 181, 185, 205, 209, 197, 201};
Physical Surface("walls") = {14, 292, 280, 282, 286, 257, 251, 260, 264, 266, 268, 262, 249, 255, 294, 278, 274, 272, 290, 288};
Physical Volume("Fluid") = {302};
