package com.czhj.wire.okio;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ByteString[] f25963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f25964b;

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.f25963a = byteStringArr;
        this.f25964b = iArr;
    }

    private static int a(Buffer buffer) {
        return (int) (buffer.size() / 4);
    }

    public static Options of(ByteString... byteStringArr) {
        if (byteStringArr.length == 0) {
            return new Options(new ByteString[0], new int[]{0, -1});
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(byteStringArr));
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(-1);
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.set(Collections.binarySearch(arrayList, byteStringArr[i11]), Integer.valueOf(i11));
        }
        if (((ByteString) arrayList.get(0)).size() == 0) {
            throw new IllegalArgumentException("the empty byte string is not a supported option");
        }
        int i12 = 0;
        while (i12 < arrayList.size()) {
            ByteString byteString = (ByteString) arrayList.get(i12);
            int i13 = i12 + 1;
            int i14 = i13;
            while (i14 < arrayList.size()) {
                ByteString byteString2 = (ByteString) arrayList.get(i14);
                if (!byteString2.startsWith(byteString)) {
                    break;
                }
                if (byteString2.size() == byteString.size()) {
                    throw new IllegalArgumentException("duplicate option: " + byteString2);
                }
                if (((Integer) arrayList2.get(i14)).intValue() > ((Integer) arrayList2.get(i12)).intValue()) {
                    arrayList.remove(i14);
                    arrayList2.remove(i14);
                } else {
                    i14++;
                }
            }
            i12 = i13;
        }
        Buffer buffer = new Buffer();
        a(0L, buffer, 0, arrayList, 0, arrayList.size(), arrayList2);
        int iA = a(buffer);
        int[] iArr = new int[iA];
        for (int i15 = 0; i15 < iA; i15++) {
            iArr[i15] = buffer.readInt();
        }
        if (buffer.exhausted()) {
            return new Options((ByteString[]) byteStringArr.clone(), iArr);
        }
        throw new AssertionError();
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i10) {
        return this.f25963a[i10];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f25963a.length;
    }

    private static void a(long j10, Buffer buffer, int i10, List<ByteString> list, int i11, int i12, List<Integer> list2) {
        int iIntValue;
        int i13;
        int i14;
        int i15;
        if (i11 >= i12) {
            throw new AssertionError();
        }
        for (int i16 = i11; i16 < i12; i16++) {
            if (list.get(i16).size() < i10) {
                throw new AssertionError();
            }
        }
        ByteString byteString = list.get(i11);
        ByteString byteString2 = list.get(i12 - 1);
        if (i10 == byteString.size()) {
            int i17 = i11 + 1;
            i13 = i17;
            iIntValue = list2.get(i11).intValue();
            byteString = list.get(i17);
        } else {
            iIntValue = -1;
            i13 = i11;
        }
        if (byteString.getByte(i10) == byteString2.getByte(i10)) {
            int iMin = Math.min(byteString.size(), byteString2.size());
            int i18 = 0;
            for (int i19 = i10; i19 < iMin && byteString.getByte(i19) == byteString2.getByte(i19); i19++) {
                i18++;
            }
            long jA = 1 + j10 + ((long) a(buffer)) + 2 + ((long) i18);
            buffer.writeInt(-i18);
            buffer.writeInt(iIntValue);
            int i20 = i10;
            while (true) {
                i14 = i10 + i18;
                if (i20 >= i14) {
                    break;
                }
                buffer.writeInt(byteString.getByte(i20) & 255);
                i20++;
            }
            if (i13 + 1 == i12) {
                if (i14 != list.get(i13).size()) {
                    throw new AssertionError();
                }
                buffer.writeInt(list2.get(i13).intValue());
                return;
            } else {
                Buffer buffer2 = new Buffer();
                buffer.writeInt((int) ((((long) a(buffer2)) + jA) * (-1)));
                a(jA, buffer2, i14, list, i13, i12, list2);
                buffer.write(buffer2, buffer2.size());
                return;
            }
        }
        int i21 = 1;
        for (int i22 = i13 + 1; i22 < i12; i22++) {
            if (list.get(i22 - 1).getByte(i10) != list.get(i22).getByte(i10)) {
                i21++;
            }
        }
        long jA2 = j10 + ((long) a(buffer)) + 2 + ((long) (i21 * 2));
        buffer.writeInt(i21);
        buffer.writeInt(iIntValue);
        for (int i23 = i13; i23 < i12; i23++) {
            byte b10 = list.get(i23).getByte(i10);
            if (i23 == i13 || b10 != list.get(i23 - 1).getByte(i10)) {
                buffer.writeInt(b10 & 255);
            }
        }
        Buffer buffer3 = new Buffer();
        int i24 = i13;
        while (i24 < i12) {
            byte b11 = list.get(i24).getByte(i10);
            int i25 = i24 + 1;
            int i26 = i25;
            while (true) {
                if (i26 >= i12) {
                    i15 = i12;
                    break;
                } else {
                    if (b11 != list.get(i26).getByte(i10)) {
                        i15 = i26;
                        break;
                    }
                    i26++;
                }
            }
            if (i25 == i15 && i10 + 1 == list.get(i24).size()) {
                buffer.writeInt(list2.get(i24).intValue());
            } else {
                buffer.writeInt((int) ((((long) a(buffer3)) + jA2) * (-1)));
                a(jA2, buffer3, i10 + 1, list, i24, i15, list2);
            }
            buffer3 = buffer3;
            i24 = i15;
        }
        Buffer buffer4 = buffer3;
        buffer.write(buffer4, buffer4.size());
    }
}
