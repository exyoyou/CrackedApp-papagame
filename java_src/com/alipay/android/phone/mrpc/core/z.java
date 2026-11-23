package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public final class z implements m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static z f6972h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ThreadFactory f6973i = new b0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f6974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ThreadPoolExecutor f6975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p f6976c = p.b("android");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f6979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6980g;

    private z(Context context) {
        this.f6974a = context;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), f6973i, new ThreadPoolExecutor.CallerRunsPolicy());
        this.f6975b = threadPoolExecutor;
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception unused) {
        }
        CookieSyncManager.createInstance(this.f6974a);
        CookieManager.getInstance().setAcceptCookie(true);
    }

    public static final z c(Context context) {
        z zVar = f6972h;
        return zVar != null ? zVar : e(context);
    }

    private static final synchronized z e(Context context) {
        z zVar = f6972h;
        if (zVar != null) {
            return zVar;
        }
        z zVar2 = new z(context);
        f6972h = zVar2;
        return zVar2;
    }

    @Override // com.alipay.android.phone.mrpc.core.m
    public final Future<e> a(d dVar) {
        if (g0.a(this.f6974a)) {
            String str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times";
            Object[] objArr = new Object[9];
            objArr[0] = Integer.valueOf(this.f6975b.getActiveCount());
            objArr[1] = Long.valueOf(this.f6975b.getCompletedTaskCount());
            objArr[2] = Long.valueOf(this.f6975b.getTaskCount());
            long j10 = this.f6979f;
            objArr[3] = Long.valueOf(j10 == 0 ? 0L : ((this.f6977d * 1000) / j10) >> 10);
            int i10 = this.f6980g;
            objArr[4] = Long.valueOf(i10 != 0 ? this.f6978e / ((long) i10) : 0L);
            objArr[5] = Long.valueOf(this.f6977d);
            objArr[6] = Long.valueOf(this.f6978e);
            objArr[7] = Long.valueOf(this.f6979f);
            objArr[8] = Integer.valueOf(this.f6980g);
            String.format(str, objArr);
        }
        e0 e0Var = new e0(this, (c0) dVar);
        a0 a0Var = new a0(this, e0Var, e0Var);
        this.f6975b.execute(a0Var);
        return a0Var;
    }

    public final p b() {
        return this.f6976c;
    }

    public final void d(long j10) {
        this.f6977d += j10;
    }

    public final void f(long j10) {
        this.f6978e += j10;
        this.f6980g++;
    }

    public final void g(long j10) {
        this.f6979f += j10;
    }
}
