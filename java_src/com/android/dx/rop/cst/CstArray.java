package com.android.dx.rop.cst;

import com.android.dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes7.dex */
public class CstArray extends Constant {
    private final List list;

    public static final class List extends FixedSizeList implements Comparable<List> {
        public List(int i10) {
            super(i10);
        }

        public Constant get(int i10) {
            return (Constant) get0(i10);
        }

        public void set(int i10, Constant constant) {
            set0(i10, constant);
        }

        @Override // java.lang.Comparable
        public int compareTo(List list) {
            int size = size();
            int size2 = list.size();
            int i10 = size < size2 ? size : size2;
            for (int i11 = 0; i11 < i10; i11++) {
                int iCompareTo = ((Constant) get0(i11)).compareTo((Constant) list.get0(i11));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
            }
            if (size < size2) {
                return -1;
            }
            return size > size2 ? 1 : 0;
        }
    }

    public CstArray(List list) {
        if (list == null) {
            throw new NullPointerException("list == null");
        }
        list.throwIfMutable();
        this.list = list;
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.list.compareTo(((CstArray) constant).list);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstArray) {
            return this.list.equals(((CstArray) obj).list);
        }
        return false;
    }

    public List getList() {
        return this.list;
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return this.list.toHuman("{", ", ", "}");
    }

    public String toString() {
        return this.list.toString("array{", ", ", "}");
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "array";
    }
}
