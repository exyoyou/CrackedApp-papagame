package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorFastEntryListBean {
    private Object data;
    private ExtBean extBean;
    private int scrollOffset;
    private int scrollPosition;
    private String tagId;
    private int type;

    public SimulatorFastEntryListBean(int type, Object data) {
        this.type = type;
        this.data = data;
    }

    public Object getData() {
        return this.data;
    }

    public ExtBean getExtBean() {
        return this.extBean;
    }

    public int getScrollOffset() {
        return this.scrollOffset;
    }

    public int getScrollPosition() {
        return this.scrollPosition;
    }

    public String getTagId() {
        return this.tagId;
    }

    public int getType() {
        return this.type;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public void setExtBean(ExtBean extBean) {
        this.extBean = extBean;
    }

    public void setScrollOffset(int scrollOffset) {
        this.scrollOffset = scrollOffset;
    }

    public void setScrollPosition(int scrollPosition) {
        this.scrollPosition = scrollPosition;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public void setType(int type) {
        this.type = type;
    }

    public SimulatorFastEntryListBean(int type, Object data, String tagId) {
        this.type = type;
        this.data = data;
        this.tagId = tagId;
    }
}
