 Copyright (c) [2023] [MicahBurnside]

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 

# UnitConversionSwift
This Swift Package is a collection of methods that implement the built in methods from the Units and Measurement API to perform unit conversion calculations with ease. 
https://developer.apple.com/documentation/foundation/units_and_measurement
#
## Table of Contents

- [Installation](#installation)
- [AvailableUnits](#availableunits)
- [License](#license)

## Installation

Swift packages can be installed 

### Package Manager

You can use Swift Package Manager to install this package

### Manually
Add the following dependency to your Package.swift file:

```
dependencies: [
    .package(url: "https://github.com/micahburnside/UnitConversionSwift.git", from: "1.0.0"),
],
```
Then run the following command:

```
bash
Copy code
$ swift build
```

Alternatively, you can manually install this package by cloning the repository and running the following command:

```
$ git clone https://github.com/micahburnside/UnitConversionSwift.git
$ cd package
$ swift build
```

## Xcode
If you prefer to use Xcode to build and run this package, follow these steps:

Open Xcode and select File > Swift Packages > Add Package Dependency.
Enter the URL of this package's repository (e.g. https://github.com/micahburnside/UnitConversionSwift.git) and click Next.
Select the version of the package you want to use and click Next.
Choose the target where you want to add the package dependency and click Finish.
That's it! You should now be able to use this package in your Swift project.


# Available Units

##Physical Dimension
    - UnitArea: A unit of measure for area.
    - UnitLength: A unit of measure for length.
    - UnitVolume: A unit of measure for volume.
    - UnitAngle: A unit of measure for planar angle and rotation.

## Mass, Weight, and Force
    - UnitMass: A unit of measure for mass.
    - UnitPressure: A unit of measure for pressure.

## Time and Motion
    - UnitAcceleration: A unit of measure for acceleration.
    - UnitDuration: A unit of measure for a duration of time.
    - UnitFrequency: A unit of measure for frequency.
    - UnitSpeed: A unit of measure for speed.

## Energy, Heat, and Light
    - UnitEnergy: A unit of measure for energy.
    - UnitPower: A unit of measure for power.
    - UnitTemperature: A unit of measure for temperature.
    - UnitIlluminance: A unit of measure for illuminance.

## Electricity
    - UnitElectricCharge: A unit of measure for electric charge.
    - UnitElectricCurrent: A unit of measure for electric current.
    - UnitElectricPotentialDifference: A unit of measure for electric potential difference.
    - UnitElectricResistance: A unit of measure for electric resistance.

## Concentration and Dispersion
    - UnitConcentrationMass: A unit of measure for concentration of mass.
    - UnitDispersion: A unit of measure for specific quantities of dispersion.

## Fuel Efficiency
    - UnitFuelEfficiency: A unit of measure for fuel efficiency.

## Data Storage
    - UnitInformationStorage: A unit of measure for quantities of information.

## License

Include information about the license that your project is released under. If you're using a popular open source license (e.g. MIT, Apache, etc.), you can simply provide a link to the license text.

