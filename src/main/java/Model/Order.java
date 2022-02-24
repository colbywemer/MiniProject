package Model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="orders")
public class Order {
	@Id
	@GeneratedValue
	@Column(name="ORDERID")
	private int orderId;
	@Column(name="ACCOUNTID")
	private int accountId;
	@Column(name="CARID")
	private int carId;

	public Order() {
		super();
	}

	public Order(int accountId, int carId) {
		this.accountId = accountId;
		this.carId = carId;
	}
	
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	

}
