package test;

public class SuccesMessageHandler implements MessageHandler{
	@Override
	public void showMessage() {
		System.out.println("합격입니다.");
	}
}
