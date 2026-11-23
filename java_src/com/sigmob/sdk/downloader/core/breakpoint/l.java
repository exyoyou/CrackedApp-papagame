package com.sigmob.sdk.downloader.core.breakpoint;

import android.database.sqlite.SQLiteDatabase;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l implements j, m.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80422a = "RemitStoreOnSQLite";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f80423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f80424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f80425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j f80426e;

    l(i sqlite) {
        this.f80423b = new n(this);
        this.f80424c = sqlite;
        this.f80426e = sqlite.f80419b;
        this.f80425d = sqlite.f80418a;
    }

    public static void j(int delayMillis) {
        g gVarC = com.sigmob.sdk.downloader.g.j().c();
        if (gVarC instanceof l) {
            ((l) gVarC).f80423b.f80435a = Math.max(0, delayMillis);
        } else {
            throw new IllegalStateException("The current store is " + gVarC + " not RemitStoreOnSQLite!");
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(int id2) {
        return this.f80424c.a(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public int b(com.sigmob.sdk.downloader.f task) {
        return this.f80424c.b(task);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean c(int id2) {
        return this.f80424c.c(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void d(int id2) {
        this.f80424c.d(id2);
        this.f80423b.b(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public c e(int id2) {
        return null;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean f(int id2) {
        return this.f80424c.f(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public boolean g(int id2) {
        return this.f80424c.g(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void h(int id2) throws IOException {
        this.f80425d.c(id2);
        c cVarA = this.f80426e.a(id2);
        if (cVarA == null || cVarA.m() == null || cVarA.i() <= 0) {
            return;
        }
        this.f80425d.a(cVarA);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void i(int id2) {
        this.f80425d.c(id2);
    }

    l(n helper, i sqlite, j sqliteCache, e sqLiteHelper) {
        this.f80423b = helper;
        this.f80424c = sqlite;
        this.f80426e = sqliteCache;
        this.f80425d = sqLiteHelper;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task) throws IOException {
        return this.f80423b.a(task.c()) ? this.f80426e.a(task) : this.f80424c.a(task);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public void b(int id2) {
        this.f80426e.b(id2);
        this.f80423b.d(id2);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public c a(com.sigmob.sdk.downloader.f task, c ignored) {
        return this.f80424c.a(task, ignored);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public String a(String url) {
        return this.f80424c.a(url);
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(int id2, com.sigmob.sdk.downloader.core.cause.a cause, Exception exception) {
        this.f80426e.a(id2, cause, exception);
        if (cause == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
            this.f80423b.d(id2);
        } else {
            this.f80423b.c(id2);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.j
    public void a(c info, int blockIndex, long increaseLength) throws IOException {
        if (this.f80423b.a(info.a())) {
            this.f80426e.a(info, blockIndex, increaseLength);
        } else {
            this.f80424c.a(info, blockIndex, increaseLength);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.m.a
    public void a(List<Integer> idList) throws IOException {
        SQLiteDatabase writableDatabase = this.f80425d.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Iterator<Integer> it2 = idList.iterator();
            while (it2.hasNext()) {
                h(it2.next().intValue());
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a() {
        return false;
    }

    @Override // com.sigmob.sdk.downloader.core.breakpoint.g
    public boolean a(c info) throws IOException {
        return this.f80423b.a(info.a()) ? this.f80426e.a(info) : this.f80424c.a(info);
    }
}
