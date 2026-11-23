package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PayActivityBean {
    private String desc;
    private String icon;
    private List<PayActivityRebate> rebate_list;
    private String start_time;
    private String stop_time;
    private String title;

    public PayActivityBean() {
    }

    public String getDesc() {
        return this.desc;
    }

    public String getIcon() {
        return this.icon;
    }

    public List<PayActivityRebate> getRebate_list() {
        return this.rebate_list;
    }

    public String getStart_time() {
        return this.start_time;
    }

    public String getStop_time() {
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

    public void setRebate_List(List<PayActivityRebate> rebate_List) {
        this.rebate_list = rebate_List;
    }

    public void setRebate_list(List<PayActivityRebate> rebate_list) {
        this.rebate_list = rebate_list;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public void setStop_time(String stop_time) {
        this.stop_time = stop_time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "PayActivityBean{icon='" + this.icon + "', title='" + this.title + "', desc='" + this.desc + "', start_time='" + this.start_time + "', stop_time='" + this.stop_time + "', rebate_List=" + this.rebate_list + '}';
    }

    public PayActivityBean(String icon, String title, String desc, String start_time, String stop_time, List<PayActivityRebate> rebate_List) {
        this.icon = icon;
        this.title = title;
        this.desc = desc;
        this.start_time = start_time;
        this.stop_time = stop_time;
        this.rebate_list = rebate_List;
    }
}
