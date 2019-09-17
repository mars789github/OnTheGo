#include "cssdatabaseconfig.h"
#include "ui_cssdatabaseconfig.h"

using namespace CssSql;
using namespace Css::AppSettings;

CssDataBaseConfig::CssDataBaseConfig(QString iniFilePath, QWidget *parent) :
    QDialog(parent), ui(new Ui::CssDataBaseConfig),
    _configFilePath(iniFilePath)
{
    ui->setupUi(this);

    QString st = readSettings(_configFilePath, "database", "driver").toString();
    ui->driver->setText(st);

    st = readSettings(_configFilePath, "database", "host").toString();
    ui->host->setText(st);

    st = readSettings(_configFilePath, "database", "port").toString();
    ui->port->setValue(st.toInt());

    st = readSettings(_configFilePath, "database", "database").toString();
    ui->database->setText(st);

    st = readSettings(_configFilePath, "database", "username").toString();
    ui->username->setText(st);

    st = readSettings(_configFilePath, "database", "password").toString();
    ui->pass->setText(st);
}

CssDataBaseConfig::~CssDataBaseConfig()
{
    delete ui;
}

bool CssDataBaseConfig::configValidated()
{
    return xda.openDatabase(ui->driver->text(),ui->database->text(),
                            ui->username->text(),ui->pass->text(),
                            ui->host->text(),ui->port->text());
}

void CssDataBaseConfig::on_connection_clicked()
{

    if(configValidated())
        QMessageBox::information(this,"Configuration", "Configuration OK!");
    else
        QMessageBox::warning(this,"Erreur", xda.getDatabase().lastError().text());
}

void CssDataBaseConfig::on_validate_clicked()
{
    if(!configValidated()){
        QMessageBox::warning(this,"Erreur", xda.getDatabase().lastError().text() +
                             "\n" + "Can't save invalid config !");
    }

    writeSettings(_configFilePath, "database", "driver", ui->driver->text());

    writeSettings(_configFilePath, "database", "host", ui->host->text());

    writeSettings(_configFilePath, "database", "port", ui->port->value());

    writeSettings(_configFilePath, "database", "database", ui->database->text());

    writeSettings(_configFilePath, "database", "username", ui->username->text());

    writeSettings(_configFilePath, "database", "password", ui->pass->text());

    QMessageBox::information(this,"App Configuration", "Configuration Saved!");

    this->close();

}
