#ifndef CSSDATABASECONFIG_H
#define CSSDATABASECONFIG_H

#include <QDialog>
#include "csslibrary.h"

namespace Ui {
class CssDataBaseConfig;
}

class CssDataBaseConfig : public QDialog
{
    Q_OBJECT

public:
    explicit CssDataBaseConfig(QString iniFilePath, QWidget *parent = 0);
    ~CssDataBaseConfig();

private slots:

    bool configValidated();

    void on_connection_clicked();

    void on_validate_clicked();

private:
    Ui::CssDataBaseConfig *ui;
    QString _configFilePath;
    CssSql::DataConnect xda;

};

#endif // CSSDATABASECONFIG_H
