package com.android.dx.cf.code;

import com.android.dx.rop.cst.CstMethodHandle;
import com.android.dx.rop.cst.CstType;
import com.android.dx.util.FixedSizeList;

/* JADX INFO: loaded from: classes7.dex */
public class BootstrapMethodsList extends FixedSizeList {
    public static final BootstrapMethodsList EMPTY = new BootstrapMethodsList(0);

    public static class Item {
        private final BootstrapMethodArgumentsList bootstrapMethodArgumentsList;
        private final CstMethodHandle bootstrapMethodHandle;
        private final CstType declaringClass;

        public Item(CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
            if (cstType == null) {
                throw new NullPointerException("declaringClass == null");
            }
            if (cstMethodHandle == null) {
                throw new NullPointerException("bootstrapMethodHandle == null");
            }
            if (bootstrapMethodArgumentsList == null) {
                throw new NullPointerException("bootstrapMethodArguments == null");
            }
            this.bootstrapMethodHandle = cstMethodHandle;
            this.bootstrapMethodArgumentsList = bootstrapMethodArgumentsList;
            this.declaringClass = cstType;
        }

        public BootstrapMethodArgumentsList getBootstrapMethodArguments() {
            return this.bootstrapMethodArgumentsList;
        }

        public CstMethodHandle getBootstrapMethodHandle() {
            return this.bootstrapMethodHandle;
        }

        public CstType getDeclaringClass() {
            return this.declaringClass;
        }
    }

    public BootstrapMethodsList(int i10) {
        super(i10);
    }

    public static BootstrapMethodsList concat(BootstrapMethodsList bootstrapMethodsList, BootstrapMethodsList bootstrapMethodsList2) {
        BootstrapMethodsList bootstrapMethodsList3 = EMPTY;
        if (bootstrapMethodsList == bootstrapMethodsList3) {
            return bootstrapMethodsList2;
        }
        if (bootstrapMethodsList2 == bootstrapMethodsList3) {
            return bootstrapMethodsList;
        }
        int size = bootstrapMethodsList.size();
        int size2 = bootstrapMethodsList2.size();
        BootstrapMethodsList bootstrapMethodsList4 = new BootstrapMethodsList(size + size2);
        for (int i10 = 0; i10 < size; i10++) {
            bootstrapMethodsList4.set(i10, bootstrapMethodsList.get(i10));
        }
        for (int i11 = 0; i11 < size2; i11++) {
            bootstrapMethodsList4.set(size + i11, bootstrapMethodsList2.get(i11));
        }
        return bootstrapMethodsList4;
    }

    public Item get(int i10) {
        return (Item) get0(i10);
    }

    public void set(int i10, Item item) {
        if (item == null) {
            throw new NullPointerException("item == null");
        }
        set0(i10, item);
    }

    public void set(int i10, CstType cstType, CstMethodHandle cstMethodHandle, BootstrapMethodArgumentsList bootstrapMethodArgumentsList) {
        set(i10, new Item(cstType, cstMethodHandle, bootstrapMethodArgumentsList));
    }
}
