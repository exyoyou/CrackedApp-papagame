package com.beizi.ad.lance.a;

import android.graphics.Rect;
import android.view.View;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.Format;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f9211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.beizi.ad.internal.c.c f9212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.beizi.ad.internal.c.e f9213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f9214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f9215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DecimalFormatSymbols f9216f = new DecimalFormatSymbols(Locale.ENGLISH);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Format f9217g = new DecimalFormat("0.00", this.f9216f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9218h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9219i = false;

    /* JADX INFO: renamed from: com.beizi.ad.lance.a.g$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f9215e = new Runnable() { // from class: com.beizi.ad.lance.a.g.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (g.this.f9218h || g.this.a(10)) {
                        if (!g.this.f9218h && g.this.f9213c != null) {
                            g.this.f9218h = true;
                            g.this.f9213c.a();
                        }
                        if (!g.this.f9219i && g.this.a(50)) {
                            g.this.f9219i = true;
                            if (g.this.f9214d != null) {
                                g.this.f9214d.remove(g.this.f9215e);
                                g.this.f9214d = null;
                            }
                            if (g.this.f9211a != null) {
                                g.this.f9211a.post(new Runnable() { // from class: com.beizi.ad.lance.a.g.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (g.this.f9212b != null) {
                                            g.this.f9212b.a();
                                        }
                                    }
                                });
                            }
                        }
                    }
                }
            };
            g.this.f9214d = c.b().g();
            if (g.this.f9214d == null) {
                return;
            }
            g.this.f9214d.scheduleWithFixedDelay(g.this.f9215e, 0L, 250L, TimeUnit.MILLISECONDS);
        }
    }

    public g(View view, com.beizi.ad.internal.c.c cVar, com.beizi.ad.internal.c.e eVar) {
        this.f9211a = view;
        this.f9212b = cVar;
        this.f9213c = eVar;
        b();
    }

    private void b() {
        View view = this.f9211a;
        if (view == null) {
            return;
        }
        view.post(new AnonymousClass1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i10) {
        try {
            View view = this.f9211a;
            if (view != null && view.getVisibility() == 0 && this.f9211a.getParent() != null) {
                Rect rect = new Rect();
                if (!this.f9211a.getGlobalVisibleRect(rect)) {
                    return false;
                }
                int iHeight = rect.height() * rect.width();
                int height = this.f9211a.getHeight() * this.f9211a.getWidth();
                return height > 0 && iHeight * 100 >= i10 * height;
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
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f9214d;
            if (scheduledThreadPoolExecutor != null && (runnable = this.f9215e) != null) {
                scheduledThreadPoolExecutor.remove(runnable);
            }
            this.f9213c = null;
            this.f9212b = null;
            this.f9211a = null;
            this.f9214d = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
