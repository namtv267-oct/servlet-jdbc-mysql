package dto;

import java.util.List;

public class DTO<T> {
	private boolean status;
	private String comment;
	private T data;
	private List<T> datas;
	public DTO() {
		super();
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	public boolean hasData() {
		return (this.data!= null || this.datas != null);
	}
}
