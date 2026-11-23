package com.byazt.hz;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.rn.RefreshableBannerView;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 701, 158})
public class sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RefreshableBannerView f15202a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.oc.uj f15204da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.oc.c f15205i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Runnable f15206m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f15207n;
    public final Handler sp;
    public final SoftReference<Context> tt;
    public a uj;
    public com.byazt.ll.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Handler f15210x;
    public final View.OnAttachStateChangeListener yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final com.byazt.oc.c f15211z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15203c = 0;
    public SoftReference<Activity> sl = new SoftReference<>(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public SoftReference<com.byazt.dhf.c> f15208t = new SoftReference<>(null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public SoftReference<Map<String, Object>> f15209u = new SoftReference<>(null);

    /* JADX INFO: renamed from: com.byazt.hz.sl$3, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 701, 1430})
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sl.this.f15210x.post(new Runnable() { // from class: com.byazt.hz.sl.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (sl.this.f15203c == 0 || sl.this.f15207n == null) {
                        return;
                    }
                    View viewC = sl.this.f15207n.c((Context) sl.this.tt.get());
                    if (viewC != null) {
                        sl slVar = sl.this;
                        slVar.c(slVar.f15207n);
                        if (sl.this.f15202a != null) {
                            sl.this.f15202a.c(viewC);
                        }
                        sl.this.f15210x.postDelayed(new Runnable() { // from class: com.byazt.hz.sl.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (sl.this.uj != null) {
                                    sl.this.uj.ve();
                                }
                                sl slVar2 = sl.this;
                                slVar2.uj = slVar2.f15207n;
                                sl.this.nu();
                            }
                        }, 250L);
                    } else {
                        if (sl.this.f15207n != null) {
                            sl.this.f15207n.ve();
                        }
                        sl.this.nu();
                    }
                    sl.this.z();
                }
            });
        }
    }

    public sl(Context context) {
        View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: com.byazt.hz.sl.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (sl.this.f15203c == 0) {
                    return;
                }
                sl.this.nu();
                sl.this.z();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                sl.this.m();
            }
        };
        this.yp = onAttachStateChangeListener;
        this.f15211z = new com.byazt.oc.c() { // from class: com.byazt.hz.sl.2
            @Override // com.byazt.oc.c
            public void c() {
                sl.this.m();
                if (sl.this.f15205i != null) {
                    sl.this.f15205i.c();
                }
            }

            @Override // com.byazt.oc.c
            public void tt(View view) {
                if (sl.this.f15205i != null) {
                    sl.this.f15205i.tt(view);
                }
            }

            @Override // com.byazt.oc.c
            public void c(View view) {
                if (sl.this.f15205i != null) {
                    sl.this.f15205i.c(view);
                }
            }

            @Override // com.byazt.oc.c
            public void c(com.byazt.pp.c cVar) {
                if (sl.this.f15205i != null) {
                    sl.this.f15205i.c(cVar);
                }
            }
        };
        this.f15206m = new AnonymousClass3();
        this.tt = new SoftReference<>(context);
        this.uj = new a(context);
        if (context != null) {
            RefreshableBannerView refreshableBannerView = new RefreshableBannerView(context);
            this.f15202a = refreshableBannerView;
            refreshableBannerView.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f15202a.setVisibilityChangeListener(new RefreshableBannerView.c() { // from class: com.byazt.hz.sl.4
                @Override // com.byazt.rn.RefreshableBannerView.c
                public void c(boolean z10) {
                    if (!z10) {
                        sl.this.m();
                    } else {
                        if (sl.this.f15203c == 0) {
                            return;
                        }
                        sl.this.z();
                    }
                }
            });
        }
        this.sp = new Handler(com.byazt.eu.n.tt());
        this.f15210x = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        this.sp.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nu() {
        Context context;
        SoftReference<Context> softReference = this.tt;
        if (softReference == null || (context = softReference.get()) == null) {
            return;
        }
        a aVar = new a(context);
        this.f15207n = aVar;
        aVar.c(this.f15211z);
        this.f15207n.c(this.f15204da);
        c(this.ve);
        this.f15207n.c(new com.byazt.ll.tt(this.ve), (com.byazt.oc.tt) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        this.sp.removeCallbacksAndMessages(null);
        this.sp.postDelayed(this.f15206m, this.f15203c);
    }

    public List<com.byazt.pp.ve> sl() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.t();
        }
        return null;
    }

    public com.byazt.pp.ve t() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.f_();
        }
        return null;
    }

    public int u() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.m();
        }
        return -1;
    }

    public com.byazt.nc.uj yp() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.qy();
        }
        return null;
    }

    public int a() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.n();
        }
        return 0;
    }

    public com.byazt.pp.ve da() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.z();
        }
        return null;
    }

    public List<com.byazt.pp.ve> i() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.sl();
        }
        return null;
    }

    @Nullable
    public View n() {
        a aVar = this.uj;
        if (aVar == null) {
            return null;
        }
        View viewC = aVar.c(this.tt.get());
        a aVar2 = this.uj;
        aVar2.c(aVar2.uj);
        if (viewC == null || this.f15202a == null) {
            return null;
        }
        viewC.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.byazt.hz.sl.5
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (view.getVisibility() == 0) {
                    sl slVar = sl.this;
                    slVar.c(slVar.uj);
                    view.removeOnLayoutChangeListener(this);
                }
            }
        });
        this.f15202a.removeAllViews();
        ViewParent parent = viewC.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(viewC);
        }
        this.f15202a.addView(viewC);
        return this.f15202a;
    }

    public Map<String, Object> sp() {
        a aVar = this.uj;
        return aVar != null ? aVar.nu() : new HashMap();
    }

    public boolean uj() {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.uj();
        }
        return false;
    }

    public void ve() {
        this.f15210x.removeCallbacksAndMessages(null);
        m();
        RefreshableBannerView refreshableBannerView = this.f15202a;
        if (refreshableBannerView != null) {
            refreshableBannerView.removeOnAttachStateChangeListener(this.yp);
        }
        a aVar = this.uj;
        if (aVar != null) {
            aVar.ve();
        }
        a aVar2 = this.f15207n;
        if (aVar2 != null) {
            aVar2.ve();
        }
    }

    public List<com.byazt.pp.tt> x() {
        a aVar = this.uj;
        return aVar != null ? aVar.da() : new ArrayList();
    }

    private void c(com.byazt.ll.tt ttVar) {
        com.byazt.nbs.tt ttVarC;
        if (ttVar == null || (ttVarC = com.byazt.bp.tt.tt().c(ttVar.gt(), 1, 100)) == null) {
            return;
        }
        int iSl = ttVarC.sl(1);
        if (iSl >= 10000 && iSl <= 180000) {
            this.f15203c = iSl;
            com.byazt.eu.tt.c("TMe", "---==-----banner轮播时间：" + this.f15203c);
            return;
        }
        com.byazt.eu.tt.c("TMe", "---==-----banner轮播时间下发不在10*1000～180*1000范围内：" + iSl + "，禁止banner轮播");
    }

    public void tt() {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.rl();
        }
    }

    public void c(com.byazt.ll.tt ttVar, com.byazt.oc.tt ttVar2) {
        SoftReference<Context> softReference;
        if (this.uj == null || (softReference = this.tt) == null || softReference.get() == null) {
            return;
        }
        this.ve = ttVar;
        c(ttVar);
        if (!com.byazt.bp.tt.tt().c(ttVar.gt(), 1) && ttVar2 != null) {
            ttVar2.c(new com.byazt.pp.c(840031, com.byazt.pp.c.c(840031)));
        } else if (com.byazt.bp.tt.tt().gr()) {
            this.uj.c(this.ve, ttVar2);
        } else if (ttVar2 != null) {
            ttVar2.c(new com.byazt.pp.c(840032, com.byazt.pp.c.c(840032)));
        }
    }

    public void c(com.byazt.oc.c cVar) {
        this.f15205i = cVar;
        a aVar = this.uj;
        if (aVar != null) {
            aVar.c(this.f15211z);
        }
    }

    public void c(com.byazt.oc.uj ujVar) {
        this.f15204da = ujVar;
        a aVar = this.uj;
        if (aVar != null) {
            aVar.c(ujVar);
        }
    }

    public void c() {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void c(com.byazt.ocd.ve veVar) {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.c(veVar);
        }
    }

    public void c(com.byazt.ocd.tt ttVar) {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.tt(ttVar);
        }
    }

    public void c(com.byazt.ft.ve veVar) {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.c(veVar);
        }
    }

    public void c(Activity activity, com.byazt.dhf.c cVar) {
        this.sl = new SoftReference<>(activity);
        this.f15208t = new SoftReference<>(cVar);
    }

    public void c(Dialog dialog, Integer[] numArr) {
        HashMap map = new HashMap();
        map.put("dislike_dialog", dialog);
        map.put("dislike_ids", numArr);
        this.f15209u = new SoftReference<>(map);
    }

    public com.byazt.nc.sp c(Activity activity) {
        a aVar = this.uj;
        if (aVar != null) {
            return aVar.c(activity);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull a aVar) {
        Map<String, Object> map = this.f15209u.get();
        if (map != null) {
            Dialog dialog = (Dialog) map.get("dislike_dialog");
            Integer[] numArr = (Integer[]) map.get("dislike_ids");
            if (dialog != null && numArr != null) {
                aVar.c(dialog, numArr);
            }
        }
        Activity activity = this.sl.get();
        com.byazt.dhf.c cVar = this.f15208t.get();
        if (activity == null || cVar == null) {
            return;
        }
        aVar.c(activity, cVar);
    }

    public void c(String str) {
        a aVar = this.uj;
        if (aVar != null) {
            aVar.uj(str);
        }
    }
}
