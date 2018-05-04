package ch12;
//ActionForward Ŭ������ action �������̽����� ����� �����ϰ� ��� ����
//������ ������ �Ҷ� ���Ǵ� Ŭ�����Դϴ�.
//�� Ŭ������ Redirect ���� ���� �������� �������� ��ġ�� ������ �ֽ��ϴ�.
//�� ������ FrontController���� ActionForward Ŭ���� Ÿ������ ��ȯ����
//�������� �� ���� Ȯ���Ͽ� �ش��ϴ� ��û �������� ������ ó���� �մϴ�.
public class ActionForward {
	private boolean redirect=false;
	private String path=null;
	
	//property Redirect�� is �޼ҵ�
	public boolean isRedirect() {
		// ������Ƽ Ÿ���� boolean�� ��� get ��� is�� �տ� ���� �� �ֽ��ϴ�.
		return redirect;
	}

	//property Redirect�� set�޼���
	public void setRedirect(boolean b) {
		redirect=b;
	}
	
	//property path�� get �޼���
	public String getPath() {
		return path;
	}
	
	//property path�� set �޼���
	public void setPath(String string) {
		path=string;
	}
}
