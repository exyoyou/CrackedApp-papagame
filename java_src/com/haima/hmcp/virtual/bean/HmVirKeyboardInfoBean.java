package com.haima.hmcp.virtual.bean;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirKeyboardInfoBean {
    int code;
    int column;
    int columnNum;
    String key;
    int row;
    int rowNum;

    public HmVirKeyboardInfoBean(int i10, int i11, String str, int i12) {
        this(i10, i11, 1, 1, str, i12);
    }

    public int getCode() {
        return this.code;
    }

    public int getColumn() {
        return this.column;
    }

    public int getColumnNum() {
        return this.columnNum;
    }

    public String getKey() {
        return this.key;
    }

    public int getRow() {
        return this.row;
    }

    public int getRowNum() {
        return this.rowNum;
    }

    public HmVirKeyboardInfoBean(int i10, int i11, int i12, int i13, String str, int i14) {
        this.row = i10;
        this.column = i11;
        this.rowNum = i12;
        this.columnNum = i13;
        this.key = str;
        this.code = i14;
    }
}
