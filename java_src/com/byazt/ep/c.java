package com.byazt.ep;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1555, 20})
public class c implements com.byazt.yj.tt, Cloneable {
    public static volatile com.byazt.yj.tt sp;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public File f13539a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f13540c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f13541n;
    public int tt;
    public boolean uj;
    public int ve;

    public c(int i10, long j10, File file) {
        this(i10, 524288, j10, i10 != 0, j10 != 0, file);
    }

    public static void c(Context context, com.byazt.yj.tt ttVar) {
        if (ttVar != null) {
            sp = ttVar;
        } else {
            sp = c(new File(com.byazt.nys.tt.tt(context), "image"));
        }
    }

    private static long tt() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    @Override // com.byazt.yj.tt
    public File getCacheDir() {
        return this.f13539a;
    }

    @Override // com.byazt.yj.tt
    public long getFileCacheSize() {
        return this.f13540c;
    }

    @Override // com.byazt.yj.tt
    public int getMemoryCacheSize() {
        return this.tt;
    }

    @Override // com.byazt.yj.tt
    public int getRawMemoryCacheSize() {
        return this.ve;
    }

    @Override // com.byazt.yj.tt
    public boolean isDiskCache() {
        return this.f13541n;
    }

    @Override // com.byazt.yj.tt
    public boolean isMemoryCache() {
        return this.uj;
    }

    @Override // com.byazt.yj.tt
    public boolean isQueryAll() {
        return true;
    }

    @Override // com.byazt.yj.tt
    public boolean isRawMemoryCache() {
        return this.ve > 0;
    }

    public c(int i10, int i11, long j10, boolean z10, boolean z11, File file) {
        this.f13540c = j10;
        this.tt = i10;
        this.ve = i11;
        this.uj = z10;
        this.f13541n = z11;
        this.f13539a = file;
    }

    public static com.byazt.yj.tt c(File file) {
        int iMin;
        long jMin;
        file.mkdirs();
        if (sp == null) {
            iMin = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 10485760);
            jMin = Math.min(tt() / 16, 31457280L);
        } else {
            iMin = Math.min(sp.getMemoryCacheSize() / 2, 10485760);
            jMin = Math.min(sp.getFileCacheSize() / 2, 31457280L);
        }
        return new c(Math.max(iMin, 5242880), Math.max(jMin, 10485760L), file);
    }

    public static com.byazt.yj.tt c() {
        return sp;
    }
}
