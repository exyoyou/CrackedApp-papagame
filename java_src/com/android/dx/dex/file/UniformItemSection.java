package com.android.dx.dex.file;

import com.android.dx.rop.cst.Constant;
import com.android.dx.util.AnnotatedOutput;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public abstract class UniformItemSection extends Section {
    public UniformItemSection(String str, DexFile dexFile, int i10) {
        super(str, dexFile, i10);
    }

    public abstract IndexedItem get(Constant constant);

    @Override // com.android.dx.dex.file.Section
    public final int getAbsoluteItemOffset(Item item) {
        IndexedItem indexedItem = (IndexedItem) item;
        return getAbsoluteOffset(indexedItem.getIndex() * indexedItem.writeSize());
    }

    protected abstract void orderItems();

    @Override // com.android.dx.dex.file.Section
    protected final void prepare0() {
        DexFile file = getFile();
        orderItems();
        Iterator<? extends Item> it2 = items().iterator();
        while (it2.hasNext()) {
            it2.next().addContents(file);
        }
    }

    @Override // com.android.dx.dex.file.Section
    public final int writeSize() {
        Collection<? extends Item> collectionItems = items();
        int size = collectionItems.size();
        if (size == 0) {
            return 0;
        }
        return size * collectionItems.iterator().next().writeSize();
    }

    @Override // com.android.dx.dex.file.Section
    protected final void writeTo0(AnnotatedOutput annotatedOutput) {
        DexFile file = getFile();
        int alignment = getAlignment();
        Iterator<? extends Item> it2 = items().iterator();
        while (it2.hasNext()) {
            it2.next().writeTo(file, annotatedOutput);
            annotatedOutput.alignTo(alignment);
        }
    }
}
