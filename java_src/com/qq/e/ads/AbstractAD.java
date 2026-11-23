package com.qq.e.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.managers.a;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractAD<T> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final AtomicBoolean f78106g = new AtomicBoolean(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected T f78107a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f78111e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f78109c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f78110d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f78112f = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f78108b = new Handler(Looper.getMainLooper());

    private void f(Context context, String str, String str2) {
        this.f78111e = true;
        if (a.b().d()) {
            b(context, a.b().a(), str, str2);
        } else {
            a(2003);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f78112f > 0) {
            try {
                GlobalSetting.getSettings().putOpt("gdtwict", Long.valueOf(SystemClock.elapsedRealtime() - this.f78112f));
            } catch (Throwable unused) {
            }
        }
    }

    protected abstract T a(Context context, POFactory pOFactory, String str, String str2, String str3);

    protected final void a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            f(context, str, "");
        } else {
            GDTLogger.e("初始化错误：参数错误context或posId为空");
            a(2001);
        }
    }

    protected abstract void a(T t10);

    protected abstract void b(int i10);

    protected final boolean b() {
        if (!this.f78109c && f78106g.compareAndSet(true, false)) {
            this.f78112f = SystemClock.elapsedRealtime();
        }
        return this.f78109c;
    }

    private final void b(final Context context, final String str, final String str2, final String str3) {
        if (com.qq.e.comm.a.a(context)) {
            this.f78110d = true;
            a.f78305g.execute(new Runnable() { // from class: com.qq.e.ads.AbstractAD.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final POFactory pOFactory = a.b().c().getPOFactory();
                        AbstractAD.this.f78108b.post(new Runnable() { // from class: com.qq.e.ads.AbstractAD.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    POFactory pOFactory2 = pOFactory;
                                    if (pOFactory2 != null) {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        AbstractAD abstractAD = AbstractAD.this;
                                        abstractAD.f78107a = (T) abstractAD.a(context, pOFactory2, str, str2, str3);
                                        AbstractAD.this.f78109c = true;
                                        AbstractAD abstractAD2 = AbstractAD.this;
                                        if (abstractAD2.f78107a == null) {
                                            abstractAD2.a(ErrorCode.POFACTORY_GET_INTERFACE_ERROR);
                                        } else {
                                            abstractAD2.g();
                                            AbstractAD abstractAD3 = AbstractAD.this;
                                            abstractAD3.a(abstractAD3.f78107a);
                                        }
                                    } else {
                                        AbstractAD.this.f78109c = true;
                                        AbstractAD.this.a(ErrorCode.PLUGIN_INIT_ERROR);
                                    }
                                } catch (Throwable th) {
                                    GDTLogger.e("初始化错误：初始化广告实例时发生异常", th);
                                    AbstractAD.this.f78109c = true;
                                    AbstractAD.this.a(2001);
                                }
                            }
                        });
                    } catch (Throwable th) {
                        GDTLogger.e("初始化错误：初始化插件时发生异常", th);
                        AbstractAD.this.f78109c = true;
                        AbstractAD.this.a(ErrorCode.PLUGIN_INIT_ERROR);
                    }
                }
            });
        } else {
            GDTLogger.e("Manifest文件中Activity/Service/Permission的声明有问题或者Permission权限未授予");
            a(4002);
        }
    }

    protected final void a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            f(context, str, str2);
        } else {
            GDTLogger.e("初始化错误：参数错误，context、posId、token 不可为空");
            a(2001);
        }
    }

    protected final void a(final int i10) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            b(i10);
        } else {
            this.f78108b.post(new Runnable() { // from class: com.qq.e.ads.AbstractAD.2
                @Override // java.lang.Runnable
                public void run() {
                    AbstractAD.this.b(i10);
                }
            });
        }
    }

    protected final boolean a() {
        return this.f78111e && this.f78110d;
    }

    protected final void a(String str) {
        GDTLogger.e(getClass().getSimpleName() + ":调用方法 " + str + "异常，广告实例还未初始化");
    }
}
