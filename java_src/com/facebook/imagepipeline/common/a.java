package com.facebook.imagepipeline.common;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
@Immutable
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f27768c = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private static Pattern f27769d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27771b;

    public a(int from, int to) {
        this.f27770a = from;
        this.f27771b = to;
    }

    public static a b(int from) {
        i.d(Boolean.valueOf(from >= 0));
        return new a(from, Integer.MAX_VALUE);
    }

    @Nullable
    public static a c(@Nullable String header) throws IllegalArgumentException {
        if (header == null) {
            return null;
        }
        if (f27769d == null) {
            f27769d = Pattern.compile("[-/ ]");
        }
        try {
            String[] strArrSplit = f27769d.split(header);
            i.d(Boolean.valueOf(strArrSplit.length == 4));
            i.d(Boolean.valueOf(strArrSplit[0].equals("bytes")));
            int i10 = Integer.parseInt(strArrSplit[1]);
            int i11 = Integer.parseInt(strArrSplit[2]);
            int i12 = Integer.parseInt(strArrSplit[3]);
            i.d(Boolean.valueOf(i11 > i10));
            i.d(Boolean.valueOf(i12 > i11));
            return i11 < i12 - 1 ? new a(i10, i11) : new a(i10, Integer.MAX_VALUE);
        } catch (IllegalArgumentException e10) {
            throw new IllegalArgumentException(String.format(null, "Invalid Content-Range header value: \"%s\"", header), e10);
        }
    }

    public static a e(int to) {
        i.d(Boolean.valueOf(to > 0));
        return new a(0, to);
    }

    private static String f(int n10) {
        return n10 == Integer.MAX_VALUE ? "" : Integer.toString(n10);
    }

    public boolean a(@Nullable a compare) {
        return compare != null && this.f27770a <= compare.f27770a && this.f27771b >= compare.f27771b;
    }

    public String d() {
        return String.format(null, "bytes=%s-%s", f(this.f27770a), f(this.f27771b));
    }

    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof a)) {
            return false;
        }
        a aVar = (a) other;
        return this.f27770a == aVar.f27770a && this.f27771b == aVar.f27771b;
    }

    public int hashCode() {
        return com.facebook.common.util.b.b(this.f27770a, this.f27771b);
    }

    public String toString() {
        return String.format(null, "%s-%s", f(this.f27770a), f(this.f27771b));
    }
}
