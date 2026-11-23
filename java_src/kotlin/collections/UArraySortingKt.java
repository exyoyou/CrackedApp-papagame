package kotlin.collections;

import com.beizi.fusion.widget.ScrollClickView;
import com.join.mgps.activity.MyAccountLoginActivity_;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", ScrollClickView.DIR_LEFT, ScrollClickView.DIR_RIGHT, "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", MyAccountLoginActivity_.FROM_INDEX_EXTRA, "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m505partitionnroSd4(long[] jArr, int i10, int i11) {
        long jM284getsVKNKU = ULongArray.m284getsVKNKU(jArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (Long.compare(ULongArray.m284getsVKNKU(jArr, i10) ^ Long.MIN_VALUE, jM284getsVKNKU ^ Long.MIN_VALUE) < 0) {
                i10++;
            }
            while (Long.compare(ULongArray.m284getsVKNKU(jArr, i11) ^ Long.MIN_VALUE, jM284getsVKNKU ^ Long.MIN_VALUE) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                long jM284getsVKNKU2 = ULongArray.m284getsVKNKU(jArr, i10);
                ULongArray.m289setk8EXiF4(jArr, i10, ULongArray.m284getsVKNKU(jArr, i11));
                ULongArray.m289setk8EXiF4(jArr, i11, jM284getsVKNKU2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m506partition4UcCI2c(byte[] bArr, int i10, int i11) {
        int i12;
        byte bM126getw2LRezQ = UByteArray.m126getw2LRezQ(bArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                i12 = bM126getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m126getw2LRezQ(bArr, i10) & 255, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (Intrinsics.compare(UByteArray.m126getw2LRezQ(bArr, i11) & 255, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                byte bM126getw2LRezQ2 = UByteArray.m126getw2LRezQ(bArr, i10);
                UByteArray.m131setVurrAj0(bArr, i10, UByteArray.m126getw2LRezQ(bArr, i11));
                UByteArray.m131setVurrAj0(bArr, i11, bM126getw2LRezQ2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m507partitionAa5vz7o(short[] sArr, int i10, int i11) {
        int i12;
        short sM389getMh2AYeg = UShortArray.m389getMh2AYeg(sArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (true) {
                int iM389getMh2AYeg = UShortArray.m389getMh2AYeg(sArr, i10) & UShort.MAX_VALUE;
                i12 = sM389getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(iM389getMh2AYeg, i12) >= 0) {
                    break;
                }
                i10++;
            }
            while (Intrinsics.compare(UShortArray.m389getMh2AYeg(sArr, i11) & UShort.MAX_VALUE, i12) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                short sM389getMh2AYeg2 = UShortArray.m389getMh2AYeg(sArr, i10);
                UShortArray.m394set01HTLdE(sArr, i10, UShortArray.m389getMh2AYeg(sArr, i11));
                UShortArray.m394set01HTLdE(sArr, i11, sM389getMh2AYeg2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m508partitionoBK06Vg(int[] iArr, int i10, int i11) {
        int iM205getpVg5ArA = UIntArray.m205getpVg5ArA(iArr, (i10 + i11) / 2);
        while (i10 <= i11) {
            while (Integer.compare(UIntArray.m205getpVg5ArA(iArr, i10) ^ Integer.MIN_VALUE, iM205getpVg5ArA ^ Integer.MIN_VALUE) < 0) {
                i10++;
            }
            while (Integer.compare(UIntArray.m205getpVg5ArA(iArr, i11) ^ Integer.MIN_VALUE, iM205getpVg5ArA ^ Integer.MIN_VALUE) > 0) {
                i11--;
            }
            if (i10 <= i11) {
                int iM205getpVg5ArA2 = UIntArray.m205getpVg5ArA(iArr, i10);
                UIntArray.m210setVXSXFK8(iArr, i10, UIntArray.m205getpVg5ArA(iArr, i11));
                UIntArray.m210setVXSXFK8(iArr, i11, iM205getpVg5ArA2);
                i10++;
                i11--;
            }
        }
        return i10;
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m509quickSortnroSd4(long[] jArr, int i10, int i11) {
        int iM505partitionnroSd4 = m505partitionnroSd4(jArr, i10, i11);
        int i12 = iM505partitionnroSd4 - 1;
        if (i10 < i12) {
            m509quickSortnroSd4(jArr, i10, i12);
        }
        if (iM505partitionnroSd4 < i11) {
            m509quickSortnroSd4(jArr, iM505partitionnroSd4, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m510quickSort4UcCI2c(byte[] bArr, int i10, int i11) {
        int iM506partition4UcCI2c = m506partition4UcCI2c(bArr, i10, i11);
        int i12 = iM506partition4UcCI2c - 1;
        if (i10 < i12) {
            m510quickSort4UcCI2c(bArr, i10, i12);
        }
        if (iM506partition4UcCI2c < i11) {
            m510quickSort4UcCI2c(bArr, iM506partition4UcCI2c, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m511quickSortAa5vz7o(short[] sArr, int i10, int i11) {
        int iM507partitionAa5vz7o = m507partitionAa5vz7o(sArr, i10, i11);
        int i12 = iM507partitionAa5vz7o - 1;
        if (i10 < i12) {
            m511quickSortAa5vz7o(sArr, i10, i12);
        }
        if (iM507partitionAa5vz7o < i11) {
            m511quickSortAa5vz7o(sArr, iM507partitionAa5vz7o, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m512quickSortoBK06Vg(int[] iArr, int i10, int i11) {
        int iM508partitionoBK06Vg = m508partitionoBK06Vg(iArr, i10, i11);
        int i12 = iM508partitionoBK06Vg - 1;
        if (i10 < i12) {
            m512quickSortoBK06Vg(iArr, i10, i12);
        }
        if (iM508partitionoBK06Vg < i11) {
            m512quickSortoBK06Vg(iArr, iM508partitionoBK06Vg, i11);
        }
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m513sortArraynroSd4(@NotNull long[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        m509quickSortnroSd4(array, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m514sortArray4UcCI2c(@NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        m510quickSort4UcCI2c(array, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m515sortArrayAa5vz7o(@NotNull short[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        m511quickSortAa5vz7o(array, i10, i11 - 1);
    }

    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m516sortArrayoBK06Vg(@NotNull int[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        m512quickSortoBK06Vg(array, i10, i11 - 1);
    }
}
