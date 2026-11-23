package com.android.dx.dex.file;

import com.android.dex.Leb128;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;
import com.android.dex.util.ExceptionWithContext;
import com.android.dx.dex.code.DalvCode;
import com.android.dx.dex.code.DalvInsnList;
import com.android.dx.dex.code.LocalList;
import com.android.dx.dex.code.PositionList;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.sigmob.sdk.base.mta.PointCategory;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class DebugInfoDecoder {
    private final int codesize;
    private final Prototype desc;
    private final byte[] encoded;
    private final DexFile file;
    private final boolean isStatic;
    private final LocalEntry[] lastEntryForReg;
    private final ArrayList<LocalEntry> locals;
    private final ArrayList<PositionEntry> positions;
    private final int regSize;
    private final int thisStringIdx;
    private int line = 1;
    private int address = 0;

    private static class LocalEntry {
        public int address;
        public boolean isStart;
        public int nameIndex;
        public int reg;
        public int signatureIndex;
        public int typeIndex;

        public LocalEntry(int i10, boolean z10, int i11, int i12, int i13, int i14) {
            this.address = i10;
            this.isStart = z10;
            this.reg = i11;
            this.nameIndex = i12;
            this.typeIndex = i13;
            this.signatureIndex = i14;
        }

        public String toString() {
            Object[] objArr = new Object[6];
            objArr[0] = Integer.valueOf(this.address);
            objArr[1] = this.isStart ? "start" : PointCategory.END;
            objArr[2] = Integer.valueOf(this.reg);
            objArr[3] = Integer.valueOf(this.nameIndex);
            objArr[4] = Integer.valueOf(this.typeIndex);
            objArr[5] = Integer.valueOf(this.signatureIndex);
            return String.format("[%x %s v%d %04x %04x %04x]", objArr);
        }
    }

    private static class PositionEntry {
        public int address;
        public int line;

        public PositionEntry(int i10, int i11) {
            this.address = i10;
            this.line = i11;
        }
    }

    DebugInfoDecoder(byte[] bArr, int i10, int i11, boolean z10, CstMethodRef cstMethodRef, DexFile dexFile) {
        int iIndexOf;
        if (bArr == null) {
            throw new NullPointerException("encoded == null");
        }
        this.encoded = bArr;
        this.isStatic = z10;
        this.desc = cstMethodRef.getPrototype();
        this.file = dexFile;
        this.regSize = i11;
        this.positions = new ArrayList<>();
        this.locals = new ArrayList<>();
        this.codesize = i10;
        this.lastEntryForReg = new LocalEntry[i11];
        try {
            iIndexOf = dexFile.getStringIds().indexOf(new CstString("this"));
        } catch (IllegalArgumentException unused) {
            iIndexOf = -1;
        }
        this.thisStringIdx = iIndexOf;
    }

    private void decode0() throws IOException {
        ByteArrayByteInput byteArrayByteInput = new ByteArrayByteInput(this.encoded);
        this.line = Leb128.readUnsignedLeb128(byteArrayByteInput);
        int unsignedLeb128 = Leb128.readUnsignedLeb128(byteArrayByteInput);
        StdTypeList parameterTypes = this.desc.getParameterTypes();
        int paramBase = getParamBase();
        if (unsignedLeb128 != parameterTypes.size()) {
            throw new RuntimeException("Mismatch between parameters_size and prototype");
        }
        if (!this.isStatic) {
            LocalEntry localEntry = new LocalEntry(0, true, paramBase, this.thisStringIdx, 0, 0);
            this.locals.add(localEntry);
            this.lastEntryForReg[paramBase] = localEntry;
            paramBase++;
        }
        int category = paramBase;
        for (int i10 = 0; i10 < unsignedLeb128; i10++) {
            Type type = parameterTypes.getType(i10);
            int stringIndex = readStringIndex(byteArrayByteInput);
            LocalEntry localEntry2 = stringIndex == -1 ? new LocalEntry(0, true, category, -1, 0, 0) : new LocalEntry(0, true, category, stringIndex, 0, 0);
            this.locals.add(localEntry2);
            this.lastEntryForReg[category] = localEntry2;
            category += type.getCategory();
        }
        while (true) {
            int i11 = byteArrayByteInput.readByte() & 255;
            switch (i11) {
                case 0:
                    return;
                case 1:
                    this.address += Leb128.readUnsignedLeb128(byteArrayByteInput);
                    break;
                case 2:
                    this.line += Leb128.readSignedLeb128(byteArrayByteInput);
                    break;
                case 3:
                    int unsignedLeb129 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry3 = new LocalEntry(this.address, true, unsignedLeb129, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), 0);
                    this.locals.add(localEntry3);
                    this.lastEntryForReg[unsignedLeb129] = localEntry3;
                    break;
                case 4:
                    int unsignedLeb1210 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    LocalEntry localEntry4 = new LocalEntry(this.address, true, unsignedLeb1210, readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput), readStringIndex(byteArrayByteInput));
                    this.locals.add(localEntry4);
                    this.lastEntryForReg[unsignedLeb1210] = localEntry4;
                    break;
                case 5:
                    int unsignedLeb1211 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry5 = this.lastEntryForReg[unsignedLeb1211];
                        if (!localEntry5.isStart) {
                            throw new RuntimeException("nonsensical END_LOCAL on dead register v" + unsignedLeb1211);
                        }
                        LocalEntry localEntry6 = new LocalEntry(this.address, false, unsignedLeb1211, localEntry5.nameIndex, localEntry5.typeIndex, localEntry5.signatureIndex);
                        this.locals.add(localEntry6);
                        this.lastEntryForReg[unsignedLeb1211] = localEntry6;
                    } catch (NullPointerException unused) {
                        throw new RuntimeException("Encountered END_LOCAL on new v" + unsignedLeb1211);
                    }
                    break;
                case 6:
                    int unsignedLeb1212 = Leb128.readUnsignedLeb128(byteArrayByteInput);
                    try {
                        LocalEntry localEntry7 = this.lastEntryForReg[unsignedLeb1212];
                        if (localEntry7.isStart) {
                            throw new RuntimeException("nonsensical RESTART_LOCAL on live register v" + unsignedLeb1212);
                        }
                        LocalEntry localEntry8 = new LocalEntry(this.address, true, unsignedLeb1212, localEntry7.nameIndex, localEntry7.typeIndex, 0);
                        this.locals.add(localEntry8);
                        this.lastEntryForReg[unsignedLeb1212] = localEntry8;
                    } catch (NullPointerException unused2) {
                        throw new RuntimeException("Encountered RESTART_LOCAL on new v" + unsignedLeb1212);
                    }
                    break;
                case 7:
                case 8:
                case 9:
                    break;
                default:
                    if (i11 < 10) {
                        throw new RuntimeException("Invalid extended opcode encountered " + i11);
                    }
                    int i12 = i11 - 10;
                    int i13 = this.address + (i12 / 15);
                    this.address = i13;
                    int i14 = this.line + ((i12 % 15) - 4);
                    this.line = i14;
                    this.positions.add(new PositionEntry(i13, i14));
                    break;
                    break;
            }
        }
    }

    private int getParamBase() {
        return (this.regSize - this.desc.getParameterTypes().getWordCount()) - (!this.isStatic ? 1 : 0);
    }

    private int readStringIndex(ByteInput byteInput) throws IOException {
        return Leb128.readUnsignedLeb128(byteInput) - 1;
    }

    public static void validateEncode(byte[] bArr, DexFile dexFile, CstMethodRef cstMethodRef, DalvCode dalvCode, boolean z10) {
        PositionList positions = dalvCode.getPositions();
        LocalList locals = dalvCode.getLocals();
        DalvInsnList insns = dalvCode.getInsns();
        try {
            validateEncode0(bArr, insns.codeSize(), insns.getRegistersSize(), z10, cstMethodRef, dexFile, positions, locals);
        } catch (RuntimeException e10) {
            System.err.println("instructions:");
            insns.debugPrint((OutputStream) System.err, "  ", true);
            System.err.println("local list:");
            locals.debugPrint(System.err, "  ");
            throw ExceptionWithContext.withContext(e10, "while processing " + cstMethodRef.toHuman());
        }
    }

    private static void validateEncode0(byte[] bArr, int i10, int i11, boolean z10, CstMethodRef cstMethodRef, DexFile dexFile, PositionList positionList, LocalList localList) {
        boolean z11;
        LocalEntry localEntry;
        PositionEntry next;
        DebugInfoDecoder debugInfoDecoder = new DebugInfoDecoder(bArr, i10, i11, z10, cstMethodRef, dexFile);
        debugInfoDecoder.decode();
        List<PositionEntry> positionList2 = debugInfoDecoder.getPositionList();
        if (positionList2.size() != positionList.size()) {
            throw new RuntimeException("Decoded positions table not same size was " + positionList2.size() + " expected " + positionList.size());
        }
        Iterator<PositionEntry> it2 = positionList2.iterator();
        do {
            z11 = false;
            if (!it2.hasNext()) {
                List<LocalEntry> locals = debugInfoDecoder.getLocals();
                int i12 = debugInfoDecoder.thisStringIdx;
                int size = locals.size();
                int paramBase = debugInfoDecoder.getParamBase();
                for (int i13 = 0; i13 < size; i13++) {
                    LocalEntry localEntry2 = locals.get(i13);
                    int i14 = localEntry2.nameIndex;
                    if (i14 < 0 || i14 == i12) {
                        for (int i15 = i13 + 1; i15 < size; i15++) {
                            LocalEntry localEntry3 = locals.get(i15);
                            if (localEntry3.address != 0) {
                                break;
                            }
                            if (localEntry2.reg == localEntry3.reg && localEntry3.isStart) {
                                locals.set(i13, localEntry3);
                                locals.remove(i15);
                                size--;
                                break;
                            }
                        }
                    }
                }
                int size2 = localList.size();
                int i16 = 0;
                for (int i17 = 0; i17 < size2; i17++) {
                    LocalList.Entry entry = localList.get(i17);
                    if (entry.getDisposition() != LocalList.Disposition.END_REPLACED) {
                        do {
                            localEntry = locals.get(i16);
                            if (localEntry.nameIndex >= 0) {
                                break;
                            } else {
                                i16++;
                            }
                        } while (i16 < size);
                        int i18 = localEntry.address;
                        if (localEntry.reg != entry.getRegister()) {
                            System.err.println("local register mismatch at orig " + i17 + " / decoded " + i16);
                        } else if (localEntry.isStart != entry.isStart()) {
                            System.err.println("local start/end mismatch at orig " + i17 + " / decoded " + i16);
                        } else if (i18 == entry.getAddress() || (i18 == 0 && localEntry.reg >= paramBase)) {
                            i16++;
                        } else {
                            System.err.println("local address mismatch at orig " + i17 + " / decoded " + i16);
                        }
                        z11 = true;
                        break;
                    }
                }
                if (z11) {
                    System.err.println("decoded locals:");
                    for (LocalEntry localEntry4 : locals) {
                        System.err.println("  " + localEntry4);
                    }
                    throw new RuntimeException("local table problem");
                }
                return;
            }
            next = it2.next();
            for (int size3 = positionList.size() - 1; size3 >= 0; size3--) {
                PositionList.Entry entry2 = positionList.get(size3);
                if (next.line == entry2.getPosition().getLine() && next.address == entry2.getAddress()) {
                    z11 = true;
                    break;
                }
            }
        } while (z11);
        throw new RuntimeException("Could not match position entry: " + next.address + ", " + next.line);
    }

    public void decode() {
        try {
            decode0();
        } catch (Exception e10) {
            throw ExceptionWithContext.withContext(e10, "...while decoding debug info");
        }
    }

    public List<LocalEntry> getLocals() {
        return this.locals;
    }

    public List<PositionEntry> getPositionList() {
        return this.positions;
    }
}
