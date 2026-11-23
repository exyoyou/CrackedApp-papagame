package com.byazt.zu;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.cv.da;
import com.byazt.hr.sl;
import com.byazt.hr.u;
import com.byazt.hz.i;
import com.byazt.me.x;
import com.byazt.nc.sp;
import com.byazt.nc.yp;
import com.byazt.nr.m;
import com.byazt.vx.nu;
import com.byazt.vx.t;
import com.byazt.vx.z;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 919, 15})
public class uj extends yp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.ft.tt f22968a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f22969c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.ocd.tt f22970i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ft.ve f22971n;
    public com.byazt.ocd.ve sp;
    public com.byazt.yl.ve tt;
    public View uj;
    public com.byazt.ll.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.am.tt f22972x;

    public uj(i iVar, com.byazt.yl.ve veVar, com.byazt.ll.tt ttVar, com.byazt.am.tt ttVar2) {
        this.f22969c = iVar;
        this.f22972x = ttVar2;
        this.tt = veVar;
        if (veVar != null && veVar.getSubAdType() == 3) {
            this.tt.setExpressAd(true);
        }
        this.ve = ttVar;
        c();
    }

    @Override // com.byazt.nc.yp
    public void destroy() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            try {
                veVar.onDestroy();
            } catch (Throwable th) {
                m.c(th);
            }
        }
    }

    @Override // com.byazt.nc.yp
    public sp getDislikeDialog(Activity activity) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            return veVar.getDislikeDialog(activity);
        }
        return null;
    }

    @Override // com.byazt.nc.yp
    public com.byazt.nc.uj getDislikeInfo() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            return veVar.getDislikeInfo();
        }
        return null;
    }

    @Override // com.byazt.nc.yp
    public View getExpressAdView() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            if (veVar.isExpressAd()) {
                com.byazt.ng.a.c(this.ve);
                if (this.tt.getCallBack() != null) {
                    this.tt.getCallBack().c();
                }
                com.byazt.yl.ve veVar2 = this.tt;
                com.byazt.ng.a.c(veVar2, this.ve, veVar2.isShowRepeatOnce(), 0);
                View adView = this.tt.getAdView();
                this.uj = adView;
                return adView;
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(this.tt);
            com.byazt.ng.a.c(arrayList, this.ve, 0);
        }
        return null;
    }

    @Override // com.byazt.nc.yp
    public int getImageMode() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            return veVar.getImageMode();
        }
        return -1;
    }

    @Override // com.byazt.nc.yp
    public int getInteractionType() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            return veVar.getInteractionType();
        }
        return -1;
    }

    @Override // com.byazt.nc.yp
    public String getLifecycleId() {
        return null;
    }

    @Override // com.byazt.nc.yp
    public Map<String, Object> getMediaExtraInfo() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return null;
        }
        Map<String, Object> mediaExtraInfo = veVar.getMediaExtraInfo();
        if (mediaExtraInfo == null) {
            com.byazt.ll.tt ttVar = this.ve;
            mediaExtraInfo = com.byazt.hz.tt.ve(ttVar != null ? ttVar.gt() : "");
        }
        if (this.tt.isHasShowCallback() && z.c()) {
            String strC = z.c(t.c(this.ve, this.tt, true));
            if (!TextUtils.isEmpty(strC)) {
                mediaExtraInfo.put("get_show_ecpm_info", strC);
            }
        }
        return com.byazt.lkb.tt.c(mediaExtraInfo, this.tt.getExtraMsg());
    }

    @Override // com.byazt.nc.yp
    public com.byazt.sbm.n getMediationManager() {
        return new da(new ve(this.f22969c, this.tt, this.ve));
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
    }

    @Override // com.byazt.nc.yp
    public void registerClickableRects(JSONObject jSONObject) {
    }

    @Override // com.byazt.nc.yp
    public void render() {
        com.byazt.ft.tt ttVar;
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            if (veVar.isExpressAd()) {
                a();
                this.tt.render();
                c(this.tt);
                if (this.tt.getSubAdType() != 3 || (ttVar = this.f22968a) == null) {
                    return;
                }
                ttVar.c((View) null, -1.0f, -2.0f);
                return;
            }
            com.byazt.am.tt ttVar2 = this.f22972x;
            if (ttVar2 == null) {
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 自渲染信息流转模板，开发者未提供MediationNativeToBannerListener，将无法展示该广告");
                return;
            }
            try {
                View viewC = ttVar2.c(new com.byazt.cv.i(this.tt) { // from class: com.byazt.zu.uj.3
                    @Override // com.byazt.cv.i, com.byazt.dw.c
                    public void registerView(final Activity activity, final ViewGroup viewGroup, final List<View> list, final List<View> list2, final List<View> list3, final com.byazt.am.uj ujVar) {
                        uj.this.c(true, new Handler.Callback() { // from class: com.byazt.zu.uj.3.1
                            @Override // android.os.Handler.Callback
                            public boolean handleMessage(@NonNull Message message) {
                                if (uj.this.tt == null) {
                                    return false;
                                }
                                uj.this.tt.registerViewForInteraction(activity, viewGroup, list, list2, list3, com.byazt.me.da.c(ujVar), null);
                                return false;
                            }
                        });
                    }
                });
                this.uj = viewC;
                if (viewC != null) {
                    com.byazt.ft.tt ttVar3 = this.f22968a;
                    if (ttVar3 != null) {
                        ttVar3.c(viewC, 0.0f, 0.0f);
                        return;
                    }
                    return;
                }
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()返回null，将无法展示该广告");
                com.byazt.ft.tt ttVar4 = this.f22968a;
                if (ttVar4 != null) {
                    ttVar4.c((View) null, "渲染失败", -99999);
                }
            } catch (Throwable th) {
                com.byazt.eu.tt.c(MediationConstant.TAG, "--==-- 自渲染信息流转模板，getMediationBannerViewFromNativeAd()发生异常，将无法展示该广告，信息如下：");
                m.c(th);
            }
        }
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        this.f22970i = ttVar;
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            veVar.setAdInteractionListener(ttVar);
        }
    }

    @Override // com.byazt.nc.yp
    public void setCanInterruptVideoPlay(boolean z10) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            veVar.setCanInterruptVideoPlay(z10);
        }
    }

    @Override // com.byazt.nc.yp
    public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null || activity == null) {
            return;
        }
        veVar.setDislikeCallback(activity, cVar);
    }

    @Override // com.byazt.nc.yp
    public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            veVar.setDislikeDialog(dialog, numArr);
        }
    }

    @Override // com.byazt.nc.yp
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        this.sp = veVar;
    }

    @Override // com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.tt ttVar) {
        this.f22968a = ttVar;
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
    }

    @Override // com.byazt.nc.yp
    public void setSlideIntervalTime(int i10) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            veVar.setSlideIntervalTime(i10);
        }
    }

    @Override // com.byazt.nc.yp
    public void setVideoAdListener(com.byazt.ft.ve veVar) {
        this.f22971n = veVar;
    }

    @Override // com.byazt.nc.yp
    public void showInteractionExpressAd(Activity activity) {
    }

    @Override // com.byazt.nc.yp
    public void unRegisterRects() {
    }

    @Override // com.byazt.nc.yp
    public void uploadDislikeEvent(String str) {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar != null) {
            veVar.uploadDislikeEvent(str);
        }
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
    }

    private void a() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        int subAdType = veVar.getSubAdType();
        if (subAdType != 4) {
            if (subAdType == 5) {
                ve();
                return;
            } else if (subAdType == 3) {
                tt();
                return;
            }
        }
        uj();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        String strTt;
        long jCurrentTimeMillis;
        if (this.tt == null || this.ve == null) {
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (nu.c(this.tt)) {
            strTt = nu.tt();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strTt = null;
            jCurrentTimeMillis = -1;
        }
        com.byazt.bg.c.n(this.ve.gt());
        com.byazt.yl.ve veVar = this.tt;
        com.byazt.ng.a.c(veVar, this.ve, 0, strTt, jCurrentTimeMillis, veVar.isClickListenRepeatOnce());
    }

    private void tt() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        veVar.setTTAdatperCallback(new com.byazt.zq.c() { // from class: com.byazt.zu.uj.4
            @Override // com.byazt.oc.c
            public void c(@NonNull com.byazt.pp.c cVar) {
            }

            @Override // com.byazt.oc.c
            public void tt(View view) {
                uj.this.c(view);
            }

            @Override // com.byazt.oc.c
            public void c() {
                if (uj.this.tt.getDislikeCallback() != null) {
                    uj.this.tt.getDislikeCallback().c(0, "banner ad closed", false);
                }
            }

            @Override // com.byazt.oc.c
            public void c(View view) {
                if (uj.this.f22968a != null) {
                    uj.this.f22968a.c(view, 0);
                }
                uj.this.n();
            }
        });
    }

    private void uj() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        if (veVar.isExpressAd()) {
            this.tt.setTTNativeAdListener(new com.byazt.me.a() { // from class: com.byazt.zu.uj.7
                @Override // com.byazt.me.a
                public void c(View view, String str, int i10) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, str, i10);
                    }
                }

                @Override // com.byazt.me.a
                public void c(float f10, float f11) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c((View) null, f10, f11);
                    }
                }

                @Override // com.byazt.me.tt
                public void c(View view) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, 0);
                    }
                    uj.this.n();
                }

                @Override // com.byazt.me.tt
                public void c() {
                    uj.this.c((View) null);
                }
            });
        } else {
            this.tt.setTTNativeAdListener(new com.byazt.me.ve() { // from class: com.byazt.zu.uj.8
                @Override // com.byazt.me.tt
                public void c(View view) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, 0);
                    }
                    uj.this.n();
                }

                @Override // com.byazt.me.tt
                public void c() {
                    uj.this.c((View) null);
                }
            });
        }
    }

    private void ve() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        if (veVar.isExpressAd()) {
            this.tt.setGMDrawAdListener(new com.byazt.fy.uj() { // from class: com.byazt.zu.uj.5
                @Override // com.byazt.fy.uj
                public void c(View view, String str, int i10) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, str, i10);
                    }
                }

                @Override // com.byazt.fy.uj
                public void c(float f10, float f11) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c((View) null, f10, f11);
                    }
                }

                @Override // com.byazt.fy.c
                public void c(View view) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, 0);
                    }
                    uj.this.n();
                }

                @Override // com.byazt.fy.c
                public void c() {
                    uj.this.c((View) null);
                }
            });
        } else {
            this.tt.setGMDrawAdListener(new com.byazt.fy.c() { // from class: com.byazt.zu.uj.6
                @Override // com.byazt.fy.c
                public void c(View view) {
                    if (uj.this.f22968a != null) {
                        uj.this.f22968a.c(view, 0);
                    }
                    uj.this.n();
                }

                @Override // com.byazt.fy.c
                public void c() {
                    uj.this.c((View) null);
                }
            });
        }
    }

    @Override // com.byazt.nc.yp
    public void setExpressInteractionListener(com.byazt.ft.c cVar) {
        this.f22968a = cVar;
    }

    private void c() {
        com.byazt.yl.ve veVar = this.tt;
        if (veVar == null) {
            return;
        }
        veVar.setTTVideoListener(new x() { // from class: com.byazt.zu.uj.1
            @Override // com.byazt.me.x
            public void c() {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.c();
                }
            }

            @Override // com.byazt.me.x
            public void n() {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.n();
                }
            }

            @Override // com.byazt.me.x
            public void tt() {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.tt();
                }
            }

            @Override // com.byazt.me.x
            public void uj() {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.uj();
                }
            }

            @Override // com.byazt.me.x
            public void ve() {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.ve();
                }
            }

            @Override // com.byazt.me.x
            public void c(com.byazt.pp.c cVar) {
                String strTt;
                long jCurrentTimeMillis;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (nu.c(uj.this.tt)) {
                    strTt = nu.tt();
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                } else {
                    strTt = null;
                    jCurrentTimeMillis = -1;
                }
                com.byazt.ng.a.c(uj.this.tt, uj.this.ve, (com.byazt.pp.c) null, 2, 0, strTt, jCurrentTimeMillis);
                if (cVar == null || uj.this.f22971n == null) {
                    return;
                }
                uj.this.f22971n.c(cVar.f18789c, -1);
            }

            @Override // com.byazt.me.x
            public void c(long j10, long j11) {
                if (uj.this.f22971n != null) {
                    uj.this.f22971n.c(j10, j11);
                }
            }
        });
        this.tt.setTTAdAppDownloadListener(new com.byazt.zh.tt() { // from class: com.byazt.zu.uj.2
            @Override // com.byazt.zh.tt
            public void c() {
                if (uj.this.sp != null) {
                    uj.this.sp.c();
                }
            }

            @Override // com.byazt.zh.tt
            public void tt() {
            }

            @Override // com.byazt.zh.tt
            public void tt(long j10, long j11, String str, String str2) {
                if (uj.this.sp != null) {
                    uj.this.sp.ve(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.zh.tt
            public void c(long j10, long j11, int i10, int i11, String str, String str2) {
                if (uj.this.sp != null) {
                    uj.this.sp.c(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.zh.tt
            public void c(long j10, long j11, String str, String str2) {
                if (uj.this.sp != null) {
                    uj.this.sp.tt(j10, j11, str, str2);
                }
            }

            @Override // com.byazt.zh.tt
            public void c(long j10, String str, String str2) {
                if (uj.this.sp != null) {
                    uj.this.sp.c(j10, str, str2);
                }
            }

            @Override // com.byazt.zh.tt
            public void c(String str, String str2) {
                if (uj.this.sp != null) {
                    uj.this.sp.c(str, str2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        com.byazt.yl.ve veVar;
        String strTt;
        long jCurrentTimeMillis;
        if (this.ve == null || (veVar = this.tt) == null) {
            return;
        }
        veVar.setHasShowCallback(true);
        com.byazt.ft.tt ttVar = this.f22968a;
        if (ttVar != null) {
            ttVar.tt(view, 0);
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, com.byazt.eu.uj.c(this.ve.gt(), "show_listen") + "adSlotId：" + this.tt.getAdNetworkSlotId() + "，广告类型：" + com.byazt.yl.c.c(this.tt.getAdNetworkPlatformId()));
        u uVarC = u.c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.ve.gt());
        uVarC.sp(sb2.toString());
        u.c().tt(this.ve.gt());
        sl.c().tt(this.ve.gt(), this.tt.getAdNetworkSlotId());
        com.byazt.hr.t.c().tt(this.ve.gt(), this.tt.getAdNetworkSlotId());
        com.byazt.xx.ve.c(this.tt.getAdnName(), this.ve.gt(), this.tt.getAdNetworkSlotId());
        if (this.tt.getCallBack() != null) {
            this.tt.getCallBack().c(this.tt);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (nu.c(this.tt)) {
            strTt = nu.tt();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strTt = null;
            jCurrentTimeMillis = -1;
        }
        String str = strTt;
        long j10 = jCurrentTimeMillis;
        boolean zIsShowListenRepeatOnce = this.tt.isShowListenRepeatOnce();
        if (!zIsShowListenRepeatOnce) {
            com.byazt.bg.c.sp(this.ve.gt());
            com.byazt.bg.c.ve(this.ve.gt());
            com.byazt.psp.uj.c(1, this.ve.gt(), this.tt.getAdType(), this.tt.getCpm());
        }
        com.byazt.ng.a.c(this.tt, this.ve, 0, str, j10, zIsShowListenRepeatOnce, 1);
        com.byazt.oi.ve.c(this.ve.gt(), this.tt);
    }

    private void c(com.byazt.yl.ve veVar) {
        if (com.byazt.bp.tt.tt().aw()) {
            com.byazt.ng.a.c(veVar, this.ve, nu.c(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10, Handler.Callback callback) {
        com.byazt.ng.a.c(this.ve);
        if (this.tt != null) {
            a();
            if (callback != null) {
                callback.handleMessage(null);
            }
            if (this.tt.getCallBack() != null) {
                this.tt.getCallBack().c();
            }
            c(this.tt);
            HashMap map = new HashMap();
            map.put("has_view_binder", Boolean.valueOf(z10));
            com.byazt.yl.ve veVar = this.tt;
            com.byazt.ng.a.c(veVar, this.ve, veVar.isShowRepeatOnce(), 0, map);
            return;
        }
        com.byazt.ng.a.c((List<com.byazt.yl.ve>) null, this.ve, 0);
    }
}
