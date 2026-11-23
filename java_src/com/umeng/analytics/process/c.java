package com.umeng.analytics.process;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f84965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentHashMap<String, a> f84966b = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f84967c;

    private c() {
    }

    static c a(Context context) {
        if (f84965a == null) {
            synchronized (c.class) {
                if (f84965a == null) {
                    f84965a = new c();
                }
            }
        }
        c cVar = f84965a;
        cVar.f84967c = context;
        return cVar;
    }

    private a c(String str) {
        if (this.f84966b.get(str) != null) {
            return this.f84966b.get(str);
        }
        a aVarA = a.a(this.f84967c, str);
        this.f84966b.put(str, aVarA);
        return aVarA;
    }

    synchronized void b(String str) {
        c(str).b();
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AtomicInteger f84968a = new AtomicInteger();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SQLiteOpenHelper f84969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SQLiteDatabase f84970c;

        private a() {
        }

        static a a(Context context, String str) {
            Context appContext = UMGlobalContext.getAppContext(context);
            a aVar = new a();
            aVar.f84969b = b.a(appContext, str);
            return aVar;
        }

        synchronized void b() {
            try {
                if (this.f84968a.decrementAndGet() == 0) {
                    this.f84970c.close();
                }
            } catch (Throwable unused) {
            }
        }

        synchronized SQLiteDatabase a() {
            if (this.f84968a.incrementAndGet() == 1) {
                this.f84970c = this.f84969b.getWritableDatabase();
            }
            return this.f84970c;
        }
    }

    synchronized SQLiteDatabase a(String str) {
        return c(str).a();
    }
}
