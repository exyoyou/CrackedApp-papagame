package com.byazt.mt;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aq.a;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.or.n;
import com.byazt.sr.ve;
import com.byazt.tm.DynamicRootView;
import com.byazt.xl.sl;
import com.byazt.xl.sp;
import com.byazt.xl.u;
import com.byazt.xl.uj;
import com.byazt.xl.x;
import com.byazt.xl.yp;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 684, 20})
public class c implements sl, uj<DynamicRootView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u f16994a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DynamicRootView f16995c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public x f16997n;
    public ScheduledFuture<?> sp;
    public com.byazt.du.x tt;
    public sp uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicBoolean f16998x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f16996i = false;

    /* JADX INFO: renamed from: com.byazt.mt.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 684, 44})
    private class RunnableC0374c implements Runnable {
        public int tt;

        public RunnableC0374c(int i10) {
            this.tt = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.tt == 2) {
                c.this.f16995c.c(c.this.tt instanceof com.byazt.du.sp ? 127 : 117, (String) null);
            }
        }
    }

    public c(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.byazt.du.x xVar, u uVar, com.byazt.wl.c cVar) {
        this.ve = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z10, uVar, cVar);
        this.f16995c = dynamicRootView;
        this.tt = xVar;
        this.f16994a = uVar;
        dynamicRootView.setRenderListener(this);
        this.f16994a = uVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void da() {
        try {
            ScheduledFuture<?> scheduledFuture = this.sp;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.sp.cancel(false);
            this.sp = null;
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private boolean i() {
        DynamicRootView dynamicRootView = this.f16995c;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        this.f16994a.sp().tt(ve());
        JSONObject jSONObjectN = this.f16994a.n();
        if (com.byazt.six.tt.c(jSONObjectN)) {
            this.tt.c(new com.byazt.wl.tt() { // from class: com.byazt.mt.c.3
                @Override // com.byazt.wl.tt
                public void c(final com.byazt.aq.x xVar) {
                    c.this.da();
                    c.this.f16994a.sp().ve(c.this.ve());
                    c.this.c(xVar);
                    c.this.tt(xVar);
                    if (c.this.f16996i) {
                        c.this.ve(xVar);
                    } else {
                        da.tt().post(new Runnable() { // from class: com.byazt.mt.c.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                c.this.ve(xVar);
                            }
                        });
                    }
                    if (c.this.f16995c == null || xVar == null) {
                        return;
                    }
                    c.this.f16995c.setBgColor(xVar.c());
                    c.this.f16995c.setBgMaterialCenterCalcColor(xVar.tt());
                }
            });
            this.tt.c(this.f16994a);
            return;
        }
        int i10 = this.tt instanceof com.byazt.du.sp ? 123 : 113;
        DynamicRootView dynamicRootView = this.f16995c;
        StringBuilder sb2 = new StringBuilder("data null is ");
        sb2.append(jSONObjectN == null);
        dynamicRootView.c(i10, sb2.toString());
    }

    public DynamicRootView a() {
        return this.f16995c;
    }

    public void n() {
        this.f16995c.tt();
    }

    public void uj() {
        this.f16995c.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.aq.x xVar) {
        float fSp;
        float fA;
        List<com.byazt.aq.x> listSl;
        if (xVar == null) {
            return;
        }
        List<com.byazt.aq.x> listSl2 = xVar.sl();
        if (listSl2 == null || listSl2.size() <= 0) {
            fSp = 0.0f;
        } else {
            fSp = 0.0f;
            for (com.byazt.aq.x xVar2 : listSl2) {
                if (xVar2.sp() > xVar.sp() - xVar2.i() || (listSl = xVar2.sl()) == null || listSl.size() <= 0) {
                    fA = 0.0f;
                } else {
                    fA = 0.0f;
                    for (com.byazt.aq.x xVar3 : listSl) {
                        if (xVar3.da().getType().equals("logo-union")) {
                            fA = xVar3.da().a();
                            fSp = (((-fA) + xVar.sp()) - xVar2.sp()) + xVar2.da().n().mq();
                        }
                    }
                }
                tt(xVar2);
                if (fA <= -15.0f) {
                    xVar2.a(xVar2.i() - fA);
                    xVar2.uj(xVar2.sp() + fA);
                    for (com.byazt.aq.x xVar4 : xVar2.sl()) {
                        xVar4.uj(xVar4.sp() - fA);
                    }
                }
            }
        }
        com.byazt.aq.x xVarT = xVar.t();
        if (xVarT == null) {
            return;
        }
        float fA2 = xVar.a() - xVarT.a();
        float fSp2 = xVar.sp() - xVarT.sp();
        xVar.ve(fA2);
        xVar.uj(fSp2);
        if (fSp > 0.0f) {
            xVar.uj(xVar.sp() - fSp);
            xVar.a(xVar.i() + fSp);
            for (com.byazt.aq.x xVar5 : xVar.sl()) {
                xVar5.uj(xVar5.sp() + fSp);
            }
        }
    }

    @Override // com.byazt.xl.uj
    public void c(sp spVar) {
        this.uj = spVar;
        int iX = this.f16994a.x();
        if (iX < 0) {
            int i10 = this.tt instanceof com.byazt.du.sp ? 127 : 117;
            this.f16995c.c(i10, "time is " + iX);
            return;
        }
        this.sp = n.c(new RunnableC0374c(2), iX, TimeUnit.MILLISECONDS);
        if (this.f16996i) {
            da.ve().postDelayed(new Runnable() { // from class: com.byazt.mt.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.this.x();
                }
            }, this.f16994a.sl());
        } else if (Looper.getMainLooper() == Looper.myLooper() && this.f16994a.sl() <= 0) {
            x();
        } else {
            da.tt().postDelayed(new Runnable() { // from class: com.byazt.mt.c.2
                @Override // java.lang.Runnable
                public void run() {
                    c.this.x();
                }
            }, this.f16994a.sl());
        }
    }

    @Override // com.byazt.xl.uj
    public int ve() {
        return this.tt instanceof com.byazt.du.sp ? 3 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(com.byazt.aq.x xVar) {
        if (xVar == null) {
            this.f16995c.c(this.tt instanceof com.byazt.du.sp ? 123 : 113, "layoutUnit is null");
            return;
        }
        this.f16994a.sp().uj(ve());
        try {
            this.f16995c.c(xVar, ve());
        } catch (Exception e10) {
            int i10 = this.tt instanceof com.byazt.du.sp ? 128 : 118;
            this.f16995c.c(i10, "exception is " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.aq.x xVar) {
        List<com.byazt.aq.x> listSl;
        if (xVar == null || (listSl = xVar.sl()) == null || listSl.size() <= 0) {
            return;
        }
        Collections.sort(listSl, new Comparator<com.byazt.aq.x>() { // from class: com.byazt.mt.c.4
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int compare(com.byazt.aq.x xVar2, com.byazt.aq.x xVar3) {
                a aVarN = xVar2.da().n();
                a aVarN2 = xVar3.da().n();
                if (aVarN == null || aVarN2 == null) {
                    return 0;
                }
                return aVarN.hj() >= aVarN2.hj() ? 1 : -1;
            }
        });
        for (com.byazt.aq.x xVar2 : listSl) {
            if (xVar2 != null) {
                c(xVar2);
            }
        }
    }

    @Override // com.byazt.xl.uj
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public DynamicRootView sp() {
        return a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(View view) {
        if (view == 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i10 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i10 >= viewGroup.getChildCount()) {
                    break;
                }
                c(viewGroup.getChildAt(i10));
                i10++;
            }
        }
        if (view instanceof com.byazt.tm.n) {
            ((com.byazt.tm.n) view).tt();
        }
    }

    public void tt() {
        c(sp());
    }

    @Override // com.byazt.xl.sl
    public void tt(View view, int i10, ve veVar, int i11) {
        x xVar = this.f16997n;
        if (xVar != null) {
            xVar.tt(view, i10, veVar, i11);
        }
    }

    public void c(boolean z10) {
        this.f16995c.setSoundMute(z10);
    }

    public void c(x xVar) {
        this.f16997n = xVar;
    }

    public void tt(boolean z10) {
        this.f16996i = z10;
    }

    @Override // com.byazt.xl.sl
    public void c(yp ypVar) {
        if (this.f16998x.get()) {
            return;
        }
        this.f16998x.set(true);
        if (ypVar.ve() && i()) {
            this.f16995c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.uj.c(sp(), ypVar);
            return;
        }
        this.uj.c(ypVar.sl(), ypVar.da());
    }

    @Override // com.byazt.xl.sl
    public void c(View view, int i10, ve veVar, int i11) {
        x xVar = this.f16997n;
        if (xVar != null) {
            xVar.c(view, i10, veVar, i11);
        }
    }
}
