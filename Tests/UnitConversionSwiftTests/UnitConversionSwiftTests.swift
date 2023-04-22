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


import XCTest
import Foundation
@testable import UnitConversionSwift

final class UnitConversionSwiftTests: XCTestCase {
    func testUnitToUnit() {
        XCTAssertNotNil(Converter.convertUnitToUnit(unitValue: 2.54, unitType: UnitLength.centimeters, outputType: UnitLength.inches))
        print("\(String(describing: Converter.convertUnitToUnit(unitValue: 2.54, unitType: UnitLength.centimeters, outputType: UnitLength.inches)))")
    }
    
    func testUnitToUnitArea() {
        XCTAssertNotNil(Converter.convertUnitToUnitArea(unitValue: 1, unitType: .acres, outputType: .squareFeet))
        print("\(String(describing: Converter.convertUnitToUnitArea(unitValue: 1, unitType: .acres, outputType: .squareFeet)))")

    }
    
    func testUnitToUnitLength() {
        XCTAssertNotNil(Converter.convertUnitToUnitLength(unitValue: 2.54, unitType: .centimeters, outputType: .inches))
        print("\(String(describing: Converter.convertUnitToUnitLength(unitValue: 2.54, unitType: .centimeters, outputType: .inches)))")

    }
    
    func testUnitToUnitVolume() {
        XCTAssertNotNil(Converter.convertUnitToUnitVolume(unitValue: 1, unitType: .gallons, outputType: .cups))
        print("\(String(describing: Converter.convertUnitToUnitVolume(unitValue: 1, unitType: .gallons, outputType: .cups)))")

    }
    
    func testUnitToUnitAngle() {
        XCTAssertNotNil(Converter.convertUnitToUnitAngle(unitValue: 45, unitType: .degrees, outputType: .radians))
        print("\(String(describing: Converter.convertUnitToUnitAngle(unitValue: 45, unitType: .degrees, outputType: .radians)))")

    }
    
    func testUnitToUnitMass() {
        XCTAssertNotNil(Converter.convertUnitToUnitMass(unitValue: 28.5, unitType: .grams, outputType: .ounces))
        print("\(String(describing: Converter.convertUnitToUnitMass(unitValue: 28.5, unitType: .grams, outputType: .ounces)))")

    }
    
    func testUnitToUnitPressure() {
        XCTAssertNotNil(Converter.convertUnitToUnitPressure(unitValue: 1000, unitType: .bars, outputType: .millibars))
        print("\(String(describing: Converter.convertUnitToUnitPressure(unitValue: 1000, unitType: .bars, outputType: .millibars)))")

    }
    
    func testUnitToUnitAcceleration() {
        XCTAssertNotNil(Converter.convertUnitToUnitAcceleration(unitValue: 2, unitType: .metersPerSecondSquared, outputType: .gravity))
        print("\(String(describing: Converter.convertUnitToUnitAcceleration(unitValue: 2, unitType: .metersPerSecondSquared, outputType: .gravity)))")

    }
    
    func testUnitToUnitDuration() {
        XCTAssertNotNil(Converter.convertUnitToUnitDuration(unitValue: 60, unitType: .minutes, outputType: .hours))
        print("\(String(describing: Converter.convertUnitToUnitDuration(unitValue: 60, unitType: .minutes, outputType: .hours)))")

    }
    
    func testUnitToUnitFrequency() {
        XCTAssertNotNil(Converter.convertUnitToUnitFrequency(unitValue: 60, unitType: .hertz, outputType: .framesPerSecond))
        print("\(String(describing: Converter.convertUnitToUnitFrequency(unitValue: 60, unitType: .hertz, outputType: .framesPerSecond)))")

    }
    
    func testUnitToUnitSpeed() {
        XCTAssertNotNil(Converter.convertUnitToUnitSpeed(unitValue: 55, unitType: .knots, outputType: .milesPerHour))
        print("\(String(describing: Converter.convertUnitToUnitSpeed(unitValue: 55, unitType: .knots, outputType: .milesPerHour)))")

    }
    
    func testUnitToUnitEnergy() {
        XCTAssertNotNil(Converter.convertUnitToUnitEnergy(unitValue: 1000, unitType: .calories, outputType: .joules))
        print("\(String(describing: Converter.convertUnitToUnitEnergy(unitValue: 1000, unitType: .calories, outputType: .joules)))")

    }
    
    func testUnitToUnitPower() {
        XCTAssertNotNil(Converter.convertUnitToUnitPower(unitValue: 180, unitType: .horsepower, outputType: .watts))
        print("\(String(describing: Converter.convertUnitToUnitPower(unitValue: 180, unitType: .horsepower, outputType: .watts)))")

    }
    
    func testUnitToUnitTemperature() {
        XCTAssertNotNil(Converter.convertUnitToUnitTemperature(unitValue: 0, unitType: .celsius, outputType: .fahrenheit))
        print("\(String(describing: Converter.convertUnitToUnitTemperature(unitValue: 0, unitType: .celsius, outputType: .fahrenheit)))")

    }

    func testUnitToUnitElectricCharge() {
        XCTAssertNotNil(Converter.convertUnitToUnitElectricCharge(unitValue: 120, unitType: .coulombs, outputType: .ampereHours))
        print("\(String(describing: Converter.convertUnitToUnitElectricCharge(unitValue: 120, unitType: .coulombs, outputType: .ampereHours)))")

    }
    
    func testUnitToUnitElectricCurrent() {
        XCTAssertNotNil(Converter.convertUnitToUnitElectricCurrent(unitValue: 120, unitType: .amperes, outputType: .milliamperes))
        print("\(String(describing: Converter.convertUnitToUnitElectricCurrent(unitValue: 120, unitType: .amperes, outputType: .milliamperes)))")

    }
    
    func testUnitToUnitElectricPotentialDifference() {
        XCTAssertNotNil(Converter.convertUnitToUnitElectricPotentialDifference(unitValue: 120, unitType: .volts , outputType: .megavolts))
        print("\(String(describing: Converter.convertUnitToUnitElectricPotentialDifference(unitValue: 120, unitType: .volts , outputType: .megavolts)))")

    }
    
    func testUnitToUnitElectricResistance() {
        XCTAssertNotNil(Converter.convertUnitToUnitElectricResistance(unitValue: 120, unitType: .ohms , outputType: .megaohms))
        print("\(String(describing: Converter.convertUnitToUnitElectricResistance(unitValue: 120, unitType: .ohms , outputType: .megaohms)))")

    }
    
    func testUnitToUnitConcentrationMass() {
        XCTAssertNotNil(Converter.convertUnitToUnitConcentrationMass(unitValue: 50, unitType: .gramsPerLiter , outputType: .milligramsPerDeciliter))
        print("\(String(describing: Converter.convertUnitToUnitConcentrationMass(unitValue: 50, unitType: .gramsPerLiter , outputType: .milligramsPerDeciliter)))")

    }
    
    func testUnitToUnitFuelEfficiency() {
        XCTAssertNotNil(Converter.convertUnitToUnitFuelEfficiency(unitValue: 50, unitType: .milesPerGallon , outputType: .litersPer100Kilometers))
        print("\(String(describing: Converter.convertUnitToUnitFuelEfficiency(unitValue: 50, unitType: .milesPerGallon , outputType: .litersPer100Kilometers)))")

    }
    
    func testUnitToUnitInformationStorage() {
        XCTAssertNotNil(Converter.convertUnitToUnitInformationStorage(unitValue: 1000, unitType: .gigabits , outputType: .gigabytes))
        print("\(String(describing: Converter.convertUnitToUnitInformationStorage(unitValue: 1000, unitType: .gigabits , outputType: .gigabytes)))")

    }
    
    func testRoundedValue() {
        
        //Sets the temperature to 2 decimal places
        XCTAssertNotNil(Converter.setDecimalPlace(convertedValue: Converter.convertUnitToUnitTemperature(unitValue: 0, unitType: .celsius, outputType: .fahrenheit)!, decimalPlaces: 1))
        
    print("\(Converter.setDecimalPlace(convertedValue: Converter.convertUnitToUnitTemperature(unitValue: 0, unitType: .celsius, outputType: .fahrenheit)!, decimalPlaces: 1))")
    }
}
