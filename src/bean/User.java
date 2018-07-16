package bean;

public class User {
	private String username="Enter username", password="";
    private String message="";
	public String getMessage() {
		return message;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean validate() {
         if(username.contains(" ")){
        	 message = "<b>The username contains space</b>";
        	 return false;
         }else if(password.length() <6){
        	 message = "<b>Password length less than 6</b>";
        	 return false;
         }else
        	 return true;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
