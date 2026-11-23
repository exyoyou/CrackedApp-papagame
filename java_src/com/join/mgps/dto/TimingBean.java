package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class TimingBean {
    private boolean isChecked = false;
    private Integer time;
    private String title;

    public Integer getTime() {
        return this.time;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean checked) {
        this.isChecked = checked;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
