package com.android.dx.dex.file;

import com.android.dx.util.AnnotatedOutput;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public final class Statistics {
    private final HashMap<String, Data> dataMap = new HashMap<>(50);

    private static class Data {
        private int count;
        private int largestSize;
        private final String name;
        private int smallestSize;
        private int totalSize;

        public Data(Item item, String str) {
            int iWriteSize = item.writeSize();
            this.name = str;
            this.count = 1;
            this.totalSize = iWriteSize;
            this.largestSize = iWriteSize;
            this.smallestSize = iWriteSize;
        }

        public void add(Item item) {
            int iWriteSize = item.writeSize();
            this.count++;
            this.totalSize += iWriteSize;
            if (iWriteSize > this.largestSize) {
                this.largestSize = iWriteSize;
            }
            if (iWriteSize < this.smallestSize) {
                this.smallestSize = iWriteSize;
            }
        }

        public String toHuman() {
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("  ");
            sb3.append(this.name);
            sb3.append(": ");
            sb3.append(this.count);
            sb3.append(" item");
            sb3.append(this.count == 1 ? "" : "s");
            sb3.append("; ");
            sb3.append(this.totalSize);
            sb3.append(" bytes total\n");
            sb2.append(sb3.toString());
            if (this.smallestSize == this.largestSize) {
                sb2.append("    " + this.smallestSize + " bytes/item\n");
            } else {
                sb2.append("    " + this.smallestSize + ".." + this.largestSize + " bytes/item; average " + (this.totalSize / this.count) + "\n");
            }
            return sb2.toString();
        }

        public void writeAnnotation(AnnotatedOutput annotatedOutput) {
            annotatedOutput.annotate(toHuman());
        }
    }

    public void add(Item item) {
        String strTypeName = item.typeName();
        Data data = this.dataMap.get(strTypeName);
        if (data == null) {
            this.dataMap.put(strTypeName, new Data(item, strTypeName));
        } else {
            data.add(item);
        }
    }

    public void addAll(Section section) {
        Iterator<? extends Item> it2 = section.items().iterator();
        while (it2.hasNext()) {
            add(it2.next());
        }
    }

    public String toHuman() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Statistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it2 = treeMap.values().iterator();
        while (it2.hasNext()) {
            sb2.append(((Data) it2.next()).toHuman());
        }
        return sb2.toString();
    }

    public final void writeAnnotation(AnnotatedOutput annotatedOutput) {
        if (this.dataMap.size() == 0) {
            return;
        }
        annotatedOutput.annotate(0, "\nstatistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        Iterator it2 = treeMap.values().iterator();
        while (it2.hasNext()) {
            ((Data) it2.next()).writeAnnotation(annotatedOutput);
        }
    }
}
