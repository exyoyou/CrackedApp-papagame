package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class BootPageRequestArgs {
    private String phone_model;
    private String phone_producer;
    private String phone_system;

    public BootPageRequestArgs(String phone_model, String phone_system, String phone_producer) {
        this.phone_model = phone_model;
        this.phone_system = phone_system;
        this.phone_producer = phone_producer;
    }

    public String getPhone_model() {
        return this.phone_model;
    }

    public String getPhone_producer() {
        return this.phone_producer;
    }

    public String getPhone_system() {
        return this.phone_system;
    }

    public void setPhone_model(String phone_model) {
        this.phone_model = phone_model;
    }

    public void setPhone_producer(String phone_producer) {
        this.phone_producer = phone_producer;
    }

    public void setPhone_system(String phone_system) {
        this.phone_system = phone_system;
    }
}
