package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PapayHistoryInfo implements Serializable {
    private String money;
    private String order_id;
    private String order_type;
    private String pay_time;
    private String pay_type;
    private String status;
    private String title;

    public String getMoney() {
        return this.money;
    }

    public String getOrder_id() {
        return this.order_id;
    }

    public String getOrder_type() {
        return this.order_type;
    }

    public String getPay_time() {
        return this.pay_time;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getStatus() {
        return this.status;
    }

    public String getTitle() {
        return this.title;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public void setOrder_type(String order_type) {
        this.order_type = order_type;
    }

    public void setPay_time(String pay_time) {
        this.pay_time = pay_time;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
