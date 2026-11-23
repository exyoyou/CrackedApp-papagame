package com.haima.hmcp.virtual.bean;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirFullKeyBoardInfoBean {
    int column;
    int columnNum;
    List<HmVirtualViewBean.KeysDTO> keys;
    String name;
    boolean needChangeTxtColor;
    int row;
    int rowNum;

    public HmVirFullKeyBoardInfoBean(int i10, int i11, String str, int i12) {
        this(i10, i11, 1, 1, str, i12);
    }

    public int getColumn() {
        return this.column;
    }

    public int getColumnNum() {
        return this.columnNum;
    }

    public List<HmVirtualViewBean.KeysDTO> getKeys() {
        return this.keys;
    }

    public String getName() {
        return this.name;
    }

    public int getRow() {
        return this.row;
    }

    public int getRowNum() {
        return this.rowNum;
    }

    public boolean isNeedChangeTxtColor() {
        return this.needChangeTxtColor;
    }

    public void setNeedChangeTxtColor(boolean z10) {
        this.needChangeTxtColor = z10;
    }

    public HmVirFullKeyBoardInfoBean(int i10, int i11, String str, int i12, boolean z10) {
        this(i10, i11, 1, 1, str, i12);
        this.needChangeTxtColor = z10;
    }

    public HmVirFullKeyBoardInfoBean(int i10, int i11, int i12, int i13, String str, int i14) {
        this.row = i10;
        this.column = i11;
        this.rowNum = i12;
        this.name = str;
        this.columnNum = i13;
        ArrayList arrayList = new ArrayList();
        this.keys = arrayList;
        arrayList.add(new HmVirtualViewBean.KeysDTO(str, i14));
    }

    public HmVirFullKeyBoardInfoBean(int i10, int i11, int i12, int i13, String str, int i14, boolean z10) {
        this(i10, i11, i12, i13, str, i14);
        this.needChangeTxtColor = z10;
    }

    public HmVirFullKeyBoardInfoBean(int i10, int i11, int i12, int i13, String str, List<HmVirtualViewBean.KeysDTO> list) {
        this.row = i10;
        this.column = i11;
        this.rowNum = i12;
        this.name = str;
        this.columnNum = i13;
        this.keys = list;
    }

    public HmVirFullKeyBoardInfoBean(int i10, int i11, int i12, int i13, String str, List<HmVirtualViewBean.KeysDTO> list, boolean z10) {
        this(i10, i11, i12, i13, str, list);
        this.needChangeTxtColor = z10;
    }
}
