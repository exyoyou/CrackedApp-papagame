package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountPayConfigBean {
    private String desc;
    private String icon;
    private int min_money;
    private int rebate_money;
    private long start_time;
    private long stop_time;
    private String title;

    public AccountPayConfigBean() {
    }

    public String getDesc() {
        return this.desc;
    }

    public String getIcon() {
        return this.icon;
    }

    public int getMin_money() {
        return this.min_money;
    }

    public int getRebate_money() {
        return this.rebate_money;
    }

    public long getStart_time() {
        return this.start_time;
    }

    public long getStop_time() {
        return this.stop_time;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public void setMin_money(int min_money) {
        this.min_money = min_money;
    }

    public void setRebate_money(int rebate_money) {
        this.rebate_money = rebate_money;
    }

    public void setStart_time(long start_time) {
        this.start_time = start_time;
    }

    public void setStop_time(long stop_time) {
        this.stop_time = stop_time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "AccountPayConfigBean{title='" + this.title + "', desc='" + this.desc + "', start_time=" + this.start_time + ", stop_time=" + this.stop_time + ", icon='" + this.icon + "', min_money=" + this.min_money + ", rebate_money=" + this.rebate_money + '}';
    }

    public AccountPayConfigBean(String title, String desc, long start_time, long stop_time, String icon, int min_money, int rebate_money) {
        this.title = title;
        this.desc = desc;
        this.start_time = start_time;
        this.stop_time = stop_time;
        this.icon = icon;
        this.min_money = min_money;
        this.rebate_money = rebate_money;
    }
}
