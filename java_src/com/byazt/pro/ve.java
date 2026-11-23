package com.byazt.pro;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.bzd.x;
import com.byazt.ete.ic;
import com.byazt.lbn.LazeLayout;
import com.byazt.nc.u;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.my;
import com.byazt.sbm.n;
import com.byazt.ukr.yp;
import com.byazt.un.NativeDrawVideoTsView;
import com.byazt.un.NativeVideoTsView;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 199, 54})
public class ve extends com.byazt.lq.c implements LazeLayout.c<NativeVideoTsView>, com.byazt.lbn.c<NativeVideoTsView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18851a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f18852c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile WeakReference<NativeVideoTsView> f18853da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LazeLayout f18854i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public uj f18855n;
    public CreativeContainer sl;
    public final ic sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.lsp.c f18856t;
    public Bitmap tt;
    public com.byazt.uz.c uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.dj.tt f18857x;

    public ve(Context context, ic icVar, int i10, com.byazt.dj.tt ttVar) {
        super(new uj(context, icVar, i10, ttVar));
        this.f18854i = null;
        this.f18853da = null;
        this.f18856t = new com.byazt.lsp.c(null) { // from class: com.byazt.pro.ve.3
            @Override // com.byazt.lsp.c
            public void c(View view, u uVar) {
                NativeVideoTsView nativeVideoTsView = ve.this.f18855n.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.sl();
                }
            }

            @Override // com.byazt.lsp.c
            public void tt(View view, u uVar) {
                NativeVideoTsView nativeVideoTsView = ve.this.f18855n.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.sl();
                }
            }

            @Override // com.byazt.lsp.c
            public void c(u uVar) {
                NativeVideoTsView nativeVideoTsView = ve.this.f18855n.getNativeVideoTsView();
                if (nativeVideoTsView != null) {
                    nativeVideoTsView.gt();
                }
            }
        };
        this.f18857x = ttVar;
        uj ujVar = (uj) getFeedAd();
        this.f18855n = ujVar;
        this.sp = icVar;
        this.f18851a = context;
        ((com.byazt.kyz.ve) ujVar.getNativeAd()).setPluginAdInteractionListener(this.f18856t);
        if (context == null || ic.ve(icVar) || !CreativeContainer.c(icVar)) {
            return;
        }
        this.sl = new CreativeContainer(context, icVar, ((com.byazt.kyz.ve) this.f18855n.getNativeAd()).getInteractionManager());
    }

    @Override // com.byazt.lq.c, com.byazt.nc.u
    public void destroy() {
        NativeVideoTsView nativeVideoTsView;
        super.destroy();
        if (this.f18853da != null && (nativeVideoTsView = this.f18853da.get()) != null) {
            nativeVideoTsView.gt();
        }
        LazeLayout lazeLayout = this.f18854i;
        if (lazeLayout != null) {
            lazeLayout.c();
        }
        CreativeContainer creativeContainer = this.sl;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
    }

    @Override // com.byazt.lq.c, com.byazt.nc.u
    public View getAdView() {
        ic icVar = this.sp;
        NativeVideoTsView nativeVideoTsViewInflate = null;
        if (icVar == null || this.f18851a == null) {
            return null;
        }
        com.byazt.iyp.tt.c(icVar.c());
        if (ic.tt(this.sp)) {
            yp.c().c(this.sp, 3, "valid invoke");
        }
        if (ic.ve(this.sp)) {
            if (!x.c()) {
                try {
                    nativeVideoTsViewInflate = inflate(this.f18851a);
                } catch (Throwable unused) {
                }
                if (nativeVideoTsViewInflate != null) {
                    onFill(nativeVideoTsViewInflate);
                }
                return nativeVideoTsViewInflate;
            }
            this.f18854i = new LazeLayout(this.f18851a, this, this);
        } else if (this.sl != null) {
            com.byazt.kyz.ve veVar = (com.byazt.kyz.ve) this.f18855n.getNativeAd();
            if (veVar != null && veVar.getInteractionManager() != null) {
                veVar.getInteractionManager().c(this.sl);
            }
            return this.sl;
        }
        com.byazt.dz.uj.c().c(this.sp).c(this.f18855n.getAdType()).tt(this.f18855n.getCodeId());
        return this.f18854i;
    }

    @Override // com.byazt.nc.u
    public String getLifecycleId() {
        ic icVar = this.sp;
        if (icVar != null) {
            return icVar.zm();
        }
        return null;
    }

    @Override // com.byazt.nc.u
    public n getMediationManager() {
        return new com.byazt.ah.ve();
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.lsp.c cVar, com.byazt.am.uj ujVar) {
        View adView;
        try {
            registerViewForInteraction(viewGroup, (List<View>) null, list, list2, list3, (View) null, cVar);
            if (ujVar != null) {
                View viewFindViewById = viewGroup.findViewById(ujVar.t());
                if (viewFindViewById != null && getAdLogo() != null) {
                    viewFindViewById.setVisibility(0);
                    if (viewFindViewById instanceof ViewGroup) {
                        ((ViewGroup) viewFindViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(getAdLogo());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                        layoutParams.width = pf.ve(viewGroup.getContext(), 38.0f);
                        layoutParams.height = pf.ve(viewGroup.getContext(), 38.0f);
                        viewFindViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) viewFindViewById).addView(imageView, -1, -1);
                    } else if (viewFindViewById instanceof ImageView) {
                        ((ImageView) viewFindViewById).setImageBitmap(getAdLogo());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(ujVar.sp());
                if (frameLayout == null || (adView = getAdView()) == null) {
                    return;
                }
                pf.x(adView);
                frameLayout.removeAllViews();
                frameLayout.addView(adView, -1, -1);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.nc.i
    public void setCanInterruptVideoPlay(boolean z10) {
        this.f18852c = z10;
    }

    @Override // com.byazt.nc.i
    public void setDrawVideoListener(com.byazt.uz.c cVar) {
        this.uj = cVar;
    }

    @Override // com.byazt.nc.u
    public void setEasyPlayWidgetListener(com.byazt.lsp.tt ttVar) {
        uj ujVar = this.f18855n;
        if (ujVar != null) {
            ujVar.setEasyPlayWidgetListener(ttVar);
        }
    }

    @Override // com.byazt.nc.i
    public void setPauseIcon(Bitmap bitmap, int i10) {
        this.tt = bitmap;
        this.ve = i10;
        c();
    }

    private boolean c(int i10) {
        int iA = gt.tt().a(i10);
        if (3 == iA) {
            return false;
        }
        if (1 != iA || !rh.uj(this.f18851a)) {
            if (2 == iA) {
                if (!rh.n(this.f18851a) && !rh.uj(this.f18851a)) {
                    rh.a(this.f18851a);
                }
            } else if (5 == iA && !rh.uj(this.f18851a)) {
                rh.a(this.f18851a);
            }
        }
        return true;
    }

    @Override // com.byazt.lbn.c
    public NativeVideoTsView inflate(Context context) {
        NativeVideoTsView nativeVideoTsViewCreateNativeVideoTsView = this.f18855n.createNativeVideoTsView(true);
        nativeVideoTsViewCreateNativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.uj() { // from class: com.byazt.pro.ve.1
            @Override // com.byazt.un.NativeVideoTsView.uj
            public void c(boolean z10, long j10, long j11, long j12, boolean z11, boolean z12) {
                ve.this.f18855n.f18838c.f20527c = z10;
                ve.this.f18855n.f18838c.f20528n = j10;
                ve.this.f18855n.f18838c.f20526a = j11;
                ve.this.f18855n.f18838c.sp = j12;
                ve.this.f18855n.f18838c.uj = z11;
                ve.this.f18855n.f18838c.f20529x = z12;
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.c() { // from class: com.byazt.pro.ve.2
            @Override // com.byazt.un.NativeVideoTsView.c
            public void c(View view, int i10) {
                my interactionManager = ((com.byazt.kyz.ve) ve.this.f18855n.getNativeAd()).getInteractionManager();
                if (interactionManager != null) {
                    interactionManager.c(view, i10);
                }
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdLoadListener(this.f18855n);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdInteractionListener(this.f18855n);
        nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(c(nb.t(this.sp)));
        nativeVideoTsViewCreateNativeVideoTsView.setIsQuiet(this.sp.ab() == 1);
        NativeDrawVideoTsView nativeDrawVideoTsView = (NativeDrawVideoTsView) nativeVideoTsViewCreateNativeVideoTsView;
        nativeDrawVideoTsView.setCanInterruptVideoPlay(this.f18852c);
        Bitmap bitmap = this.tt;
        if (bitmap != null) {
            nativeDrawVideoTsView.c(bitmap, this.ve);
        }
        nativeVideoTsViewCreateNativeVideoTsView.setDrawVideoListener(this.uj);
        this.f18853da = new WeakReference<>(nativeVideoTsViewCreateNativeVideoTsView);
        return nativeVideoTsViewCreateNativeVideoTsView;
    }

    @Override // com.byazt.lbn.LazeLayout.c
    public void onFill(NativeVideoTsView nativeVideoTsView) {
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setNativeRenderAd(true);
            nativeVideoTsView.c(0L, true, false);
        }
    }

    private void c() {
        int i10 = this.ve;
        if (i10 >= 200) {
            this.ve = 200;
        } else if (i10 <= 20) {
            this.ve = 20;
        }
    }
}
