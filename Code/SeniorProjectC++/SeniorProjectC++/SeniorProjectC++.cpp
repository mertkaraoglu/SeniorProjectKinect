// SeniorProjectC++.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Device.h"



int main()
{

	Device* newDev = new Device();

	bool initilization = newDev->initKinect();
	
	newDev->getDepth();


	return 0;
}

