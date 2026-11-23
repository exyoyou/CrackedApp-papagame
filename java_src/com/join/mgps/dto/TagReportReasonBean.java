package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class TagReportReasonBean {
    private boolean checked = false;
    private String text;
    private int type;

    public TagReportReasonBean(int type, String text) {
        this.type = type;
        this.text = text;
    }

    public String getText() {
        return this.text;
    }

    public int getType() {
        return this.type;
    }

    public boolean isChecked() {
        return this.checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setType(int type) {
        this.type = type;
    }
}
