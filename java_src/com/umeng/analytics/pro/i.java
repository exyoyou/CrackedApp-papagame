package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static SQLiteOpenHelper f84746b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f84747d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicInteger f84748a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f84749c;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final i f84750a = new i();

        private a() {
        }
    }

    public static i a(Context context) {
        if (f84747d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            f84747d = applicationContext;
            f84746b = h.a(applicationContext);
        }
        return a.f84750a;
    }

    public synchronized void b() {
        try {
            if (this.f84748a.decrementAndGet() == 0) {
                this.f84749c.close();
            }
        } catch (Throwable unused) {
        }
    }

    private i() {
        this.f84748a = new AtomicInteger();
    }

    public synchronized SQLiteDatabase a() {
        if (this.f84748a.incrementAndGet() == 1) {
            this.f84749c = f84746b.getWritableDatabase();
        }
        return this.f84749c;
    }
}
