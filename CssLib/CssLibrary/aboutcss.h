#ifndef ABOUTCSS_H
#define ABOUTCSS_H
#include "ui_aboutcss.h"
#include <QDialog>

namespace Ui {
class aboutCSS;
}

class aboutCSS : public QDialog
{
    Q_OBJECT

public:
    explicit aboutCSS(QWidget *parent = 0) :
        QDialog(parent),
        ui(new Ui::aboutCSS)
    {
        ui->setupUi(this);
    }
    ~aboutCSS()
    {
        delete ui;
    }

private:
    Ui::aboutCSS *ui;
};

#endif // ABOUTCSS_H
