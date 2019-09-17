#ifndef CSSAPPCONFIG_H
#define CSSAPPCONFIG_H

#include <QDialog>
#include "csslibrary.h"

namespace Ui {
class CssAppConfig;
}

class CssAppConfig : public QDialog
{
    Q_OBJECT

public:
    explicit CssAppConfig(QString iniFile, QWidget *parent = 0);
    ~CssAppConfig();

private slots:
    void on_validate_clicked();

private:
    Ui::CssAppConfig *ui;
    QString _configFilePath;
};

#endif // CSSAPPCONFIG_H
