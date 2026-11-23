package com.byazt.f;

import external.org.apache.commons.lang3.d;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 953, 46})
public class n implements Serializable, Comparable<n> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14057c;
    public DateFormat tt;

    public n(long j10) {
        this.f14057c = j10;
    }

    public static n uj() {
        return tt(System.currentTimeMillis());
    }

    public long c() {
        return this.f14057c;
    }

    public boolean equals(Object obj) {
        return (obj instanceof n) && this.f14057c == ((n) obj).c();
    }

    public int hashCode() {
        long j10 = this.f14057c;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public String n() {
        if (this.tt == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, MMM dd yyyy HH:mm:ss.SSS", Locale.US);
            this.tt = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
        }
        return this.tt.format(ve());
    }

    public String toString() {
        return uj(this.f14057c);
    }

    public long tt() {
        return c(this.f14057c);
    }

    public Date ve() {
        return new Date(c(this.f14057c));
    }

    public static long c(long j10) {
        long j11 = (j10 >>> 32) & 4294967295L;
        return (j11 * 1000) + ((2147483648L & j11) == 0 ? 2085978496000L : -2208988800000L) + Math.round(((j10 & 4294967295L) * 1000.0d) / 4.294967296E9d);
    }

    public static n tt(long j10) {
        return new n(ve(j10));
    }

    public static String uj(long j10) {
        StringBuilder sb2 = new StringBuilder();
        c(sb2, (j10 >>> 32) & 4294967295L);
        sb2.append(d.f90941a);
        c(sb2, j10 & 4294967295L);
        return sb2.toString();
    }

    private static void c(StringBuilder sb2, long j10) {
        String hexString = Long.toHexString(j10);
        for (int length = hexString.length(); length < 8; length++) {
            sb2.append('0');
        }
        sb2.append(hexString);
    }

    public static long ve(long j10) {
        boolean z10 = j10 < 2085978496000L;
        long j11 = j10 - (z10 ? -2208988800000L : 2085978496000L);
        long j12 = j11 / 1000;
        long j13 = ((j11 % 1000) * 4294967296L) / 1000;
        if (z10) {
            j12 |= 2147483648L;
        }
        return j13 | (j12 << 32);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(n nVar) {
        long j10 = this.f14057c;
        long j11 = nVar.f14057c;
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }
}
