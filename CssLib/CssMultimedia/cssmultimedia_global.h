#ifndef CSSMULTIMEDIA_GLOBAL_H
#define CSSMULTIMEDIA_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CSSMULTIMEDIA_LIBRARY)
#  define CSSMULTIMEDIASHARED_EXPORT Q_DECL_EXPORT
#else
#  define CSSMULTIMEDIASHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CSSMULTIMEDIA_GLOBAL_H