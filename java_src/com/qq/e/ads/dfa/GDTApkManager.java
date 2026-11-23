package com.qq.e.ads.dfa;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.qq.e.comm.managers.a;
import com.qq.e.comm.pi.DFA;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class GDTApkManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DFA f78157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f78158b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78159c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicInteger f78160d = new AtomicInteger(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f78161e;

    public GDTApkManager(Context context, IGDTApkListener iGDTApkListener) {
        if (a.b().d()) {
            c(context, a.b().a(), iGDTApkListener);
        }
    }

    private void c(Context context, String str, final IGDTApkListener iGDTApkListener) {
        if (TextUtils.isEmpty(str) || context == null) {
            GDTLogger.e("初始化错误：GDTApkManager 构造失败，Context和appID不能为空");
        } else {
            if (!com.qq.e.comm.a.a(context)) {
                GDTLogger.e("初始化错误：必需的 Activity/Service/Permission 没有在AndroidManifest.xml中声明");
                return;
            }
            this.f78158b = true;
            this.f78161e = context;
            a.f78305g.execute(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final POFactory pOFactory = a.b().c().getPOFactory();
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (pOFactory != null) {
                                        GDTApkManager.this.f78157a = a.b().c().getPOFactory().getGDTApkDelegate(iGDTApkListener);
                                        GDTApkManager.this.f78159c = true;
                                        while (GDTApkManager.this.f78160d.getAndDecrement() > 0) {
                                            GDTApkManager.this.loadGDTApk();
                                        }
                                    }
                                } catch (Throwable th) {
                                    try {
                                        GDTLogger.e("初始化错误：初始化时发生异常", th);
                                    } finally {
                                        GDTApkManager.this.f78159c = true;
                                    }
                                }
                            }
                        });
                    } catch (Throwable th) {
                        GDTLogger.e("初始化错误：初始化时发生异常", th);
                    }
                }
            });
        }
    }

    public final void loadGDTApk() {
        if (this.f78158b) {
            if (!this.f78159c) {
                this.f78160d.incrementAndGet();
                return;
            }
            DFA dfa = this.f78157a;
            if (dfa != null) {
                dfa.loadGDTApk();
            } else {
                GDTLogger.e("调用loadGDTApk失败，实例未被正常初始化");
            }
        }
    }

    public final void startInstall(GDTApk gDTApk) {
        DFA dfa = this.f78157a;
        if (dfa != null) {
            dfa.startInstall(this.f78161e, gDTApk);
        }
    }
}
