package com.android.dx.dex.file;

import com.android.dx.dex.file.OffsettedItem;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class UniformListItem<T extends OffsettedItem> extends OffsettedItem {
    private static final int HEADER_SIZE = 4;
    private final ItemType itemType;
    private final List<T> items;

    public UniformListItem(ItemType itemType, List<T> list) {
        super(getAlignment(list), writeSize(list));
        if (itemType == null) {
            throw new NullPointerException("itemType == null");
        }
        this.items = list;
        this.itemType = itemType;
    }

    private static int getAlignment(List<? extends OffsettedItem> list) {
        try {
            return Math.max(4, list.get(0).getAlignment());
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("items.size() == 0");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("items == null");
        }
    }

    private int headerSize() {
        return getAlignment();
    }

    private static int writeSize(List<? extends OffsettedItem> list) {
        return (list.size() * list.get(0).writeSize()) + getAlignment(list);
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        Iterator<T> it2 = this.items.iterator();
        while (it2.hasNext()) {
            it2.next().addContents(dexFile);
        }
    }

    public final List<T> getItems() {
        return this.items;
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return this.itemType;
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    protected void place0(Section section, int i10) {
        int iHeaderSize = i10 + headerSize();
        boolean z10 = true;
        int i11 = -1;
        int alignment = -1;
        for (T t10 : this.items) {
            int iWriteSize = t10.writeSize();
            if (z10) {
                alignment = t10.getAlignment();
                i11 = iWriteSize;
                z10 = false;
            } else {
                if (iWriteSize != i11) {
                    throw new UnsupportedOperationException("item size mismatch");
                }
                if (t10.getAlignment() != alignment) {
                    throw new UnsupportedOperationException("item alignment mismatch");
                }
            }
            iHeaderSize = t10.place(section, iHeaderSize) + iWriteSize;
        }
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public final String toHuman() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("{");
        boolean z10 = true;
        for (T t10 : this.items) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(t10.toHuman());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(UniformListItem.class.getName());
        sb2.append(this.items);
        return sb2.toString();
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int size = this.items.size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " " + typeName());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  size: ");
            sb2.append(Hex.u4(size));
            annotatedOutput.annotate(4, sb2.toString());
        }
        annotatedOutput.writeInt(size);
        Iterator<T> it2 = this.items.iterator();
        while (it2.hasNext()) {
            it2.next().writeTo(dexFile, annotatedOutput);
        }
    }
}
