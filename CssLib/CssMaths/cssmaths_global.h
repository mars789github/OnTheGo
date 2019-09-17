#ifndef CSSMATHS_GLOBAL_H
#define CSSMATHS_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CSSMATHS_LIBRARY)
#  define CSSMATHSSHARED_EXPORT Q_DECL_EXPORT
#else
#  define CSSMATHSSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CSSMATHS_GLOBAL_H
