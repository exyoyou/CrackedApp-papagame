package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.Cursor;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f80373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f80374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f80375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f80376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f80377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f80378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f80379g;

    public d(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        boolean z10 = false;
        this.f80373a = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
        int columnIndex2 = cursor.getColumnIndex("url");
        this.f80374b = columnIndex2 >= 0 ? cursor.getString(columnIndex2) : "";
        int columnIndex3 = cursor.getColumnIndex(f.f80400c);
        this.f80375c = columnIndex3 >= 0 ? cursor.getString(columnIndex3) : "";
        int columnIndex4 = cursor.getColumnIndex(f.f80401d);
        this.f80376d = columnIndex4 >= 0 ? cursor.getString(columnIndex4) : "";
        int columnIndex5 = cursor.getColumnIndex(f.f80402e);
        this.f80377e = columnIndex5 >= 0 ? cursor.getString(columnIndex5) : "";
        int columnIndex6 = cursor.getColumnIndex(f.f80403f);
        this.f80378f = columnIndex6 >= 0 && cursor.getInt(columnIndex6) == 1;
        int columnIndex7 = cursor.getColumnIndex("chunked");
        if (columnIndex7 >= 0 && cursor.getInt(columnIndex7) == 1) {
            z10 = true;
        }
        this.f80379g = z10;
    }

    public int a() {
        return this.f80373a;
    }

    public String b() {
        return this.f80374b;
    }

    public String c() {
        return this.f80375c;
    }

    public String d() {
        return this.f80376d;
    }

    public String e() {
        return this.f80377e;
    }

    public boolean f() {
        return this.f80378f;
    }

    public boolean g() {
        return this.f80379g;
    }

    public c h() {
        c cVar = new c(this.f80373a, this.f80374b, new File(this.f80376d), this.f80377e, this.f80378f);
        cVar.a(this.f80375c);
        cVar.a(this.f80379g);
        return cVar;
    }
}
