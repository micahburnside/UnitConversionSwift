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

import Foundation

public final class Converter {
// MARK: - roundedValue - Rounds a number to a custom decimal place
/**
 Rounds a given double value down to a specified number of decimal places.
        - Parameter convertValue: The double value to be shortened.
        - Parameter decimalPlaces: The number of places to the right to set the decimal
        - Returns: The double value rounded down to the specified number of decimal places.
*/
    public static func setDecimalPlace(convertedValue: Double, decimalPlaces: Int) -> Double {
        let multiplier = pow(10.0, Double(decimalPlaces))
        let roundedValue = (convertedValue * multiplier).rounded(.up) / multiplier
        return roundedValue
    }
    
// MARK: - convertUnitToUnit - Converts a unit measurement from one unit to another measurement unit.
/**
     Converts a given value from one unit of measurement to another unit of the same measurement type. This is the most flexible function in the swift package. It access any
     - Parameters:
         - `unitValue:` The value to be converted.
         - `unitType:` The unit of measurement of the input value.
         - `outputType:` All available apple provided units of measurement from the 'Units and Measurement' API for the output value.
     - Returns: The converted value in the specified unit of measurement, or `nil` if conversion is not possible.
     */
    
    public static func convertUnitToUnit(unitValue: Double, unitType: Unit, outputType: Unit) -> Double? {
        guard unitType.isKind(of: Dimension.self), outputType.isKind(of: Dimension.self) else {
            return nil
        }
        
        let measurement = Measurement(value: unitValue, unit: unitType as! Dimension)
        let convertedMeasurement = measurement.converted(to: outputType as! Dimension)
        
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitArea - Converts a area measurement to another area measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the area measurement.
        - `unitType:` The initial unit type of the area measurement.
        - `outputType:` The desired output unit for the area measurement.
        - `Lengths:` .squareMegameters, .squareKilometers, .squareMeters, .squareCentimeters, .squareMillimeters, .squareMicrometers, .squareNanometers, .squareInches, .squareFeet, .squareYards, .squareMiles, .acres, .hectares
    - Returns: The converted value of the area measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitArea(unitValue: Double, unitType: UnitArea, outputType: UnitArea) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitLength - Converts a length measurement from one unit to another length measurement unit.
    /**
    - Parameters:
        - unitValue: The value of the length measurement.
        - unitType: The initial unit type of the length measurement.
        - outputType: The desired output unit for the length measurement.
        - Lenghts: .megameters, .kilometers, .hectometers, .decameters, .meters, .decimeters, .centimeters, .millimeters, .micrometers, .nanometers, .picometers, .inches, .feet, .yards, .miles, .scandinavianMiles, .lightyears, .nauticalMiles, .furlongs, .fathoms, .astronomicalUnits, .parsecs
    - Returns: The converted value of the length measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
    public static func convertUnitToUnitLength(unitValue: Double, unitType: UnitLength, outputType: UnitLength) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
// MARK: - convertUnitToUnitVolume - Converts a volume measurement to another volume measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the volume measurement.
        - `unitType:` The initial unit type of the volume measurement.
        - `outputType:` The desired output unit for the volume measurement.
        - `Volumes:` .megaliters, .kiloliters, .liters, .deciliters, .centiliters, .milliliters, .cubicKilometers, .cubicMeters, .cubicDecimeters, .cubicMillimeters, .cubicInches, .cubicFeet, .cubicYards, .cubicMiles, .acreFeet, .bushels, .teaspoons, .tablespoons, .cups,  .fluidOunces, .pints, .quarts, .gallons, .imperialTeaspoons, .imperialTablespoons, .imperialFluidOunces, .imperialPints, .imperialQuarts, .imperialGallons, .metricCups
    - Returns: The converted value of the volume measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitVolume(unitValue: Double, unitType: UnitVolume, outputType: UnitVolume) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitAngle - Converts an angle measurement to another angle measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the angle measurement.
        - `unitType:` The initial unit type of the angle measurement.
        - `outputType:` The desired output unit for the angle measurement.
        - `Angles:` .degrees, .arcMinutes, .arcSeconds, .radians, .gradians, .revolutions
    - Returns: The converted value of the angle measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitAngle(unitValue: Double, unitType: UnitAngle, outputType: UnitAngle) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitMass - Converts a mass measurement to another mass measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the mass measurement.
        - `unitType:` The initial unit type of the mass measurement.
        - `outputType:` The desired output unit for the mass measurement.
        - `Masses:` .megaliters, .kiloliters, .liters, .deciliters, .centiliters, .milliliters, .cubicKilometers, .cubicMeters, .cubicDecimeters, .cubicMillimeters, .cubicInches, .cubicFeet, .cubicYards, .cubicMiles, .acreFeet, .bushels, .teaspoons, .tablespoons, .fluidOunces, .cups, .pints, .quarts, .gallons, .imperialTeaspoons, .imperialTablespoons, .imperialFluidOunces, .imperialPints, .imperialQuarts, .imperialGallons, .metricCups
    - Returns: The converted value of the mass measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitMass(unitValue: Double, unitType: UnitMass, outputType: UnitMass) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitPressure - Converts a pressure measurement to another pressure measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the pressure measurement.
        - `unitType:` The initial unit type of the pressure measurement.
        - `outputType:` The desired output unit for the pressure measurement.
        - `Pressures:` .newtonsPerMetersSquared, .gigapascals, .megapascals, .kilopascals, .hectopascals, .inchesOfMercury, .bars, .millibars, .millimetersOfMercury, poundsForcePerSquareInch
    - Returns: The converted value of the pressure measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitPressure(unitValue: Double, unitType: UnitPressure, outputType: UnitPressure) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitAcceleration - Converts an acceleration measurement to another acceleration unit.
    /**
    - Parameters:
        - `unitValue:` The value of the acceleration measurement.
        - `unitType:` The initial unit type of the acceleration measurement.
        - `outputType:` The desired output unit for the acceleration measurement.
        - `Accelerations:` .metersPerSecondSquared, .gravity
    - Returns: The converted value of the acceleration measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitAcceleration(unitValue: Double, unitType: UnitAcceleration, outputType: UnitAcceleration) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitDuration - Converts a duration measurement to another duration measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the duration measurement.
        - `unitType:` The initial unit type of the duration measurement.
        - `outputType:` The desired output unit for the duration measurement.
        - `Durations:` .seconds, .minutes, .hours
    - Returns: The converted value of the duration measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitDuration(unitValue: Double, unitType: UnitDuration, outputType: UnitDuration) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitFrequency - Converts a frequency measurement to another frequency measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the frequency measurement.
        - `unitType:` The initial unit type of the frequency measurement.
        - `outputType:` The desired output unit for the frequency measurement.
        - `Frequencies:` .terahertz, .gigahertz, .megahertz, .kilohertz, .hertz, .millihertz, .microhertz, .nanohertz
    - Returns: The converted value of the frequency measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitFrequency(unitValue: Double, unitType: UnitFrequency, outputType: UnitFrequency) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitSpeed - Converts a speed measurement to another speed measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the speed measurement.
        - `unitType:` The initial unit type of the speed measurement.
        - `outputType:` The desired output unit for the speed measurement.
        - `Speeds:` .metersPerSecond, .kilometersPerHour, .milesPerHour, .kn
    - Returns: The converted value of the speed measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitSpeed(unitValue: Double, unitType: UnitSpeed, outputType: UnitSpeed) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitEnergy - Converts an energy measurement to another energy measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the power measurement.
        - `unitType:` The initial unit type of the power measurement.
        - `outputType:` The desired output unit for the power measurement.
        - `Energies:` .kilojoules, .joules, .kilocalories, .calories, .kilowattHours
    - Returns: The converted value of the Energy measurement in the output unit, or `nil` if the conversion is not possible.
    */

   public static func convertUnitToUnitEnergy(unitValue: Double, unitType: UnitEnergy, outputType: UnitEnergy) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitPower - Converts a power measurement to another power measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the power measurement.
        - `unitType:` The initial unit type of the power measurement.
        - `outputType:` The desired output unit for the power measurement.
        - `Angles:` .terawatts, .gigawatts, .megawatts, .kilowatts, .watts, .milliwatts, .microwatts, .nanowatts, .picowatts, .femtowatts, .horsepower
    - Returns: The converted value of the power measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitPower(unitValue: Double, unitType: UnitPower, outputType: UnitPower) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitTemperature - Converts a temperature measurement to another temperature measurement unit.
    /**
    - Parameters:
        - `unitValue:` The value of the temperature measurement.
        - `unitType:` The initial unit type of the temperature measurement.
        - `outputType:` The desired output unit for the temperature measurement.
        - `Temperatures: `.kelvin, .celsius, .fahrenheit,

    - Returns: The converted value of the temperature measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitTemperature(unitValue: Double, unitType: UnitTemperature, outputType: UnitTemperature) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
    
// MARK: - convertUnitToUnitElectricCharge - Converts an electric charge measurement to another electric charge unit.
    /**
    - Parameters:
        - `unitValue:` The value of the electric charge measurement.
        - `unitType:` The initial unit type of the electric charge measurement.
        - `outputType:` The desired output unit for the electric charge measurement.
        - `ElectricCharges:` .megaampereHours, .kiloampereHours, .ampereHours, .milliampereHours, .microampereHours
    - Returns: The converted value of the electric charge measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitElectricCharge(unitValue: Double, unitType: UnitElectricCharge, outputType: UnitElectricCharge) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitElectricCurrent - Converts an electric current measurement to another electric current unit.
    /**
    - Parameters:
        - `unitValue:` The value of the electric current measurement.
        - `unitType:` The initial unit type of the electric current measurement.
        - `outputType:` The desired output unit for the electric current measurement.
        - `ElectricCurrents:` .megaamperes, .kiloamperes, .amperes, .milliamperes, .microamperes
    - Returns: The converted value of the electric current measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitElectricCurrent(unitValue: Double, unitType: UnitElectricCurrent, outputType: UnitElectricCurrent) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitElectricPotentialDifference - Converts an electric potential difference measurement to another electric potential difference unit.
    /**
    - Parameters:
        - `unitValue:` The value of the electric potential difference measurement.
        - `unitType:` The initial unit type of the electric potential difference measurement.
        - `outputType:` The desired output unit for the electric potential difference measurement.
        - `ElectricPotentialDifferences:` .megavolts, .kilovolts, .volts, .millivolts, .microvolts
    - Returns: The converted value of the electric potential difference measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitElectricPotentialDifference(unitValue: Double, unitType: UnitElectricPotentialDifference, outputType: UnitElectricPotentialDifference) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitElectricResistance - Converts an electric resistance measurement to another electric resistance unit.
    /**
    - Parameters:
        - `unitValue:` The value of the electric resistance measurement.
        - `unitType:` The initial unit type of the electric resistance measurement.
        - `outputType:` The desired output unit for the electric resistance measurement.
        - `ElectricResistances:` .megaohms, .kiloohms, .ohms, .milliohms, .microohms
    - Returns: The converted value of the electric resistance measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitElectricResistance(unitValue: Double, unitType: UnitElectricResistance, outputType: UnitElectricResistance) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
 
// MARK: - convertUnitToUnitConcentrationMass - Converts a concentration of mass measurement to another concentration of mass unit.
    /**
    - Parameters:
        - `unitValue:` The value of the concentration of mass measurement.
        - `unitType:` The initial unit type of the concentration of mass measurement.
        - `outputType:` The desired output unit for the concentration of mass measurement.
        - `ConcentrationsOfMass:` .gramsPerLiter, .milligramsPerDeciliter, .millimolesPerLiter(withGramsPerMole:)
    - Returns: The converted value of theconcentration of mass measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitConcentrationMass(unitValue: Double, unitType: UnitConcentrationMass, outputType: UnitConcentrationMass) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }
 
// MARK: - convertUnitToUnitFuelEfficiency - Converts a fuel efficiency measurement to another fuel efficiency unit.
    /**
    - Parameters:
        - `unitValue:` The value of the fuel efficiency measurement.
        - `unitType:` The initial unit type of the fuel efficiency measurement.
        - `outputType:` The desired output unit for the fuel efficiency measurement.
        - `FuelEfficiencies:` .litersPer100Kilometers, .milesPerGallon, .milesPerImperialGallon
    - Returns: The converted value of the fuel efficiency measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
   public static func convertUnitToUnitFuelEfficiency(unitValue: Double, unitType: UnitFuelEfficiency, outputType: UnitFuelEfficiency) -> Double? {
        let measurement = Measurement(value: unitValue, unit: unitType)
        let convertedMeasurement = measurement.converted(to: outputType)
        return convertedMeasurement.value
    }

// MARK: - convertUnitToUnitInformationStorage - Converts an information storage measurement to another information storage unit.
    /**
    - Parameters:
        - `unitValue:` The value of the information storage measurement.
        - `unitType:` The initial unit type of the information storage measurement.
        - `outputType:` The desired output unit for the information storage measurement.
        - `InformationTransfer:` .kilobits, .megabits, .gigabits, .terabits, .petabits, .exabits, .zettabits, .yottabits
        - `InformationStorage:` .kilobytes, .megabytes, .gigabytes, .terabytes, .petabytes, .exabytes, .zettabytes, .yottabytes
    - Returns: The converted value of the information storage measurement in the output unit, or `nil` if the conversion is not possible.
    */
    
// 'UnitInformationStorage' is only available in iOS 13.0 or newer
// 'UnitInformationStorage' is only available in macOS 10.15 or newer
    @available(macOS 10.15, *)
    @available(iOS 13.0, *)
public static func convertUnitToUnitInformationStorage(unitValue: Double, unitType: UnitInformationStorage, outputType: UnitInformationStorage) -> Double? {
    let measurement = Measurement(value: unitValue, unit: unitType)
    let convertedMeasurement = measurement.converted(to: outputType)
    return convertedMeasurement.value
}
 
    public init() {
    }
}
