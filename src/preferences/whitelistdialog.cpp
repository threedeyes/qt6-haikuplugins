#include "whitelistdialog.h"
#include "ui_whitelistdialog.h"
#include "config.h"

#include <QSettings>
#include <QStringList>
#include <QStringListModel>
#include <QModelIndexList>
#include <QFileDialog>
#include <QDebug>

WhiteListDialog::WhiteListDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::WhiteListDialog)
{
    ui->setupUi(this);
    QSettings settings(QT_SETTINGS_FILENAME, QSettings::NativeFormat);
    settings.beginGroup("QPA");
    listModel.setStringList(settings.value("opengl_whitelist", QStringList()).toStringList());
    ui->whiteListView->setModel(&listModel);
    settings.endGroup();
}

WhiteListDialog::~WhiteListDialog()
{
    delete ui;
}

void WhiteListDialog::on_addButton_clicked()
{
    QFileDialog dialog(this);
    dialog.setFileMode(QFileDialog::AnyFile);
    if(dialog.exec()) {
        QStringList fileNames = dialog.selectedFiles();
        if (fileNames.count() >= 1) {
            QStringList stringList = listModel.stringList();
            stringList << fileNames;
            listModel.setStringList(stringList);
        }
    }
}

void WhiteListDialog::on_removeButton_clicked()
{
    int selected = ui->whiteListView->selectionModel()->selectedIndexes().at(0).row();
    QStringList stringList = listModel.stringList();
    stringList.removeAt(selected);
    listModel.setStringList(stringList);
}

void WhiteListDialog::on_okButton_clicked()
{
    QSettings settings(QT_SETTINGS_FILENAME, QSettings::NativeFormat);
    settings.beginGroup("QPA");
    settings.setValue("opengl_whitelist", listModel.stringList());
    settings.endGroup();
    close();
}

void WhiteListDialog::on_cancelButton_clicked()
{
    close();
}
