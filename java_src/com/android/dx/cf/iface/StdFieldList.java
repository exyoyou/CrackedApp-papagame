package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes7.dex */
public final class StdFieldList extends FixedSizeList implements FieldList {
    public StdFieldList(int i10) {
        super(i10);
    }

    @Override // com.android.dx.cf.iface.FieldList
    public Field get(int i10) {
        return (Field) get0(i10);
    }

    public void set(int i10, Field field) {
        set0(i10, field);
    }
}
