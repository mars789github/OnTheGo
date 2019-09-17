#ifndef CSSPRINT_GLOBAL_H
#define CSSPRINT_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CSSPRINT_LIBRARY)
#  define CSSPRINTSHARED_EXPORT Q_DECL_EXPORT
#else
#  define CSSPRINTSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CSSPRINT_GLOBAL_H
