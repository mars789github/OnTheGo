#ifndef CSSSPACE_GLOBAL_H
#define CSSSPACE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CSSSPACE_LIBRARY)
#  define CSSSPACESHARED_EXPORT Q_DECL_EXPORT
#else
#  define CSSSPACESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CSSSPACE_GLOBAL_H
