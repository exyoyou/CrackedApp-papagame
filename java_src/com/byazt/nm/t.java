package com.byazt.nm;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import com.byazt.nr.m;
import com.byazt.omf.h;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 585, 66})
public class t extends tt {
    public static final String VERSION_00 = "0.0";
    public int tt;

    @com.byazt.zqa.c(c = {0, 1, 585, 125})
    class c extends com.byazt.yl.ve {

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Map<String, Object> f17473da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public com.byazt.nc.tt f17474i;
        public com.byazt.dv.tt sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public com.byazt.sp.tt f17475t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public com.byazt.ll.tt f17476u;

        public c(Map<String, Object> map) {
            this.f17473da = map;
        }

        @Override // com.byazt.yl.ve
        public long getAdId() {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                return com.byazt.xf.tt.tt(ttVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public long getCreativeId() {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                return com.byazt.xf.tt.c(ttVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null && (mediaExtraInfo = ttVar.getMediaExtraInfo()) != null) {
                HashMap map = new HashMap();
                map.put(PayCenterOrderRequest.PAY_TYPE_COUPON, mediaExtraInfo.get(PayCenterOrderRequest.PAY_TYPE_COUPON));
                map.put("live_room", mediaExtraInfo.get("live_room"));
                map.put("product", mediaExtraInfo.get("product"));
                setMediaExtraInfo(map);
            }
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.yl.ve
        public String getReqId() {
            com.byazt.nc.tt ttVar = this.f17474i;
            return ttVar != null ? com.byazt.xf.tt.ve(ttVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.yl.ve
        public boolean hasDestroyed() {
            return this.f17474i == null;
        }

        @Override // com.byazt.yl.ve
        public void hideSkipBtn() {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                ttVar.hideSkipButton();
            }
        }

        @Override // com.byazt.yl.ve
        public void hideSkipButton() {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "PangleSplashLoader hideSkipButton   WaterfallPangleSplashLoader  mCSJSplashAd:" + this.f17474i);
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                ttVar.hideSkipButton();
            }
        }

        @Override // com.byazt.yl.ve
        public void onDestroy() {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                ttVar.setSplashAdListener(null);
                this.f17474i.setDownloadListener(null);
                this.f17474i.setSplashCardListener(null);
                this.f17474i = null;
            }
        }

        @Override // com.byazt.yl.ve
        public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
            com.byazt.nc.tt ttVar2 = this.f17474i;
            if (ttVar2 != null) {
                ttVar2.setAdInteractionListener(ttVar);
            }
        }

        @Override // com.byazt.yl.ve
        public void showSplashAd(ViewGroup viewGroup) {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar == null || viewGroup == null) {
                return;
            }
            ttVar.showSplashView(viewGroup);
        }

        @Override // com.byazt.yl.ve
        public void showSplashCardView(ViewGroup viewGroup, Activity activity) {
            com.byazt.nc.tt ttVar = this.f17474i;
            if (ttVar != null) {
                ttVar.showSplashCardView(viewGroup, activity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.zq.n c() {
            return (com.byazt.zq.n) this.sp;
        }

        public void c(Context context, com.byazt.ll.tt ttVar, com.byazt.dv.tt ttVar2, com.byazt.sp.tt ttVar3) {
            this.sl = ttVar2;
            this.f17475t = ttVar3;
            this.f17476u = ttVar;
            h pluginCSJLoader = t.this.getPluginCSJLoader(context);
            if (pluginCSJLoader == null) {
                return;
            }
            Map<String, Object> map = this.f17473da;
            if (map == null) {
                t.this.tt = 3000;
            } else {
                t.this.tt = map.get("ad_load_timeout") != null ? ((Integer) this.f17473da.get("ad_load_timeout")).intValue() : 3000;
            }
            com.byazt.dj.tt.c cVarC = com.byazt.xf.tt.c(this.f17476u, this.sl, false);
            cVarC.c(this.f17476u.qy()).tt(this.f17476u.gu()).c(this.f17476u.u()).tt(this.f17476u.yp());
            c(pluginCSJLoader, cVarC.c());
        }

        private void c(h hVar, com.byazt.dj.tt ttVar) {
            com.byazt.nh.c cVar = new com.byazt.nh.c(null) { // from class: com.byazt.nm.t.c.1
                @Override // com.byazt.nh.c
                public void c(com.byazt.nc.tt ttVar2) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashLoadSuccess 111");
                    if (ttVar2 == null) {
                        c.this.f17475t.notifyLoadFail(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "渲染成功但广告是空"));
                        return;
                    }
                    c.this.f17474i = ttVar2;
                    c.this.setExpressAd(true);
                    c cVar2 = c.this;
                    cVar2.setInteractionType(cVar2.f17474i.getInteractionType());
                    Map<String, Object> mediaExtraInfo = c.this.f17474i.getMediaExtraInfo();
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "PangleSplashLoader WaterfallPangleSplashLoader extraInfo :".concat(String.valueOf(mediaExtraInfo)));
                    if (mediaExtraInfo != null) {
                        c.this.putExtraMsg(mediaExtraInfo);
                    }
                    if (c.this.sl.c() && mediaExtraInfo != null) {
                        double dC = com.byazt.xf.tt.c(mediaExtraInfo.get("price"));
                        com.byazt.eu.tt.c("TTMediationSDK_ECMP", com.byazt.eu.uj.tt(c.this.sl.tt(), c.this.sl.t()) + "pangle Splash 返回的 cpm价格：" + dC);
                        c cVar3 = c.this;
                        if (dC <= 0.0d) {
                            dC = 0.0d;
                        }
                        cVar3.setCpm(dC);
                    }
                    Function function = null;
                    c.this.f17474i.setDownloadListener(new com.byazt.ocd.ve(function) { // from class: com.byazt.nm.t.c.1.1
                        @Override // com.byazt.ocd.ve
                        public void c() {
                            if (c.this.ve != null) {
                                c.this.ve.c();
                            }
                        }

                        @Override // com.byazt.ocd.ve
                        public void tt(long j10, long j11, String str, String str2) {
                            if (c.this.ve != null) {
                                c.this.ve.c(j10, j11, str, str2);
                            }
                        }

                        @Override // com.byazt.ocd.ve
                        public void ve(long j10, long j11, String str, String str2) {
                            if (c.this.ve != null) {
                                c.this.ve.tt(j10, j11, str, str2);
                            }
                        }

                        @Override // com.byazt.ocd.ve
                        public void c(long j10, long j11, String str, String str2) {
                            if (c.this.ve != null) {
                                c.this.ve.c(j10, j11, (int) (j10 != 0 ? j11 / j10 : 0L), -1, str, str2);
                            }
                        }

                        @Override // com.byazt.ocd.ve
                        public void c(long j10, String str, String str2) {
                            if (c.this.ve != null) {
                                c.this.ve.c(j10, str, str2);
                            }
                        }

                        @Override // com.byazt.ocd.ve
                        public void c(String str, String str2) {
                            if (c.this.ve != null) {
                                c.this.ve.c(str, str2);
                            }
                        }
                    });
                    c.this.f17474i.setSplashAdListener(new com.byazt.vw.c(function) { // from class: com.byazt.nm.t.c.1.2
                        @Override // com.byazt.vw.c
                        public void c(com.byazt.nc.tt ttVar3) {
                            com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashAdShow");
                            if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c().n();
                            }
                        }

                        @Override // com.byazt.vw.c
                        public void tt(com.byazt.nc.tt ttVar3) {
                            com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashAdClick");
                            if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c().uj();
                            }
                        }

                        @Override // com.byazt.vw.c
                        public void c(com.byazt.nc.tt ttVar3, int i10) {
                            com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashAdClose closeType = ".concat(String.valueOf(i10)));
                            if (i10 == 1 || i10 == 3) {
                                if (c.this.sp instanceof com.byazt.zq.n) {
                                    c.this.c().c(i10);
                                }
                            } else if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c().tt(i10);
                            }
                        }
                    });
                    c.this.f17474i.setSplashCardListener(new com.byazt.vw.tt(function) { // from class: com.byazt.nm.t.c.1.3
                        @Override // com.byazt.vw.tt
                        public void c(com.byazt.nc.tt ttVar3) {
                            if (ttVar3 != null) {
                                com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashCardReadyToShow csjSplashAd.getSplashCardView()" + ttVar3.getSplashCardView());
                            }
                            if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c();
                            }
                            if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c().c();
                            }
                        }

                        @Override // com.byazt.vw.tt
                        public void tt() {
                            com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashCardClose");
                            if (c.this.sp instanceof com.byazt.zq.n) {
                                c.this.c().k_();
                            }
                        }

                        @Override // com.byazt.vw.tt
                        public void c() {
                            com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashCardClick");
                            try {
                                if (c.this.sp instanceof com.byazt.zq.n) {
                                    c.this.c().l_();
                                }
                            } catch (Throwable th) {
                                m.c(th);
                            }
                        }
                    });
                    c.this.f17475t.notifyLoadSuccess(c.this);
                }

                @Override // com.byazt.nh.c
                @MainThread
                public void tt(com.byazt.nc.tt ttVar2) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashRenderSuccess");
                }

                @Override // com.byazt.nh.c
                @MainThread
                public void c(com.byazt.nc.c cVar2) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashLoadFail");
                    if (cVar2 != null) {
                        c.this.f17475t.notifyLoadFail(new com.byazt.pp.c(cVar2.getCode(), cVar2.getMsg()));
                    } else {
                        c.this.f17475t.notifyLoadFail(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }

                @Override // com.byazt.nh.c
                @MainThread
                public void c(com.byazt.nc.tt ttVar2, com.byazt.nc.c cVar2) {
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "new api onSplashRenderFail");
                    if (cVar2 != null) {
                        c.this.f17475t.notifyLoadFail(new com.byazt.pp.c(cVar2.getCode(), cVar2.getMsg()));
                    } else {
                        c.this.f17475t.notifyLoadFail(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }
            };
            if (hVar != null) {
                hVar.loadSplashAd(ttVar, cVar, t.this.tt);
            }
        }
    }

    public t(com.byazt.db.tt ttVar) {
        super(ttVar);
        this.tt = 3000;
    }

    @Override // com.byazt.sp.tt
    public void startLoad(Context context, com.byazt.dv.tt ttVar, com.byazt.ll.tt ttVar2, Map<String, Object> map) {
        if (ttVar2 == null) {
            notifyLoadFail(new com.byazt.pp.c("load ad fail adSlot is null"));
        } else {
            new c(map).c(context != null ? context.getApplicationContext() : com.byazt.bp.tt.getContext(), ttVar2, ttVar, this);
        }
    }
}
