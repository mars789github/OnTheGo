#include "cssappconfig.h"
#include "ui_cssappconfig.h"

using namespace Css::AppSettings;

CssAppConfig::CssAppConfig(QString iniFile, QWidget *parent) :
    QDialog(parent), ui(new Ui::CssAppConfig),
    _configFilePath(iniFile)
{

    ui->setupUi(this);

    QString st = readSettings(_configFilePath, "orgInfos", "sigle").toString();
    ui->sigle->setText(st);

    st = readSettings(_configFilePath, "orgInfos", "org").toString();
    ui->org->setText(st);

    st = readSettings(_configFilePath, "orgInfos", "phone").toString();
    ui->phone->setText(st);

    st = readSettings(_configFilePath, "orgInfos", "adress").toString();
    ui->adress->setPlainText(st);

}

CssAppConfig::~CssAppConfig()
{
    delete ui;
}

void CssAppConfig::on_validate_clicked()
{

    writeSettings(_configFilePath, "orgInfos", "sigle", ui->sigle->text());

    writeSettings(_configFilePath, "orgInfos", "org", ui->org->text());

    writeSettings(_configFilePath, "orgInfos", "phone", ui->phone->text());

    writeSettings(_configFilePath, "orgInfos", "adress", ui->adress->toPlainText());

      QMessageBox::information(this,"App Configuration", "Configuration Saved!");
      this->close();

}
