//: Playground - noun: a place where people can play

import UIKit

protocol VacationPolicy {
	static  func accrueVacation()
	static func calculateBaseVacationOur()
	static func alterForLegalMinimums()
	static func applyToPayroll()
}


extension VacationPolicy {
	static func accrueVacation() {
		calculateBaseVacationOur()
		alterForLegalMinimums()
		applyToPayroll()
	}
	static func calculateBaseVacationOur(){}
	static func alterForLegalMinimums(){
		print("default alterForLegalMinimums...")
	}
	static func applyToPayroll(){
		print("default applyToPayroll...")
	}
}

class USVacationPolicy : VacationPolicy {
	static func calculateBaseVacationOur(){print("concrete US calculateBaseVacationOur...")}
}
class EUVacationPolicy : VacationPolicy {
	static  func calculateBaseVacationOur(){print("concrete EU calculateBaseVacationOur...")}
}


USVacationPolicy.accrueVacation()
EUVacationPolicy.accrueVacation()