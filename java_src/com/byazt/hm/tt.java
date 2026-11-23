package com.byazt.hm;

import com.byazt.gqp.sl;
import java.io.File;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 679, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14963a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14964c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f14965da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f14967n;
    public sl sp;
    public final String tt;
    public final String uj;
    public final Map<String, String> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Throwable f14968x;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public File f14966i = null;
    public byte[] sl = null;

    public tt(boolean z10, int i10, String str, Map<String, String> map, String str2, long j10, long j11) {
        this.f14965da = z10;
        this.f14964c = i10;
        this.tt = str;
        this.ve = map;
        this.uj = str2;
        this.f14967n = j10;
        this.f14963a = j11;
    }

    public long a() {
        return this.f14967n;
    }

    public Throwable c() {
        return this.f14968x;
    }

    public long da() {
        return this.f14967n - this.f14963a;
    }

    public boolean i() {
        return this.f14965da;
    }

    public String n() {
        return this.uj;
    }

    public byte[] sl() {
        return this.sl;
    }

    public long sp() {
        return this.f14963a;
    }

    public sl t() {
        return this.sp;
    }

    public int tt() {
        return this.f14964c;
    }

    public Map<String, String> uj() {
        return this.ve;
    }

    public String ve() {
        return this.tt;
    }

    public File x() {
        return this.f14966i;
    }

    public void c(File file) {
        this.f14966i = file;
    }

    public void c(byte[] bArr) {
        this.sl = bArr;
    }

    public void c(sl slVar) {
        this.sp = slVar;
    }

    public tt(boolean z10, int i10, String str, Map<String, String> map, String str2, long j10, long j11, Throwable th) {
        this.f14965da = z10;
        this.f14964c = i10;
        this.tt = str;
        this.ve = map;
        this.uj = str2;
        this.f14967n = j10;
        this.f14963a = j11;
        this.f14968x = th;
    }
}
