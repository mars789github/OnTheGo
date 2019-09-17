#ifndef CSSGUI_GLOBAL_H
#define CSSGUI_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CSSGUI_LIBRARY)
#  define CSSGUISHARED_EXPORT Q_DECL_EXPORT
#else
#  define CSSGUISHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CSSGUI_GLOBAL_H
