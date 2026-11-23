package kotlin.internal;

import com.kuaishou.weapon.p0.t;
import com.sigmob.sdk.base.mta.PointCategory;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.a;
import kotlin.d;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", t.f74887l, "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", PointCategory.END, "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m1267differenceModuloWZ9TVnA(int i10, int i11, int i12) {
        int iA = a.a(i10, i12);
        int iA2 = a.a(i11, i12);
        int iCompare = Integer.compare(iA ^ Integer.MIN_VALUE, iA2 ^ Integer.MIN_VALUE);
        int iM145constructorimpl = UInt.m145constructorimpl(iA - iA2);
        return iCompare >= 0 ? iM145constructorimpl : UInt.m145constructorimpl(iM145constructorimpl + i12);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m1268differenceModulosambcqE(long j10, long j11, long j12) {
        long jA = d.a(j10, j12);
        long jA2 = d.a(j11, j12);
        int iCompare = Long.compare(jA ^ Long.MIN_VALUE, jA2 ^ Long.MIN_VALUE);
        long jM224constructorimpl = ULong.m224constructorimpl(jA - jA2);
        return iCompare >= 0 ? jM224constructorimpl : ULong.m224constructorimpl(jM224constructorimpl + j12);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1269getProgressionLastElement7ftBX0g(long j10, long j11, long j12) {
        if (j12 > 0) {
            return Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) >= 0 ? j11 : ULong.m224constructorimpl(j11 - m1268differenceModulosambcqE(j11, j10, ULong.m224constructorimpl(j12)));
        }
        if (j12 < 0) {
            return Long.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE) <= 0 ? j11 : ULong.m224constructorimpl(j11 + m1268differenceModulosambcqE(j10, j11, ULong.m224constructorimpl(-j12)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1270getProgressionLastElementNkh28Cs(int i10, int i11, int i12) {
        if (i12 > 0) {
            return Integer.compare(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE) >= 0 ? i11 : UInt.m145constructorimpl(i11 - m1267differenceModuloWZ9TVnA(i11, i10, UInt.m145constructorimpl(i12)));
        }
        if (i12 < 0) {
            return Integer.compare(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE) <= 0 ? i11 : UInt.m145constructorimpl(i11 + m1267differenceModuloWZ9TVnA(i10, i11, UInt.m145constructorimpl(-i12)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}
