package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes7.dex */
public final class StdAttributeList extends FixedSizeList implements AttributeList {
    public StdAttributeList(int i10) {
        super(i10);
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public int byteLength() {
        int size = size();
        int iByteLength = 2;
        for (int i10 = 0; i10 < size; i10++) {
            iByteLength += get(i10).byteLength();
        }
        return iByteLength;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute findFirst(String str) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            Attribute attribute = get(i10);
            if (attribute.getName().equals(str)) {
                return attribute;
            }
        }
        return null;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute findNext(Attribute attribute) {
        Attribute attribute2;
        int size = size();
        int i10 = 0;
        while (i10 < size) {
            if (get(i10) == attribute) {
                String name = attribute.getName();
                do {
                    i10++;
                    if (i10 >= size) {
                        return null;
                    }
                    attribute2 = get(i10);
                } while (!attribute2.getName().equals(name));
                return attribute2;
            }
            i10++;
        }
        return null;
    }

    @Override // com.android.dx.cf.iface.AttributeList
    public Attribute get(int i10) {
        return (Attribute) get0(i10);
    }

    public void set(int i10, Attribute attribute) {
        set0(i10, attribute);
    }
}
