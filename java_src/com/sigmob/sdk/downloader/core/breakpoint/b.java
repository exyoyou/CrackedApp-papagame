package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.Cursor;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f80360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f80361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f80362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f80363d;

    public b(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(f.f80405h);
        this.f80360a = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
        int columnIndex2 = cursor.getColumnIndex(f.f80407j);
        this.f80361b = columnIndex2 >= 0 ? cursor.getInt(columnIndex2) : 0L;
        int columnIndex3 = cursor.getColumnIndex(f.f80408k);
        this.f80362c = columnIndex3 >= 0 ? cursor.getInt(columnIndex3) : 0L;
        int columnIndex4 = cursor.getColumnIndex(f.f80409l);
        this.f80363d = columnIndex4 >= 0 ? cursor.getInt(columnIndex4) : 0L;
    }

    public int a() {
        return this.f80360a;
    }

    public long b() {
        return this.f80361b;
    }

    public long c() {
        return this.f80362c;
    }

    public long d() {
        return this.f80363d;
    }

    public a e() {
        return new a(this.f80361b, this.f80362c, this.f80363d);
    }
}
