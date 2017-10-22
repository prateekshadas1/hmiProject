#include "RefreshTest.h"
#include <iostream>

using namespace std;

RefreshTest::RefreshTest(QObject *parent) : QObject(parent)
{

}

void RefreshTest::onReleased()
{

   cout << "starting on refresh " << endl;
}
