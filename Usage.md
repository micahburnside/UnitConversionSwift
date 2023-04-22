/*
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
 */
 
# Documentation

/*
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
 */

# Usage

There are two ways to perform unit conversions with this swift package. You can use one of the curated methods like convertUnitToUnitLength and convertUnitToUnitVolume. Or, you can use a flexible method like convertUnitToUnit(unitValue:unitType:outputType). It can take in any of the Units and Measurements API classes. However, it is prone to error and is not as easy to use as the other provided methods. You can call any type of Unit in this method. This method can be prone to errors and is not as easy to use as the other methods. 

### Example 1 : Convert centimeters to inches - convertUnitToUnitLength
1. Call one of the package unit conversion methods on the Converter class. 
```
Converter.convertUnitToUnitLength(unitValue:unitType:outputType)
```
2. Add the value to be converted (2.54)
```
Converter.convertUnitToUnitLength(unitValue:2.54, unitType: UnitLength, outputType: UnitLength)
```
3. Select unitType (.centimeters)
```
Converter.convertUnitToUnitLength(unitValue:2.54, unitType: .centimeters, outputType: UnitLength)
```
4. Select outputType (.inches)
```
Converter.convertUnitToUnitLength(unitValue:2.54, unitType: .centimeters, outputType: .inches)
```
5. Assign the operation to a constant
```
let convertedValue = Converter.convertUnitToUnitLength(unitValue: 2.54, unitType: .centimeters, outputType: .inches)
```
6. Make the operation dynamic and assign it to a variable 
```
var userinput: String?
let convertedValue = Converter.convertUnitToUnitLength(unitValue: userInput, unitType: .centimeters, outputType: .inches)
```

### Example 2: Convert centimeters to inches - convertUnitToUnit
```
Converter.convertUnitToUnit(unitValue: 2.54, unitType: UnitLength.centimeters, outputType: UnitLenght.inches)
```

## Setting Decimal Places
### Example 3: Convert Celsius To Fahrenheit, Set the Decimal Place
 If you need to set the number of decimal places, pass in one of the methods as the convertedValue argument in roundedValue(convertedValue:decimalPlace)
```
let outputValueRounded = roundedValue(value:convertUnitToUnitTemperature(unitValue:0, unitType: .fahrenheit, outputType: .celsius), decimalPlaces: 0)
print("\(outputValueRounded)")
```

# Included Methods

```
public static func convertUnitToUnit(unitValue: Double, unitType: UnitLength, outputType: UnitLength) -> Double?

public static func convertUnitToUnitLength(unitValue: Double, unitType: UnitLength, outputType: UnitLength) -> Double?

public static func convertUnitToUnitTemperature(unitValue: Double, unitType: UnitTemperature, outputType: UnitTemperature) -> Double?

public static func convertUnitToUnitArea(unitValue: Double, unitType: UnitArea, outputType: UnitArea) -> Double?

public static func convertUnitToUnitVolume(unitValue: Double, unitType: UnitVolume, outputType: UnitVolume) -> Double?

public static func convertUnitToUnitMass(unitValue: Double, unitType: UnitMass, outputType: UnitMass) -> Double?

public static func convertUnitToUnitAngle(unitValue: Double, unitType: UnitAngle, outputType: UnitAngle) -> Double?

public static func convertUnitToUnitPower(unitValue: Double, unitType: UnitPower, outputType: UnitPower) -> Double?

public static func convertUnitToUnitEnergy(unitValue: Double, unitType: UnitEnergy, outputType: UnitEnergy) -> Double?

public static func convertUnitToUnitSpeed(unitValue: Double, unitType: UnitSpeed, outputType: UnitSpeed) -> Double?

publist static func convertUnitToUnitDuration(unitValue: Double, unitType: UnitDuration, outputType: UnitDuration) -> Double?

public static func convertUnitToUnitPressure(unitValue: Double, unitType: UnitPressure, outputType: UnitPressure) -> Double?

public static func convertUnitToUnitFrequency(unitValue: Double, unitType: UnitFrequency, outputType: UnitFrequency) -> Double?

public static func convertUnitToUnitAcceleration(unitValue: Double, unitType: UnitAcceleration, outputType: UnitAcceleration) -> Double?

public static func convertUnitToUnitElectricCharge(unitValue: Double, unitType: UnitElectricCharge, outputType: UnitElectricCharge) -> Double?

public static func convertUnitToUnitElectricCurrent(unitValue: Double, unitType: UnitElectricCurrent, outputType: UnitElectricCurrent) -> Double?

public static func convertUnitToUnitElectricPotentialDifference(unitValue: Double, unitType: UnitElectricPotentialDifference, outputType: 
UnitElectricPotentialDifference) -> Double?

public static func convertUnitToUnitElectricResistance(unitValue: Double, unitType: UnitElectricResistance, outputType: UnitElectricResistance) -> Double?

public static func convertUnitToUnitConcentrationMass(unitValue: Double, unitType: UnitConcentrationMass, outputType: UnitConcentrationMass) -> Double?

public static func convertUnitToUnitFuelEfficiency(unitValue: Double, unitType: UnitFuelEfficiency, outputType: UnitFuelEfficiency) -> Double?

public static func convertUnitToUnitInformationStorage(unitValue: Double, unitType: UnitInformationStorage, outputType: UnitInformationStorage) -> Double?

// Sets the decimal place on any converted value
public static func setDecimalPlace(convertedValue: Double, decimalPlaces: Int) -> Double
```
#
# Additional Information
## Physical Dimension
### class `UnitArea` - A unit of measure for area.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Square Megameters | .squareMegameters | Mm² | 1e12 |
| Square Kilometers | .squareKilometers | km² | 1000000.0 |
| Square Meters | .squareMeters | m² | 1.0 |
| Square Centimeter | s.quareCentimeters | cm² | 0.0001 |
| Square Millimeters | .squareMillimeters | mm² | 0.000001 |
| Square Micrometers | .squareMicrometers | µm² |1e-12 |
| Square Nanometers | .squareNanometers | nm² | 1e-18 |
| Square Inches | .squareInches | in²| 0.00064516 |
| Square Feet | .squareFeet | ft² | 0.092903 |
| Square Yards | .squareYards | yd² |0.836127 |
| Square Miles | .squareMiles | mi² | 2.59e+6 |
| Acres | .acres | ac | 4046.86 |
| Ares | .ares | a | 100 |
| Hectares | .hectares | ha | 10000 |
#
### class `UnitLength` - A unit of measure for length
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Megameters | .megameters | Mm | 1000000.0 |
| Kilometers | .kilometers | kM | 1000.0 |
| Hectometers | .hectometers | hm | 100.0 |
| Decameters | .decameters | dam | 10.0 |
| Meters | .meters | m | 1.0 |
| Decimeters | .decimeters | dm | 0.1 |
| Centimeters | .centimeters | cm| 0.01 |
| Millimeters | .millimeters | mm | 0.001 |
| Micrometers | .micrometers | µm |0.000001 |
| Nanometers | .nanometers | nm | 1e-9 |
| Picometers | .picometers | pm | 1e-12 |
| Inches | .inches | in | 0.0254 |
| Feet | .feet | ft | 0.3048 |
| Yards | .yards | yd | 0.9144 |
| Miles | .miles | mi | 1609.34 |
| Scandinavian Miles | .scandinavianMiles | smi | 10000 |
| Light Years | .lightyears | ly | 9.461e+15 |
| Nautical Miles | .nauticalMiles | NM | 1852 |
| Fathoms | .fathoms | ftm | 1.8288 |
| Furlongs | .furlongs | fur | 201.168 |
| Astronomical Units | .astronomicalUnits | ua | 1.496e+11 |
| Parsecs | .parsecs | pc | 3.086e+16 |
#
### class `UnitVolume` - A unit of measure for volume.

| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Megaliters | .megaliters | ML | 1000000.0 |
| Kiloliters | .kiloliters | kL | 1000.0 |
| Liters | .liters | L | 1.0 |
| Deciliters | .deciliters | dL | 0.1 |
| Centiliters | .centiliters | cL | 0.01 |
| Milliliters | .millileters | mL | 0.001 |
| Cubic Kilometers | .cubicKilometers | km³ | 1e12 |
| Cubic Meters | .cubicMeters | m³| 1000.0 |
| Cubic Decimeters | .cubicDecimeters | dm³ | 1.0 |
| Cubic Millimeters | .cubicMillimeters | mm³ | 0.000001 |
| Cubic Inches | .cubicInches | in³ | 0.0163871 |
| Cubic Feet | .cubicFeet | ft³ | 28.3168 |
| Cubic Yards | .cubicYards | yd³ | 764.555 |
| Cubic Miles | .cubicMiles | mi³ | 4.168e+12 |
| Acre Foeet | .acreFeet | af | 1.233e+6 |
| Bushels | .bushels | bsh | 35.2391 |
| Teaspoons | .teaspoons | tsp | 0.00492892 |
| Tablespoons | .tablespoons | tbsp | 0.0147868 |
| Fluid Ounces | .fluidOunces | fl oz | 0.0295735 |
| Cups | .cups | cup | 0.24 |
| Pints | .pints | pt | 0.473176 |
| Quarts | .quarts | qt | 0.946353 |
| Gallons | .gallons | gal | 3.78541 |
| Imperial Teaspoons | .imperialTeaspoons | tsp |  0.00591939 |
| Imperial Tablespoons | .imperialTablespoons | tbsp | 0.0177582 |
| Imperial Fluid Ounces | .imperialFluidOunces | fl oz | 0.0284131 |
| Imperial Pints | .imperialPints | pt | 0.568261 |
| Imperial Quarts | .imperialQuarts | qt | 1.13652 |
| Imperial Gallons | .imperialGallons | gal | 4.54609 |
| Metric Cups | .metricCups | metric cup | 0.25 |
#
### class `UnitAngle` - A unit of measure for planar angle and rotation.

| Name | Method | Symbol | Definition |
| --- | --- | --- | --- |
| Degrees | .degrees | ° | 1.0 |
| Arc Minutes | .arcMinutes | ʹ | 0.016667 |
| Arc Seconds | .arcSeconds | ʺ | 0.00027778 |
| Radians | .radians | rad | 57.2958 |
| Gradians | .gradians | grad | 0.9 |
| Revolutions | .revolutions | rev |360 |
#

## Mass, Weight, and Force

### class `UnitMass` - A unit of measure for mass.

| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Kilograms | .kilograms | kg | 1.01 |
| Grams | .grams | g | 0.001 |
| Decigrams | .decigrams | dg | 0.0001 |
| Centigrams | .centigrams | cg | 0.00001 |
| Milligrams | .milligrams | mg | 0.000001 |
| Micrograms | .micrograms | µg | 1e-9 |
| Nanograms | .nanograms | ng | 1e-12 |
| Picograms | .picograms | pg| 1e-15 |
| Ounces | .ounces | oz | 0.0283495 |
| Pounds | .pounds | lb | 0.453592 |
| Stones | .stones | st | 0.157473 |
| Metric Tons | .metricTons | t | 1000 |
| Short Tons | .shortTons | ton | 907.185 |
| Carats | .carats | ct | 0.0002 |
| Ounces Troy | .ouncesTroy | oz t | 0.03110348 |
| Slugs | slugs | .slug | 14.5939 |
#
### class `UnitPressure` - A unit of measure for pressure.

| Name | Method | Symbol | Definition |
| --- | --- | --- | --- |
| Newtons Per Meter Squared (Equivalent to Pascals) | .newtonsPerMetersSquared | N/m² | 1.0 |
| Gigapascals | .gigapascals | GPa | 1e9 |
| Megapascals | .megapascals | MPa | 1000000.0 |
| Kilopascals | .kilopascals | kPa | 1000.0 |
| Hectopascals | .hectopascals | hPa | 100.0 |
| Inches of Mercury | .inchesOfMercury | inHg | 3386.39 |
| Bars | .bars | bar | 100000 |
| Millibars | .millibars | mbar | 100 |
| Millimeters of Mercury | .millimetersOfMercury | mmHg | 133.322 |
| Pounds Per Square Inch | .poundsForcePerSquareInch | psi | 6894.76 |

## Time and Motion
### class `UnitAcceleration` - A unit of measure for acceleration. 
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Meters Per Second Squared | .metersPerSecondSquared | m/s² | 1.0 |
| Gravity | .gravity | g | 9.81 |
#
### class `UnitDuration` - A unit of measure for a duration of time.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Seconds | .seconds | sec | 1 |
| Minutes | .minutes | min | 60 |
| Hours | .hours | hr | 3600 |
#
### class `UnitFrequency` - A unit of measure for frequency.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Terahertz | .terahertz | THz | 1e12 |
| Gigahertz | .gigahertz | GHz | 1e9 |
| Megahertz | .megahertz | MHz | 1000000.0 |
| Kilohertz | .kilohertz | kHz | 1000.0 |
| Hertz | .hertz | Hz | 1 |
| Millihertz | .millihertz | mHz | 0.001 |
| Microhertz | .microhertz | µHz | 0.000001 |
| Nanohertz | .nanohertz | nHz | 1e-9 |
#
### class `UnitSpeed` - A unit of measure for speed.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Meters Per Second | .metersPerSecond | m/s | 1.0 |
| Kilometers Per Hour | .kilometersPerHour | km/h | 0.277778 |
| Miles Per Hour | .milesPerHour | mph | 0.44704 |
| Knots | .knots | kn | 0.514444 |
#
## Energy, Heat, and Light
### class `UnitEnergy` - A unit of measure for energy.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Kilojoules | .kilojoules | kJ | 1000.0 |
| Joules | .joules | J | 1.0 |
| Kilocalories | .kilocalories | kCal | 4184.0 |
| Calories | .calories | cal | 4.184 |
| Kilowatt Hours | .kilowattHours | kWh | 3600000.0 |
#
### class `UnitPower` - A unit of measure for power.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Terawatts | .terawatts | TW | 1e12 |
| Gigawatts | .gigawatts | GW | 1e9 |
| Megawatts | .megawatts | MW | 1000000.0 |
| Kilowatts | .kilowatts | kW | 1000.0 |
| Watts | .watts | W | 1 |
| Milliwatts | .milliwatts | mW | 0.001 |
| Microwatts | .microwatts | µW | 0.000001 |
| Nanowatts | .nanowatts | nW | 1e-9 |
| Picowatts | .picowatts | pW | 1e-12 |
| Femtowatts | .femtowatts | fW | 1e-15 |
| Horsepower | .horsepower | hp | 745.7 |
#
### class `UnitTemperature` - A unit of measure for temperature.
| Name | Method | Symbol | Coefficient | Constant |
| --- | --- | --- | --- | --- |
| Kelvin | .kelvin | K | 1 | 0 |
| Degree Celsius | .celsius | °C | 1.0 | 273.15 |
| Degree Fahrenheit | .fahrenheit | °F | 0.55555555555556 | 255.37222222222427 |
#

### ILLUMINANCE OMMITTED

## Electricity

### class `UnitElectricCharge` - A unit of measure for electric charge.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Coulombs | .coulombs | C | 1.0 |
| Megaampere Hours | .megaampereHours | MAh | 3.6e9 |
| Kiloampere Hours | .kiloampereHours | kAh | 3600000.0 |
| Ampere Hours | .ampereHours | Ah | 3600.0 |
| Milliampere Hours | .milliampereHours | mAh | 3.6 |
| Microampere Hours | .microampereHours | µAh | 0.0036 |
#
### class `UnitElectricCurrent` - A unit of measure for electric current.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Megaamperes | .megaamperes | MA | 1000000.0 |
| Kiloamperes | .kiloamperes | kA | 1000.0 |
| Amperes | .amperes | A | 1.0 |
| Milliamperes | .milliamperes | mA | 0.001 |
| Microamperes | .microamperes | µA | 0.000001 |
#
### class `UnitElectricPotentialDifference` - A unit of measure for electric potential difference.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Megavolts | .megavolts | MV | 1000000.0 |
| Kilovolts | .kilovolts | kV | 1000.0 |
| Volts | .volts | V | 1.0 |
| Millivolts | .millivolts | mV | 0.001 |
| Microvolts | .microvolts | µV | 0.000001 |
#
### class `UnitElectricResistance` - A unit of measure for electric resistance.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Megaohms | .megaohms | MΩ | 1000000.0 |
| Kiloohms | .kiloohms | kΩ | 1000.0 |
| Ohms | .ohms | Ω | 1.0 |
| Milliohms | .milliohms | mΩ | 0.001 |
| Microohms | .microohms | µΩ | 0.000001 |
#

## Concentration and Dispersion

### class `UnitConcentrationMass` - A unit of measure for concentration of mass.
| Name | Method | Symbol | Coefficient |
| --- | --- | --- | --- |
| Grams Per Liter | .gramsPerLiter | g/L | 1 |
| Milligrams Per Deciliter | .milligramsPerDeciliter | mg/dL | 0.01 |
| Millimoles Per Liter | .millimolesPerLiter(withGramsPerMole:) | mmol/L | 18 * gramsPerMole |
#
### UNIT DISPERSION OMMITTED
#
## Fuel Efficiency
### class `UnitFuelEfficiency` - A unit of measure for fuel efficiency.
| Name | Method | Symbol |
| --- | --- | --- |
| Liters Per 100 Kilometers | .litersPer100Kilometers | L/100km |
| Miles Per Gallon | .milesPerGallon | mpg |
| Miles Per Imperial Gallon | .milesPerImperialGallon | mpg |

#
## Data Storage
### class `UnitInformationStorage` - A unit of measure for quantities of information.
## Information Transfer
| Decimal Bits | Coefficient | Binary Bits | Coefficient |
| --- | --- | --- | --- |
| kilobits | 1000 | kikibits |1024 |
| megabits | 1000e2 | mebibits | 1024e2 |
| gigabits | 1000e3 | gibibits | 1024e3 |
| terabits | 1000e4 | tebibits | 1024e4 |
| petabits | 1000e5 | pebibits | 1024e5 |
| exabits | 1000e6 | exbibits | 1024e6 |
| zettabits | 1000e7 | zebibits | 1024e7 |
| yottabits | 1000e8 | yobibits | 1024e8 |

## Information Storage
| Decimal Bits | Coefficient | Binary Bits | Coefficient |
| --- | --- | --- | --- |
| kilobytes | 1000 | kibibytes |1024 |
| megabytes | 1000e2 | mebibytes | 1024e2 |
| gigabytes | 1000e3 | gibibytes | 1024e3 |
| terabytes | 1000e4 | tebibytes | 1024e4 |
| petabytes | 1000e5 | pebibytes | 1024e5 |
| exabytes | 1000e6 | exbibytes | 1024e6 |
| zettabytes | 1000e7 | zebibytes | 1024e7 |
| yottabytes | 1000e8 | yobibytes | 1024e8 |


