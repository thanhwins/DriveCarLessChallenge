// Copyright (C) 2014  Davis E. King (davis@dlib.net)
// License: Boost Software License   See LICENSE.txt for the full license.
#ifndef DLIB_TEST_FOR_ODR_VIOLATIONS_CPp_
#define DLIB_TEST_FOR_ODR_VIOLATIONS_CPp_

#include "test_for_odr_violations.h"

extern "C"
{
// The point of this block of code is to cause a link time error that will prevent a user
// from compiling part of their application with DLIB_ASSERT enabled and part with them
// disabled since doing that would be a violation of C++'s one definition rule. 
#ifdef ENABLE_ASSERTS
    int USER_ERROR__inconsistent_build_configuration__see_dlib_faq_1;
#else
    int USER_ERROR__inconsistent_build_configuration__see_dlib_faq_1_;
#endif


// The point of this block of code is to cause a link time error if someone builds dlib via
// cmake as a separately installable library, and therefore generates a dlib/config.h from
// cmake, but then proceeds to use the default unconfigured dlib/config.h from version
// control.  It should be obvious why this is bad, if it isn't you need to read a book
// about C++.  Moreover, it can only happen if someone manually copies files around and
// messes things up.  If instead they run `make install` or `cmake --build .  --target
// install` things will be setup correctly, which is what they should do.  To summarize: DO
// NOT BUILD A STANDALONE DLIB AND THEN GO CHERRY PICKING FILES FROM THE BUILD FOLDER AND
// MIXING THEM WITH THE SOURCE FROM GITHUB.  USE CMAKE'S INSTALL SCRIPTS TO INSTALL DLIB.
// Or even better, don't install dlib at all and instead build your program as shown in
// examples/CMakeLists.txt
#ifdef DLIB_NOT_CONFIGURED
    int USER_ERROR__inconsistent_build_configuration__see_dlib_faq_2;
#endif
}


#endif // DLIB_TEST_FOR_ODR_VIOLATIONS_CPp_

