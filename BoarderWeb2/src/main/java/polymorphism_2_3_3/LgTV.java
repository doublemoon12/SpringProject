package polymorphism_2_3_3;

public class LgTV implements TV{

	
	public void powerOn() {
		System.out.println("LgTV -- 전원을 켠다. ");
		
	}


	public void powerOff() {
		System.out.println("LgTV -- 전원을 끈다. ");
		
	}


	public void volumeUp() {
		System.out.println("LgTV -- 소리를 올린다. ");
		
	}


	public void volumeDown() {
		System.out.println("LgTV -- 소리을 내린다. ");
		
	}
	

	
	/*
	public void turnOn() {
		System.out.println("LgTV  -- 전원을 켠다.");
	}
	public void turnOff() {
		System.out.println("LgTV  -- 전원을 끈다.");
	}
	public void soundUp() {
		System.out.println("LgTV  -- 소리를 올린다.");
	}
	public void soundDown() {
		System.out.println("LgTV  -- 소리를 내린다.");
	}
	*/ 

}
