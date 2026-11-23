package com.android.dx.merge;

import com.android.dex.Annotation;
import com.android.dex.CallSiteId;
import com.android.dex.ClassData;
import com.android.dex.ClassDef;
import com.android.dex.Code;
import com.android.dex.Dex;
import com.android.dex.DexException;
import com.android.dex.DexIndexOverflowException;
import com.android.dex.FieldId;
import com.android.dex.MethodHandle;
import com.android.dex.MethodId;
import com.android.dex.ProtoId;
import com.android.dex.TableOfContents;
import com.android.dex.TypeList;
import com.android.dx.command.dexer.DxContext;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public final class DexMerger {
    private static final byte DBG_ADVANCE_LINE = 2;
    private static final byte DBG_ADVANCE_PC = 1;
    private static final byte DBG_END_LOCAL = 5;
    private static final byte DBG_END_SEQUENCE = 0;
    private static final byte DBG_RESTART_LOCAL = 6;
    private static final byte DBG_SET_EPILOGUE_BEGIN = 8;
    private static final byte DBG_SET_FILE = 9;
    private static final byte DBG_SET_PROLOGUE_END = 7;
    private static final byte DBG_START_LOCAL = 3;
    private static final byte DBG_START_LOCAL_EXTENDED = 4;
    private final Dex.Section annotationOut;
    private final Dex.Section annotationSetOut;
    private final Dex.Section annotationSetRefListOut;
    private final Dex.Section annotationsDirectoryOut;
    private final Dex.Section classDataOut;
    private final Dex.Section codeOut;
    private final CollisionPolicy collisionPolicy;
    private int compactWasteThreshold;
    private final TableOfContents contentsOut;
    private final DxContext context;
    private final Dex.Section debugInfoOut;
    private final Dex dexOut;
    private final Dex[] dexes;
    private final Dex.Section encodedArrayOut;
    private final Dex.Section headerOut;
    private final Dex.Section idsDefsOut;
    private final IndexMap[] indexMaps;
    private final InstructionTransformer instructionTransformer;
    private final Dex.Section mapListOut;
    private final Dex.Section stringDataOut;
    private final Dex.Section typeListOut;
    private final WriterSizes writerSizes;

    abstract class IdMerger<T extends Comparable<T>> {
        private final Dex.Section out;

        class UnsortedValue implements Comparable<IdMerger<T>.UnsortedValue> {
            final int index;
            final IndexMap indexMap;
            final int offset;
            final Dex source;
            final T value;

            UnsortedValue(Dex dex, IndexMap indexMap, T t10, int i10, int i11) {
                this.source = dex;
                this.indexMap = indexMap;
                this.value = t10;
                this.index = i10;
                this.offset = i11;
            }

            @Override // java.lang.Comparable
            public int compareTo(IdMerger<T>.UnsortedValue unsortedValue) {
                return this.value.compareTo(unsortedValue.value);
            }
        }

        protected IdMerger(Dex.Section section) {
            this.out = section;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int readIntoMap(Dex.Section section, TableOfContents.Section section2, IndexMap indexMap, int i10, TreeMap<T, List<Integer>> treeMap, int i11) {
            int position = section != null ? section.getPosition() : -1;
            if (i10 < section2.size) {
                Comparable comparable = read(section, indexMap, i10);
                List arrayList = (List) treeMap.get(comparable);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    treeMap.put(comparable, arrayList);
                }
                arrayList.add(Integer.valueOf(i11));
            }
            return position;
        }

        private List<IdMerger<T>.UnsortedValue> readUnsortedValues(Dex dex, IndexMap indexMap) {
            TableOfContents.Section section = getSection(dex.getTableOfContents());
            if (!section.exists()) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Dex.Section sectionOpen = dex.open(section.off);
            for (int i10 = 0; i10 < section.size; i10++) {
                arrayList.add(new UnsortedValue(dex, indexMap, read(sectionOpen, indexMap, 0), i10, sectionOpen.getPosition()));
            }
            return arrayList;
        }

        abstract TableOfContents.Section getSection(TableOfContents tableOfContents);

        public final void mergeSorted() {
            TableOfContents.Section[] sectionArr = new TableOfContents.Section[DexMerger.this.dexes.length];
            Dex.Section[] sectionArr2 = new Dex.Section[DexMerger.this.dexes.length];
            int[] iArr = new int[DexMerger.this.dexes.length];
            int[] iArr2 = new int[DexMerger.this.dexes.length];
            TreeMap<T, List<Integer>> treeMap = new TreeMap<>();
            int i10 = 0;
            for (int i11 = 0; i11 < DexMerger.this.dexes.length; i11++) {
                TableOfContents.Section section = getSection(DexMerger.this.dexes[i11].getTableOfContents());
                sectionArr[i11] = section;
                Dex.Section sectionOpen = section.exists() ? DexMerger.this.dexes[i11].open(sectionArr[i11].off) : null;
                sectionArr2[i11] = sectionOpen;
                iArr[i11] = readIntoMap(sectionOpen, sectionArr[i11], DexMerger.this.indexMaps[i11], iArr2[i11], treeMap, i11);
            }
            if (treeMap.isEmpty()) {
                getSection(DexMerger.this.contentsOut).off = 0;
                getSection(DexMerger.this.contentsOut).size = 0;
                return;
            }
            getSection(DexMerger.this.contentsOut).off = this.out.getPosition();
            while (!treeMap.isEmpty()) {
                Map.Entry<T, List<Integer>> entryPollFirstEntry = treeMap.pollFirstEntry();
                for (Integer num : entryPollFirstEntry.getValue()) {
                    int i12 = iArr[num.intValue()];
                    IndexMap indexMap = DexMerger.this.indexMaps[num.intValue()];
                    int iIntValue = num.intValue();
                    int i13 = iArr2[iIntValue];
                    iArr2[iIntValue] = i13 + 1;
                    updateIndex(i12, indexMap, i13, i10);
                    iArr[num.intValue()] = readIntoMap(sectionArr2[num.intValue()], sectionArr[num.intValue()], DexMerger.this.indexMaps[num.intValue()], iArr2[num.intValue()], treeMap, num.intValue());
                }
                write(entryPollFirstEntry.getKey());
                i10++;
            }
            getSection(DexMerger.this.contentsOut).size = i10;
        }

        public final void mergeUnsorted() {
            int i10;
            getSection(DexMerger.this.contentsOut).off = this.out.getPosition();
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < DexMerger.this.dexes.length; i11++) {
                arrayList.addAll(readUnsortedValues(DexMerger.this.dexes[i11], DexMerger.this.indexMaps[i11]));
            }
            if (arrayList.isEmpty()) {
                getSection(DexMerger.this.contentsOut).off = 0;
                getSection(DexMerger.this.contentsOut).size = 0;
                return;
            }
            Collections.sort(arrayList);
            int i12 = 0;
            for (int i13 = 0; i13 < arrayList.size(); i13 = i10) {
                i10 = i13 + 1;
                UnsortedValue unsortedValue = (UnsortedValue) arrayList.get(i13);
                int i14 = i12 - 1;
                updateIndex(unsortedValue.offset, unsortedValue.indexMap, unsortedValue.index, i14);
                while (i10 < arrayList.size() && unsortedValue.compareTo((UnsortedValue) arrayList.get(i10)) == 0) {
                    int i15 = i10 + 1;
                    UnsortedValue unsortedValue2 = (UnsortedValue) arrayList.get(i10);
                    updateIndex(unsortedValue2.offset, unsortedValue2.indexMap, unsortedValue2.index, i14);
                    i10 = i15;
                }
                write(unsortedValue.value);
                i12++;
            }
            getSection(DexMerger.this.contentsOut).size = i12;
        }

        abstract T read(Dex.Section section, IndexMap indexMap, int i10);

        abstract void updateIndex(int i10, IndexMap indexMap, int i11, int i12);

        abstract void write(T t10);
    }

    private static class WriterSizes {
        private int annotation;
        private int annotationsDirectory;
        private int annotationsSet;
        private int annotationsSetRefList;
        private int classData;
        private int code;
        private int debugInfo;
        private int encodedArray;
        private int header;
        private int idsDefs;
        private int mapList;
        private int stringData;
        private int typeList;

        public WriterSizes(Dex[] dexArr) {
            this.header = 112;
            for (Dex dex : dexArr) {
                plus(dex.getTableOfContents(), false);
            }
            fourByteAlign();
        }

        private static int fourByteAlign(int i10) {
            return (i10 + 3) & (-4);
        }

        private void plus(TableOfContents tableOfContents, boolean z10) {
            this.idsDefs += (tableOfContents.stringIds.size * 4) + (tableOfContents.typeIds.size * 4) + (tableOfContents.protoIds.size * 12) + (tableOfContents.fieldIds.size * 8) + (tableOfContents.methodIds.size * 8) + (tableOfContents.classDefs.size * 32);
            this.mapList = (tableOfContents.sections.length * 12) + 4;
            this.typeList += fourByteAlign(tableOfContents.typeLists.byteCount);
            this.stringData += tableOfContents.stringDatas.byteCount;
            this.annotationsDirectory += tableOfContents.annotationsDirectories.byteCount;
            this.annotationsSet += tableOfContents.annotationSets.byteCount;
            this.annotationsSetRefList += tableOfContents.annotationSetRefLists.byteCount;
            if (z10) {
                this.code += tableOfContents.codes.byteCount;
                this.classData += tableOfContents.classDatas.byteCount;
                this.encodedArray += tableOfContents.encodedArrays.byteCount;
                this.annotation += tableOfContents.annotations.byteCount;
                this.debugInfo += tableOfContents.debugInfos.byteCount;
                return;
            }
            this.code += (int) Math.ceil(((double) tableOfContents.codes.byteCount) * 1.25d);
            this.classData += (int) Math.ceil(((double) tableOfContents.classDatas.byteCount) * 1.67d);
            this.encodedArray += tableOfContents.encodedArrays.byteCount * 2;
            this.annotation += (int) Math.ceil(tableOfContents.annotations.byteCount * 2);
            this.debugInfo += (tableOfContents.debugInfos.byteCount * 2) + 8;
        }

        public int size() {
            return this.header + this.idsDefs + this.mapList + this.typeList + this.classData + this.code + this.stringData + this.debugInfo + this.encodedArray + this.annotationsDirectory + this.annotationsSet + this.annotationsSetRefList + this.annotation;
        }

        private void fourByteAlign() {
            this.header = fourByteAlign(this.header);
            this.idsDefs = fourByteAlign(this.idsDefs);
            this.mapList = fourByteAlign(this.mapList);
            this.typeList = fourByteAlign(this.typeList);
            this.classData = fourByteAlign(this.classData);
            this.code = fourByteAlign(this.code);
            this.stringData = fourByteAlign(this.stringData);
            this.debugInfo = fourByteAlign(this.debugInfo);
            this.encodedArray = fourByteAlign(this.encodedArray);
            this.annotationsDirectory = fourByteAlign(this.annotationsDirectory);
            this.annotationsSet = fourByteAlign(this.annotationsSet);
            this.annotationsSetRefList = fourByteAlign(this.annotationsSetRefList);
            this.annotation = fourByteAlign(this.annotation);
        }

        public WriterSizes(DexMerger dexMerger) {
            this.header = 112;
            this.header = dexMerger.headerOut.used();
            this.idsDefs = dexMerger.idsDefsOut.used();
            this.mapList = dexMerger.mapListOut.used();
            this.typeList = dexMerger.typeListOut.used();
            this.classData = dexMerger.classDataOut.used();
            this.code = dexMerger.codeOut.used();
            this.stringData = dexMerger.stringDataOut.used();
            this.debugInfo = dexMerger.debugInfoOut.used();
            this.encodedArray = dexMerger.encodedArrayOut.used();
            this.annotationsDirectory = dexMerger.annotationsDirectoryOut.used();
            this.annotationsSet = dexMerger.annotationSetOut.used();
            this.annotationsSetRefList = dexMerger.annotationSetRefListOut.used();
            this.annotation = dexMerger.annotationOut.used();
            fourByteAlign();
        }
    }

    public DexMerger(Dex[] dexArr, CollisionPolicy collisionPolicy, DxContext dxContext) throws IOException {
        this(dexArr, collisionPolicy, dxContext, new WriterSizes(dexArr));
    }

    private SortableType[] getSortedTypes() {
        boolean zTryAssignDepth;
        int i10 = this.contentsOut.typeIds.size;
        SortableType[] sortableTypeArr = new SortableType[i10];
        int i11 = 0;
        while (true) {
            Dex[] dexArr = this.dexes;
            if (i11 >= dexArr.length) {
                break;
            }
            readSortableTypes(sortableTypeArr, dexArr[i11], this.indexMaps[i11]);
            i11++;
        }
        do {
            zTryAssignDepth = true;
            for (int i12 = 0; i12 < i10; i12++) {
                SortableType sortableType = sortableTypeArr[i12];
                if (sortableType != null && !sortableType.isDepthAssigned()) {
                    zTryAssignDepth &= sortableType.tryAssignDepth(sortableTypeArr);
                }
            }
        } while (!zTryAssignDepth);
        Arrays.sort(sortableTypeArr, SortableType.NULLS_LAST_ORDER);
        int iIndexOf = Arrays.asList(sortableTypeArr).indexOf(null);
        return iIndexOf != -1 ? (SortableType[]) Arrays.copyOfRange(sortableTypeArr, 0, iIndexOf) : sortableTypeArr;
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 2) {
            printUsage();
            return;
        }
        Dex[] dexArr = new Dex[strArr.length - 1];
        for (int i10 = 1; i10 < strArr.length; i10++) {
            dexArr[i10 - 1] = new Dex(new File(strArr[i10]));
        }
        new DexMerger(dexArr, CollisionPolicy.KEEP_FIRST, new DxContext()).merge().writeTo(new File(strArr[0]));
    }

    private void mergeAnnotations() {
        new IdMerger<Annotation>(this.annotationOut) { // from class: com.android.dx.merge.DexMerger.9
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.annotations;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                indexMap.putAnnotationOffset(i10, DexMerger.this.annotationOut.getPosition());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public Annotation read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readAnnotation());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(Annotation annotation) {
                annotation.writeTo(DexMerger.this.annotationOut);
            }
        }.mergeUnsorted();
    }

    private int mergeApiLevels() {
        int i10 = -1;
        int i11 = 0;
        while (true) {
            Dex[] dexArr = this.dexes;
            if (i11 >= dexArr.length) {
                return i10;
            }
            int i12 = dexArr[i11].getTableOfContents().apiLevel;
            if (i10 < i12) {
                i10 = i12;
            }
            i11++;
        }
    }

    private void mergeCallSiteIds() {
        new IdMerger<CallSiteId>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.5
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.callSiteIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                indexMap.callSiteIds[i11] = i12;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public CallSiteId read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readCallSiteId());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(CallSiteId callSiteId) {
                callSiteId.writeTo(DexMerger.this.idsDefsOut);
            }
        }.mergeSorted();
    }

    private void mergeClassDefs() {
        SortableType[] sortedTypes = getSortedTypes();
        this.contentsOut.classDefs.off = this.idsDefsOut.getPosition();
        this.contentsOut.classDefs.size = sortedTypes.length;
        for (SortableType sortableType : sortedTypes) {
            transformClassDef(sortableType.getDex(), sortableType.getClassDef(), sortableType.getIndexMap());
        }
    }

    private Dex mergeDexes() throws IOException {
        mergeStringIds();
        mergeTypeIds();
        mergeTypeLists();
        mergeProtoIds();
        mergeFieldIds();
        mergeMethodIds();
        mergeMethodHandles();
        mergeAnnotations();
        unionAnnotationSetsAndDirectories();
        mergeCallSiteIds();
        mergeClassDefs();
        Arrays.sort(this.contentsOut.sections);
        TableOfContents tableOfContents = this.contentsOut;
        TableOfContents.Section section = tableOfContents.header;
        section.off = 0;
        section.size = 1;
        tableOfContents.fileSize = this.dexOut.getLength();
        this.contentsOut.computeSizesFromOffsets();
        this.contentsOut.writeHeader(this.headerOut, mergeApiLevels());
        this.contentsOut.writeMap(this.mapListOut);
        this.dexOut.writeHashes();
        return this.dexOut;
    }

    private void mergeFieldIds() {
        new IdMerger<FieldId>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.7
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.fieldIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                if (i12 >= 0 && i12 <= 65535) {
                    indexMap.fieldIds[i11] = (short) i12;
                    return;
                }
                throw new DexIndexOverflowException("field ID not in [0, 0xffff]: " + i12);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public FieldId read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readFieldId());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(FieldId fieldId) {
                fieldId.writeTo(DexMerger.this.idsDefsOut);
            }
        }.mergeSorted();
    }

    private void mergeMethodHandles() {
        new IdMerger<MethodHandle>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.6
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.methodHandles;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                indexMap.methodHandleIds.put(Integer.valueOf(i11), Integer.valueOf(indexMap.methodHandleIds.size()));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public MethodHandle read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readMethodHandle());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(MethodHandle methodHandle) {
                methodHandle.writeTo(DexMerger.this.idsDefsOut);
            }
        }.mergeUnsorted();
    }

    private void mergeMethodIds() {
        new IdMerger<MethodId>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.8
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.methodIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                if (i12 >= 0 && i12 <= 65535) {
                    indexMap.methodIds[i11] = (short) i12;
                    return;
                }
                throw new DexIndexOverflowException("method ID not in [0, 0xffff]: " + i12);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public MethodId read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readMethodId());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(MethodId methodId) {
                methodId.writeTo(DexMerger.this.idsDefsOut);
            }
        }.mergeSorted();
    }

    private void mergeProtoIds() {
        new IdMerger<ProtoId>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.4
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.protoIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                if (i12 >= 0 && i12 <= 65535) {
                    indexMap.protoIds[i11] = (short) i12;
                    return;
                }
                throw new DexIndexOverflowException("proto ID not in [0, 0xffff]: " + i12);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public ProtoId read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjust(section.readProtoId());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(ProtoId protoId) {
                protoId.writeTo(DexMerger.this.idsDefsOut);
            }
        }.mergeSorted();
    }

    private void mergeStringIds() {
        new IdMerger<String>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.1
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.stringIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                indexMap.stringIds[i11] = i12;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public String read(Dex.Section section, IndexMap indexMap, int i10) {
                return section.readString();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(String str) {
                DexMerger.this.contentsOut.stringDatas.size++;
                DexMerger.this.idsDefsOut.writeInt(DexMerger.this.stringDataOut.getPosition());
                DexMerger.this.stringDataOut.writeStringData(str);
            }
        }.mergeSorted();
    }

    private void mergeTypeIds() {
        new IdMerger<Integer>(this.idsDefsOut) { // from class: com.android.dx.merge.DexMerger.2
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.typeIds;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                if (i12 >= 0 && i12 <= 65535) {
                    indexMap.typeIds[i11] = (short) i12;
                    return;
                }
                throw new DexIndexOverflowException("type ID not in [0, 0xffff]: " + i12);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public Integer read(Dex.Section section, IndexMap indexMap, int i10) {
                return Integer.valueOf(indexMap.adjustString(section.readInt()));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(Integer num) {
                DexMerger.this.idsDefsOut.writeInt(num.intValue());
            }
        }.mergeSorted();
    }

    private void mergeTypeLists() {
        new IdMerger<TypeList>(this.typeListOut) { // from class: com.android.dx.merge.DexMerger.3
            @Override // com.android.dx.merge.DexMerger.IdMerger
            TableOfContents.Section getSection(TableOfContents tableOfContents) {
                return tableOfContents.typeLists;
            }

            @Override // com.android.dx.merge.DexMerger.IdMerger
            void updateIndex(int i10, IndexMap indexMap, int i11, int i12) {
                indexMap.putTypeListOffset(i10, DexMerger.this.typeListOut.getPosition());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public TypeList read(Dex.Section section, IndexMap indexMap, int i10) {
                return indexMap.adjustTypeList(section.readTypeList());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.android.dx.merge.DexMerger.IdMerger
            public void write(TypeList typeList) {
                DexMerger.this.typeListOut.writeTypeList(typeList);
            }
        }.mergeUnsorted();
    }

    private static void printUsage() {
        System.out.println("Usage: DexMerger <out.dex> <a.dex> <b.dex> ...");
        System.out.println();
        System.out.println("If a class is defined in several dex, the class found in the first dex will be used.");
    }

    private void readSortableTypes(SortableType[] sortableTypeArr, Dex dex, IndexMap indexMap) {
        for (ClassDef classDef : dex.classDefs()) {
            SortableType sortableTypeAdjust = indexMap.adjust(new SortableType(dex, indexMap, classDef));
            int typeIndex = sortableTypeAdjust.getTypeIndex();
            if (sortableTypeArr[typeIndex] == null) {
                sortableTypeArr[typeIndex] = sortableTypeAdjust;
            } else if (this.collisionPolicy != CollisionPolicy.KEEP_FIRST) {
                throw new DexException("Multiple dex files define " + dex.typeNames().get(classDef.getTypeIndex()));
            }
        }
    }

    private void transformAnnotationDirectories(Dex dex, IndexMap indexMap) {
        TableOfContents.Section section = dex.getTableOfContents().annotationsDirectories;
        if (section.exists()) {
            Dex.Section sectionOpen = dex.open(section.off);
            for (int i10 = 0; i10 < section.size; i10++) {
                transformAnnotationDirectory(sectionOpen, indexMap);
            }
        }
    }

    private void transformAnnotationDirectory(Dex.Section section, IndexMap indexMap) {
        this.contentsOut.annotationsDirectories.size++;
        this.annotationsDirectoryOut.assertFourByteAligned();
        indexMap.putAnnotationDirectoryOffset(section.getPosition(), this.annotationsDirectoryOut.getPosition());
        this.annotationsDirectoryOut.writeInt(indexMap.adjustAnnotationSet(section.readInt()));
        int i10 = section.readInt();
        this.annotationsDirectoryOut.writeInt(i10);
        int i11 = section.readInt();
        this.annotationsDirectoryOut.writeInt(i11);
        int i12 = section.readInt();
        this.annotationsDirectoryOut.writeInt(i12);
        for (int i13 = 0; i13 < i10; i13++) {
            this.annotationsDirectoryOut.writeInt(indexMap.adjustField(section.readInt()));
            this.annotationsDirectoryOut.writeInt(indexMap.adjustAnnotationSet(section.readInt()));
        }
        for (int i14 = 0; i14 < i11; i14++) {
            this.annotationsDirectoryOut.writeInt(indexMap.adjustMethod(section.readInt()));
            this.annotationsDirectoryOut.writeInt(indexMap.adjustAnnotationSet(section.readInt()));
        }
        for (int i15 = 0; i15 < i12; i15++) {
            this.annotationsDirectoryOut.writeInt(indexMap.adjustMethod(section.readInt()));
            this.annotationsDirectoryOut.writeInt(indexMap.adjustAnnotationSetRefList(section.readInt()));
        }
    }

    private void transformAnnotationSet(IndexMap indexMap, Dex.Section section) {
        this.contentsOut.annotationSets.size++;
        this.annotationSetOut.assertFourByteAligned();
        indexMap.putAnnotationSetOffset(section.getPosition(), this.annotationSetOut.getPosition());
        int i10 = section.readInt();
        this.annotationSetOut.writeInt(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.annotationSetOut.writeInt(indexMap.adjustAnnotation(section.readInt()));
        }
    }

    private void transformAnnotationSetRefList(IndexMap indexMap, Dex.Section section) {
        this.contentsOut.annotationSetRefLists.size++;
        this.annotationSetRefListOut.assertFourByteAligned();
        indexMap.putAnnotationSetRefListOffset(section.getPosition(), this.annotationSetRefListOut.getPosition());
        int i10 = section.readInt();
        this.annotationSetRefListOut.writeInt(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.annotationSetRefListOut.writeInt(indexMap.adjustAnnotationSet(section.readInt()));
        }
    }

    private void transformAnnotationSetRefLists(Dex dex, IndexMap indexMap) {
        TableOfContents.Section section = dex.getTableOfContents().annotationSetRefLists;
        if (section.exists()) {
            Dex.Section sectionOpen = dex.open(section.off);
            for (int i10 = 0; i10 < section.size; i10++) {
                transformAnnotationSetRefList(indexMap, sectionOpen);
            }
        }
    }

    private void transformAnnotationSets(Dex dex, IndexMap indexMap) {
        TableOfContents.Section section = dex.getTableOfContents().annotationSets;
        if (section.exists()) {
            Dex.Section sectionOpen = dex.open(section.off);
            for (int i10 = 0; i10 < section.size; i10++) {
                transformAnnotationSet(indexMap, sectionOpen);
            }
        }
    }

    private int[] transformCatchHandlers(IndexMap indexMap, Code.CatchHandler[] catchHandlerArr) {
        int position = this.codeOut.getPosition();
        this.codeOut.writeUleb128(catchHandlerArr.length);
        int[] iArr = new int[catchHandlerArr.length];
        for (int i10 = 0; i10 < catchHandlerArr.length; i10++) {
            iArr[i10] = this.codeOut.getPosition() - position;
            transformEncodedCatchHandler(catchHandlerArr[i10], indexMap);
        }
        return iArr;
    }

    private void transformClassData(Dex dex, ClassData classData, IndexMap indexMap) {
        this.contentsOut.classDatas.size++;
        ClassData.Field[] staticFields = classData.getStaticFields();
        ClassData.Field[] instanceFields = classData.getInstanceFields();
        ClassData.Method[] directMethods = classData.getDirectMethods();
        ClassData.Method[] virtualMethods = classData.getVirtualMethods();
        this.classDataOut.writeUleb128(staticFields.length);
        this.classDataOut.writeUleb128(instanceFields.length);
        this.classDataOut.writeUleb128(directMethods.length);
        this.classDataOut.writeUleb128(virtualMethods.length);
        transformFields(indexMap, staticFields);
        transformFields(indexMap, instanceFields);
        transformMethods(dex, indexMap, directMethods);
        transformMethods(dex, indexMap, virtualMethods);
    }

    private void transformClassDef(Dex dex, ClassDef classDef, IndexMap indexMap) {
        this.idsDefsOut.assertFourByteAligned();
        this.idsDefsOut.writeInt(classDef.getTypeIndex());
        this.idsDefsOut.writeInt(classDef.getAccessFlags());
        this.idsDefsOut.writeInt(classDef.getSupertypeIndex());
        this.idsDefsOut.writeInt(classDef.getInterfacesOffset());
        this.idsDefsOut.writeInt(indexMap.adjustString(classDef.getSourceFileIndex()));
        this.idsDefsOut.writeInt(indexMap.adjustAnnotationDirectory(classDef.getAnnotationsOffset()));
        if (classDef.getClassDataOffset() == 0) {
            this.idsDefsOut.writeInt(0);
        } else {
            this.idsDefsOut.writeInt(this.classDataOut.getPosition());
            transformClassData(dex, dex.readClassData(classDef), indexMap);
        }
        this.idsDefsOut.writeInt(indexMap.adjustEncodedArray(classDef.getStaticValuesOffset()));
    }

    private void transformCode(Dex dex, Code code, IndexMap indexMap) {
        this.contentsOut.codes.size++;
        this.codeOut.assertFourByteAligned();
        this.codeOut.writeUnsignedShort(code.getRegistersSize());
        this.codeOut.writeUnsignedShort(code.getInsSize());
        this.codeOut.writeUnsignedShort(code.getOutsSize());
        Code.Try[] tries = code.getTries();
        Code.CatchHandler[] catchHandlers = code.getCatchHandlers();
        this.codeOut.writeUnsignedShort(tries.length);
        int debugInfoOffset = code.getDebugInfoOffset();
        if (debugInfoOffset != 0) {
            this.codeOut.writeInt(this.debugInfoOut.getPosition());
            transformDebugInfoItem(dex.open(debugInfoOffset), indexMap);
        } else {
            this.codeOut.writeInt(0);
        }
        short[] sArrTransform = this.instructionTransformer.transform(indexMap, code.getInstructions());
        this.codeOut.writeInt(sArrTransform.length);
        this.codeOut.write(sArrTransform);
        if (tries.length > 0) {
            if (sArrTransform.length % 2 == 1) {
                this.codeOut.writeShort((short) 0);
            }
            Dex.Section sectionOpen = this.dexOut.open(this.codeOut.getPosition());
            this.codeOut.skip(tries.length * 8);
            transformTries(sectionOpen, tries, transformCatchHandlers(indexMap, catchHandlers));
        }
    }

    private void transformDebugInfoItem(Dex.Section section, IndexMap indexMap) {
        this.contentsOut.debugInfos.size++;
        this.debugInfoOut.writeUleb128(section.readUleb128());
        int uleb128 = section.readUleb128();
        this.debugInfoOut.writeUleb128(uleb128);
        for (int i10 = 0; i10 < uleb128; i10++) {
            this.debugInfoOut.writeUleb128p1(indexMap.adjustString(section.readUleb128p1()));
        }
        while (true) {
            byte b10 = section.readByte();
            this.debugInfoOut.writeByte(b10);
            if (b10 != 9) {
                switch (b10) {
                    case 0:
                        return;
                    case 1:
                        this.debugInfoOut.writeUleb128(section.readUleb128());
                        break;
                    case 2:
                        this.debugInfoOut.writeSleb128(section.readSleb128());
                        break;
                    case 3:
                    case 4:
                        this.debugInfoOut.writeUleb128(section.readUleb128());
                        this.debugInfoOut.writeUleb128p1(indexMap.adjustString(section.readUleb128p1()));
                        this.debugInfoOut.writeUleb128p1(indexMap.adjustType(section.readUleb128p1()));
                        if (b10 == 4) {
                            this.debugInfoOut.writeUleb128p1(indexMap.adjustString(section.readUleb128p1()));
                        }
                        break;
                    case 5:
                    case 6:
                        this.debugInfoOut.writeUleb128(section.readUleb128());
                        break;
                }
            } else {
                this.debugInfoOut.writeUleb128p1(indexMap.adjustString(section.readUleb128p1()));
            }
        }
    }

    private void transformEncodedCatchHandler(Code.CatchHandler catchHandler, IndexMap indexMap) {
        int catchAllAddress = catchHandler.getCatchAllAddress();
        int[] typeIndexes = catchHandler.getTypeIndexes();
        int[] addresses = catchHandler.getAddresses();
        if (catchAllAddress != -1) {
            this.codeOut.writeSleb128(-typeIndexes.length);
        } else {
            this.codeOut.writeSleb128(typeIndexes.length);
        }
        for (int i10 = 0; i10 < typeIndexes.length; i10++) {
            this.codeOut.writeUleb128(indexMap.adjustType(typeIndexes[i10]));
            this.codeOut.writeUleb128(addresses[i10]);
        }
        if (catchAllAddress != -1) {
            this.codeOut.writeUleb128(catchAllAddress);
        }
    }

    private void transformFields(IndexMap indexMap, ClassData.Field[] fieldArr) {
        int length = fieldArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            ClassData.Field field = fieldArr[i10];
            int iAdjustField = indexMap.adjustField(field.getFieldIndex());
            this.classDataOut.writeUleb128(iAdjustField - i11);
            this.classDataOut.writeUleb128(field.getAccessFlags());
            i10++;
            i11 = iAdjustField;
        }
    }

    private void transformMethods(Dex dex, IndexMap indexMap, ClassData.Method[] methodArr) {
        int length = methodArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            ClassData.Method method = methodArr[i10];
            int iAdjustMethod = indexMap.adjustMethod(method.getMethodIndex());
            this.classDataOut.writeUleb128(iAdjustMethod - i11);
            this.classDataOut.writeUleb128(method.getAccessFlags());
            if (method.getCodeOffset() == 0) {
                this.classDataOut.writeUleb128(0);
            } else {
                this.codeOut.alignToFourBytesWithZeroFill();
                this.classDataOut.writeUleb128(this.codeOut.getPosition());
                transformCode(dex, dex.readCode(method), indexMap);
            }
            i10++;
            i11 = iAdjustMethod;
        }
    }

    private void transformStaticValues(Dex dex, IndexMap indexMap) {
        TableOfContents.Section section = dex.getTableOfContents().encodedArrays;
        if (section.exists()) {
            Dex.Section sectionOpen = dex.open(section.off);
            for (int i10 = 0; i10 < section.size; i10++) {
                transformStaticValues(sectionOpen, indexMap);
            }
        }
    }

    private void transformTries(Dex.Section section, Code.Try[] tryArr, int[] iArr) {
        for (Code.Try r10 : tryArr) {
            section.writeInt(r10.getStartAddress());
            section.writeUnsignedShort(r10.getInstructionCount());
            section.writeUnsignedShort(iArr[r10.getCatchHandlerIndex()]);
        }
    }

    private void unionAnnotationSetsAndDirectories() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            Dex[] dexArr = this.dexes;
            if (i11 >= dexArr.length) {
                break;
            }
            transformAnnotationSets(dexArr[i11], this.indexMaps[i11]);
            i11++;
        }
        int i12 = 0;
        while (true) {
            Dex[] dexArr2 = this.dexes;
            if (i12 >= dexArr2.length) {
                break;
            }
            transformAnnotationSetRefLists(dexArr2[i12], this.indexMaps[i12]);
            i12++;
        }
        int i13 = 0;
        while (true) {
            Dex[] dexArr3 = this.dexes;
            if (i13 >= dexArr3.length) {
                break;
            }
            transformAnnotationDirectories(dexArr3[i13], this.indexMaps[i13]);
            i13++;
        }
        while (true) {
            Dex[] dexArr4 = this.dexes;
            if (i10 >= dexArr4.length) {
                return;
            }
            transformStaticValues(dexArr4[i10], this.indexMaps[i10]);
            i10++;
        }
    }

    public Dex merge() throws IOException {
        Dex[] dexArr = this.dexes;
        if (dexArr.length == 1) {
            return dexArr[0];
        }
        if (dexArr.length == 0) {
            return null;
        }
        long jNanoTime = System.nanoTime();
        Dex dexMergeDexes = mergeDexes();
        WriterSizes writerSizes = new WriterSizes(this);
        int size = this.writerSizes.size() - writerSizes.size();
        if (size > this.compactWasteThreshold) {
            dexMergeDexes = new DexMerger(new Dex[]{this.dexOut, new Dex(0)}, CollisionPolicy.FAIL, this.context, writerSizes).mergeDexes();
            this.context.out.printf("Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n", Float.valueOf(this.dexOut.getLength() / 1024.0f), Float.valueOf(dexMergeDexes.getLength() / 1024.0f), Float.valueOf(size / 1024.0f));
        }
        long jNanoTime2 = System.nanoTime() - jNanoTime;
        int i10 = 0;
        while (i10 < this.dexes.length) {
            int i11 = i10 + 1;
            this.context.out.printf("Merged dex #%d (%d defs/%.1fKiB)%n", Integer.valueOf(i11), Integer.valueOf(this.dexes[i10].getTableOfContents().classDefs.size), Float.valueOf(this.dexes[i10].getLength() / 1024.0f));
            i10 = i11;
        }
        this.context.out.printf("Result is %d defs/%.1fKiB. Took %.1fs%n", Integer.valueOf(dexMergeDexes.getTableOfContents().classDefs.size), Float.valueOf(dexMergeDexes.getLength() / 1024.0f), Float.valueOf(jNanoTime2 / 1.0E9f));
        return dexMergeDexes;
    }

    public void setCompactWasteThreshold(int i10) {
        this.compactWasteThreshold = i10;
    }

    private DexMerger(Dex[] dexArr, CollisionPolicy collisionPolicy, DxContext dxContext, WriterSizes writerSizes) throws IOException {
        this.compactWasteThreshold = 1048576;
        this.dexes = dexArr;
        this.collisionPolicy = collisionPolicy;
        this.context = dxContext;
        this.writerSizes = writerSizes;
        this.dexOut = new Dex(writerSizes.size());
        this.indexMaps = new IndexMap[dexArr.length];
        for (int i10 = 0; i10 < dexArr.length; i10++) {
            this.indexMaps[i10] = new IndexMap(this.dexOut, dexArr[i10].getTableOfContents());
        }
        this.instructionTransformer = new InstructionTransformer();
        this.headerOut = this.dexOut.appendSection(writerSizes.header, "header");
        this.idsDefsOut = this.dexOut.appendSection(writerSizes.idsDefs, "ids defs");
        TableOfContents tableOfContents = this.dexOut.getTableOfContents();
        this.contentsOut = tableOfContents;
        tableOfContents.dataOff = this.dexOut.getNextSectionStart();
        tableOfContents.mapList.off = this.dexOut.getNextSectionStart();
        tableOfContents.mapList.size = 1;
        this.mapListOut = this.dexOut.appendSection(writerSizes.mapList, "map list");
        tableOfContents.typeLists.off = this.dexOut.getNextSectionStart();
        this.typeListOut = this.dexOut.appendSection(writerSizes.typeList, "type list");
        tableOfContents.annotationSetRefLists.off = this.dexOut.getNextSectionStart();
        this.annotationSetRefListOut = this.dexOut.appendSection(writerSizes.annotationsSetRefList, "annotation set ref list");
        tableOfContents.annotationSets.off = this.dexOut.getNextSectionStart();
        this.annotationSetOut = this.dexOut.appendSection(writerSizes.annotationsSet, "annotation sets");
        tableOfContents.classDatas.off = this.dexOut.getNextSectionStart();
        this.classDataOut = this.dexOut.appendSection(writerSizes.classData, "class data");
        tableOfContents.codes.off = this.dexOut.getNextSectionStart();
        this.codeOut = this.dexOut.appendSection(writerSizes.code, "code");
        tableOfContents.stringDatas.off = this.dexOut.getNextSectionStart();
        this.stringDataOut = this.dexOut.appendSection(writerSizes.stringData, "string data");
        tableOfContents.debugInfos.off = this.dexOut.getNextSectionStart();
        this.debugInfoOut = this.dexOut.appendSection(writerSizes.debugInfo, "debug info");
        tableOfContents.annotations.off = this.dexOut.getNextSectionStart();
        this.annotationOut = this.dexOut.appendSection(writerSizes.annotation, "annotation");
        tableOfContents.encodedArrays.off = this.dexOut.getNextSectionStart();
        this.encodedArrayOut = this.dexOut.appendSection(writerSizes.encodedArray, "encoded array");
        tableOfContents.annotationsDirectories.off = this.dexOut.getNextSectionStart();
        this.annotationsDirectoryOut = this.dexOut.appendSection(writerSizes.annotationsDirectory, "annotations directory");
        tableOfContents.dataSize = this.dexOut.getNextSectionStart() - tableOfContents.dataOff;
    }

    private void transformStaticValues(Dex.Section section, IndexMap indexMap) {
        this.contentsOut.encodedArrays.size++;
        indexMap.putEncodedArrayValueOffset(section.getPosition(), this.encodedArrayOut.getPosition());
        indexMap.adjustEncodedArray(section.readEncodedArray()).writeTo(this.encodedArrayOut);
    }
}
