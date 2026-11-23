package com.byazt.dyf;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.byazt.nc.a;
import com.byazt.nc.sp;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.sdk.api.model.AdnName;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 746, 13})
public class tt extends sp {
    public static final String AD_TAG_BANNER = "banner_ad";
    public static final String AD_TAG_DISLIKE = "dislike";
    public static final String AD_TAG_EXPRESS_BANNER = "slide_banner_ad";
    public static final String AD_TAG_FEED = "embeded_ad";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f13215a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f13216c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c f13217da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public HandlerC0298tt f13218i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TTDislikeToast f13219n;
    public final List<com.byazt.sif.c> sl;
    public boolean sp;
    public com.byazt.vo.tt tt;
    public ve uj;
    public uj ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SoftReference<View> f13220x;

    public interface c {
        void c();

        void c(int i10, String str, boolean z10);

        void tt();
    }

    /* JADX INFO: renamed from: com.byazt.dyf.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 746, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    public static class HandlerC0298tt extends Handler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<Context> f13226c;

        public HandlerC0298tt(Context context) {
            this.f13226c = new WeakReference<>(context);
        }
    }

    public tt(Context context, com.byazt.vo.tt ttVar, String str, boolean z10, final com.byazt.dyf.c cVar) {
        this.f13215a = new AtomicBoolean(false);
        this.sl = new ArrayList();
        ttVar.tt(str);
        ttVar.c(AdnName.OTHER);
        this.f13216c = context;
        if (context == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            m.ve("Dislike 初始化必须使用activity,请在TTAdManager.createAdNative(activity)中传入");
            return;
        }
        this.tt = ttVar;
        this.sp = z10;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            c(cVar);
        } else {
            da.tt().post(new Runnable() { // from class: com.byazt.dyf.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.c(cVar);
                }
            });
        }
    }

    public void addInterceptor(com.byazt.sif.c cVar) {
        this.sl.add(cVar);
        ve veVar = this.uj;
        if (veVar != null) {
            veVar.c(cVar);
        }
    }

    @Override // com.byazt.nc.sp
    public boolean isShow() {
        if (!(this.f13216c instanceof Activity)) {
            return false;
        }
        uj ujVar = this.ve;
        boolean zIsShowing = ujVar != null ? ujVar.isShowing() : false;
        ve veVar = this.uj;
        return veVar != null ? zIsShowing | veVar.isShowing() : zIsShowing;
    }

    public void resetData(com.byazt.vo.tt ttVar) {
        if ((this.f13216c instanceof Activity) && ttVar != null) {
            this.ve.c(ttVar);
            this.uj.c(ttVar);
        }
    }

    @Override // com.byazt.nc.sp
    public void resetDislikeStatus() {
        if (this.f13216c instanceof Activity) {
            uj ujVar = this.ve;
            if (ujVar != null) {
                ujVar.hide();
            }
            ve veVar = this.uj;
            if (veVar != null) {
                veVar.c();
            }
            TTDislikeToast tTDislikeToast = this.f13219n;
            if (tTDislikeToast != null) {
                tTDislikeToast.c();
            }
            this.f13215a.set(false);
        }
    }

    @Override // com.byazt.nc.sp
    public void setDislikeInteractionCallback(final com.byazt.dhf.c cVar) {
        this.f13217da = new c() { // from class: com.byazt.dyf.tt.4
            @Override // com.byazt.dyf.tt.c
            public void c() {
                com.byazt.dhf.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c();
                }
            }

            @Override // com.byazt.dyf.tt.c
            public void tt() {
                com.byazt.dhf.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.tt();
                }
            }

            @Override // com.byazt.dyf.tt.c
            public void c(int i10, String str, boolean z10) {
                com.byazt.dhf.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(i10, str, z10);
                }
            }
        };
    }

    @Override // com.byazt.nc.sp
    public void setDislikeSource(String str) {
        com.byazt.vo.tt ttVar = this.tt;
        if (ttVar != null) {
            ttVar.c(str);
        }
    }

    public void setMonitorView(View view) {
        this.f13220x = new SoftReference<>(view);
    }

    @Override // com.byazt.nc.sp
    public void showDislikeDialog() {
        TTDislikeToast tTDislikeToast;
        Context context = this.f13216c;
        boolean z10 = (context instanceof Activity) && !((Activity) context).isFinishing();
        if (this.f13215a.get() && this.sp && (tTDislikeToast = this.f13219n) != null) {
            try {
                tTDislikeToast.c("您已成功提交反馈，请勿重复提交哦！");
                return;
            } catch (Throwable th) {
                m.c(th);
                return;
            }
        }
        if (!z10 || isShow()) {
            return;
        }
        this.ve.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        com.byazt.vo.tt ttVar = this.tt;
        if (ttVar == null) {
            return;
        }
        final String strX = ttVar.x();
        if (AD_TAG_EXPRESS_BANNER.equals(strX) || AD_TAG_BANNER.equals(strX) || AD_TAG_FEED.equals(strX)) {
            if (this.f13220x.get() != null && this.tt.i()) {
                this.f13220x.get().setVisibility(8);
            }
            if (this.f13218i == null) {
                this.f13218i = new HandlerC0298tt(this.f13216c);
            }
            this.f13218i.postDelayed(new Runnable() { // from class: com.byazt.dyf.tt.5
                @Override // java.lang.Runnable
                public void run() {
                    tt.this.tt.tt("dislike");
                    if (tt.this.f13220x == null || tt.this.f13220x.get() == null || !((View) tt.this.f13220x.get()).isShown()) {
                        com.byazt.pr.c.c().c(tt.this.f13216c, tt.this.tt, "close_success");
                    } else {
                        com.byazt.pr.c.c().c(tt.this.f13216c, tt.this.tt, "close_fail");
                    }
                    tt.this.tt.tt(strX);
                }
            }, 500L);
        }
    }

    public void setDislikeInteractionCallback(c cVar) {
        this.f13217da = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.dyf.c cVar) {
        ViewGroup viewGroup;
        uj ujVar = new uj(this.f13216c, this.tt, cVar);
        this.ve = ujVar;
        ujVar.c(new com.byazt.sif.ve() { // from class: com.byazt.dyf.tt.2
            @Override // com.byazt.sif.ve
            public void c() {
                tt.this.c();
            }

            @Override // com.byazt.sif.ve
            public void tt() {
                if (tt.this.f13217da != null) {
                    tt.this.f13217da.c();
                }
            }

            @Override // com.byazt.sif.ve
            public void ve() {
                m.uj("TTAdDislikeImpl", "onDislikeHide: ");
                try {
                    if (tt.this.f13217da == null || tt.this.isShow()) {
                        return;
                    }
                    tt.this.f13217da.tt();
                } catch (Throwable th) {
                    m.ve("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.byazt.sif.ve
            public void c(int i10, a aVar) {
                try {
                    if (!tt.this.sl.isEmpty()) {
                        String strUj = tt.this.uj != null ? tt.this.uj.uj() : "";
                        Iterator it2 = tt.this.sl.iterator();
                        while (it2.hasNext()) {
                            ((com.byazt.sif.c) it2.next()).c(aVar, strUj, tt.this.uj);
                        }
                    }
                    if (!aVar.hasSecondOptions()) {
                        if (tt.this.f13217da != null) {
                            tt.this.f13217da.c(i10, aVar.getName(), tt.this.tt != null ? tt.this.tt.i() : false);
                        }
                        tt.this.f13215a.set(true);
                        if ("99:1".equals(aVar.getId())) {
                            return;
                        }
                        if (tt.this.f13219n != null) {
                            tt.this.f13219n.c("感谢您的反馈！\n我们将为您带来更优质的广告体验");
                        }
                        tt.this.tt();
                    }
                    m.uj("TTAdDislikeImpl", "onDislikeSelected: " + i10 + ", " + aVar.getName());
                } catch (Throwable th) {
                    m.ve("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }
        });
        ve veVar = new ve(this.f13216c, this.tt);
        this.uj = veVar;
        veVar.c(new com.byazt.sif.tt() { // from class: com.byazt.dyf.tt.3
            @Override // com.byazt.sif.tt
            public void c() {
                try {
                    if (tt.this.f13215a.get()) {
                        return;
                    }
                    tt.this.ve.show();
                    if (tt.this.uj != null) {
                        String strUj = tt.this.uj.uj();
                        if (TextUtils.isEmpty(strUj)) {
                            return;
                        }
                        tt.this.ve.c(strUj);
                    }
                } catch (Throwable th) {
                    m.ve("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.byazt.sif.tt
            public void c(int i10, a aVar) {
                try {
                    if (aVar.hasSecondOptions()) {
                        return;
                    }
                    if (tt.this.f13217da != null) {
                        tt.this.f13217da.c(i10, aVar.getName(), tt.this.tt != null ? tt.this.tt.i() : false);
                    }
                    tt.this.f13215a.set(true);
                    if (tt.this.f13219n != null) {
                        tt.this.f13219n.c("感谢您的反馈！\n我们将为您带来更优质的广告体验");
                    }
                    tt.this.tt();
                } catch (Throwable th) {
                    m.ve("TTAdDislikeImpl", "comment callback selected error: ", th);
                }
            }
        });
        if ((this.f13216c instanceof Activity) && this.sp) {
            this.f13219n = new TTDislikeToast(this.f13216c);
            Window window = ((Activity) this.f13216c).getWindow();
            if (window == null || (viewGroup = (ViewGroup) window.getDecorView()) == null) {
                return;
            }
            viewGroup.addView(this.f13219n);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Context context = this.f13216c;
        if ((context instanceof Activity) && (!((Activity) context).isFinishing()) && !this.uj.isShowing()) {
            this.uj.show();
        }
    }

    public tt(Context context, com.byazt.vo.tt ttVar, boolean z10, com.byazt.dyf.c cVar) {
        this(context, ttVar, null, z10, cVar);
    }
}
