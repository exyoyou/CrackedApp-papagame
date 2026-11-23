package com.android.dx.dex.file;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public final class MixedItemSection extends Section {
    private static final Comparator<OffsettedItem> TYPE_SORTER = new Comparator<OffsettedItem>() { // from class: com.android.dx.dex.file.MixedItemSection.1
        @Override // java.util.Comparator
        public int compare(OffsettedItem offsettedItem, OffsettedItem offsettedItem2) {
            return offsettedItem.itemType().compareTo(offsettedItem2.itemType());
        }
    };
    private final HashMap<OffsettedItem, OffsettedItem> interns;
    private final ArrayList<OffsettedItem> items;
    private final SortType sort;
    private int writeSize;

    /* JADX INFO: renamed from: com.android.dx.dex.file.MixedItemSection$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType;

        static {
            int[] iArr = new int[SortType.values().length];
            $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType = iArr;
            try {
                iArr[SortType.INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[SortType.TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    enum SortType {
        NONE,
        TYPE,
        INSTANCE
    }

    public MixedItemSection(String str, DexFile dexFile, int i10, SortType sortType) {
        super(str, dexFile, i10);
        this.items = new ArrayList<>(100);
        this.interns = new HashMap<>(100);
        this.sort = sortType;
        this.writeSize = -1;
    }

    public void add(OffsettedItem offsettedItem) {
        throwIfPrepared();
        try {
            if (offsettedItem.getAlignment() > getAlignment()) {
                throw new IllegalArgumentException("incompatible item alignment");
            }
            this.items.add(offsettedItem);
        } catch (NullPointerException unused) {
            throw new NullPointerException("item == null");
        }
    }

    public <T extends OffsettedItem> T get(T t10) {
        throwIfNotPrepared();
        T t11 = (T) this.interns.get(t10);
        if (t11 != null) {
            return t11;
        }
        throw new NoSuchElementException(t10.toString());
    }

    @Override // com.android.dx.dex.file.Section
    public int getAbsoluteItemOffset(Item item) {
        return ((OffsettedItem) item).getAbsoluteOffset();
    }

    public synchronized <T extends OffsettedItem> T intern(T t10) {
        throwIfPrepared();
        T t11 = (T) this.interns.get(t10);
        if (t11 != null) {
            return t11;
        }
        add(t10);
        this.interns.put(t10, t10);
        return t10;
    }

    @Override // com.android.dx.dex.file.Section
    public Collection<? extends Item> items() {
        return this.items;
    }

    public void placeItems() {
        throwIfNotPrepared();
        int i10 = AnonymousClass2.$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType[this.sort.ordinal()];
        if (i10 == 1) {
            Collections.sort(this.items);
        } else if (i10 == 2) {
            Collections.sort(this.items, TYPE_SORTER);
        }
        int size = this.items.size();
        int iWriteSize = 0;
        for (int i11 = 0; i11 < size; i11++) {
            OffsettedItem offsettedItem = this.items.get(i11);
            try {
                int iPlace = offsettedItem.place(this, iWriteSize);
                if (iPlace < iWriteSize) {
                    throw new RuntimeException("bogus place() result for " + offsettedItem);
                }
                iWriteSize = offsettedItem.writeSize() + iPlace;
            } catch (RuntimeException e10) {
                throw ExceptionWithContext.withContext(e10, "...while placing " + offsettedItem);
            }
        }
        this.writeSize = iWriteSize;
    }

    @Override // com.android.dx.dex.file.Section
    protected void prepare0() {
        DexFile file = getFile();
        int i10 = 0;
        while (true) {
            int size = this.items.size();
            if (i10 >= size) {
                return;
            }
            while (i10 < size) {
                this.items.get(i10).addContents(file);
                i10++;
            }
        }
    }

    public int size() {
        return this.items.size();
    }

    public void writeHeaderPart(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        int i10 = this.writeSize;
        if (i10 == -1) {
            throw new RuntimeException("write size not yet set");
        }
        int fileOffset = i10 == 0 ? 0 : getFileOffset();
        String name = getName();
        if (name == null) {
            name = "<unnamed>";
        }
        char[] cArr = new char[15 - name.length()];
        Arrays.fill(cArr, ' ');
        String str = new String(cArr);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(4, name + "_size:" + str + Hex.u4(i10));
            annotatedOutput.annotate(4, name + "_off: " + str + Hex.u4(fileOffset));
        }
        annotatedOutput.writeInt(i10);
        annotatedOutput.writeInt(fileOffset);
    }

    public void writeIndexAnnotation(AnnotatedOutput annotatedOutput, ItemType itemType, String str) {
        throwIfNotPrepared();
        TreeMap treeMap = new TreeMap();
        for (OffsettedItem offsettedItem : this.items) {
            if (offsettedItem.itemType() == itemType) {
                treeMap.put(offsettedItem.toHuman(), offsettedItem);
            }
        }
        if (treeMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, str);
        for (Map.Entry entry : treeMap.entrySet()) {
            annotatedOutput.annotate(0, ((OffsettedItem) entry.getValue()).offsetString() + ' ' + ((String) entry.getKey()) + '\n');
        }
    }

    @Override // com.android.dx.dex.file.Section
    public int writeSize() {
        throwIfNotPrepared();
        return this.writeSize;
    }

    @Override // com.android.dx.dex.file.Section
    protected void writeTo0(AnnotatedOutput annotatedOutput) {
        boolean zAnnotates = annotatedOutput.annotates();
        DexFile file = getFile();
        int iWriteSize = 0;
        boolean z10 = true;
        for (OffsettedItem offsettedItem : this.items) {
            if (zAnnotates) {
                if (z10) {
                    z10 = false;
                } else {
                    annotatedOutput.annotate(0, "\n");
                }
            }
            int alignment = offsettedItem.getAlignment() - 1;
            int i10 = (~alignment) & (iWriteSize + alignment);
            if (iWriteSize != i10) {
                annotatedOutput.writeZeroes(i10 - iWriteSize);
                iWriteSize = i10;
            }
            offsettedItem.writeTo(file, annotatedOutput);
            iWriteSize += offsettedItem.writeSize();
        }
        if (iWriteSize != this.writeSize) {
            throw new RuntimeException("output size mismatch");
        }
    }
}
