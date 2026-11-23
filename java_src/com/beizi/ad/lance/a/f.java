package com.beizi.ad.lance.a;

import android.graphics.Rect;
import android.view.View;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f9205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.beizi.ad.internal.c.e f9206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f9207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f9208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9209e = false;

    public f(View view, com.beizi.ad.internal.c.e eVar) {
        this.f9205a = view;
        this.f9206b = eVar;
        b();
    }

    private void b() {
        if (this.f9205a == null) {
            return;
        }
        this.f9208d = new Runnable() { // from class: com.beizi.ad.lance.a.f.1
            @Override // java.lang.Runnable
            public void run() {
                if ((!f.this.f9209e && !f.this.c()) || f.this.f9209e || f.this.f9206b == null) {
                    return;
                }
                f.this.f9209e = true;
                f.this.f9206b.a();
                if (f.this.f9207c != null) {
                    f.this.f9207c.remove(f.this.f9208d);
                    f.this.f9207c = null;
                }
            }
        };
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorG = c.b().g();
        this.f9207c = scheduledThreadPoolExecutorG;
        scheduledThreadPoolExecutorG.scheduleWithFixedDelay(this.f9208d, 0L, 100L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        try {
            View view = this.f9205a;
            if (view != null && view.getVisibility() == 0 && this.f9205a.getParent() != null) {
                Rect rect = new Rect();
                if (this.f9205a.getGlobalVisibleRect(rect)) {
                    return this.f9205a.getHeight() * this.f9205a.getWidth() > 0 && rect.height() * rect.width() > 0;
                }
                return false;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void a() {
        Runnable runnable;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f9207c;
            if (scheduledThreadPoolExecutor != null && (runnable = this.f9208d) != null) {
                scheduledThreadPoolExecutor.remove(runnable);
            }
            this.f9206b = null;
            this.f9205a = null;
            this.f9207c = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
