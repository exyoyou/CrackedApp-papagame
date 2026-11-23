package com.byazt.nm;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.byazt.omf.h;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 585, 34})
public class a extends tt {
    public static final String TAG = "PangleFullVideoAdapter";

    @com.byazt.zqa.c(c = {0, 1, 585, 464})
    class c extends com.byazt.yl.ve {

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public com.byazt.nc.sl f17414da;
        public boolean sl;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f17416t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public com.byazt.dv.tt f17417u;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public com.byazt.nh.uj f17418x = new com.byazt.nh.uj(null) { // from class: com.byazt.nm.a.c.1
            @Override // com.byazt.nh.uj
            public void c(int i10, String str) {
                c.this.sl = false;
                c.this.yp.notifyLoadFail(new com.byazt.pp.c(i10, str));
            }

            @Override // com.byazt.nh.uj
            public void tt(com.byazt.nc.sl slVar) {
                com.byazt.eu.tt.c("TMe", "pangle full cached 2");
                c.this.sl = true;
                c.this.yp.notifyVideoCache(c.this, (com.byazt.pp.c) null);
            }

            @Override // com.byazt.nh.uj
            public void c(com.byazt.nc.sl slVar) {
                if (slVar != null) {
                    c.this.f17414da = slVar;
                    c.this.setExpressAd(true);
                    c cVar = c.this;
                    cVar.setInteractionType(cVar.f17414da.getInteractionType());
                    Map<String, Object> mediaExtraInfo = c.this.f17414da.getMediaExtraInfo();
                    com.byazt.eu.tt.uj(MediationConstant.TAG, "PangleFullVideoLoader WaterfallPangleFullVideoLoader extraInfo :".concat(String.valueOf(mediaExtraInfo)));
                    if (c.this.f17417u.c() && mediaExtraInfo != null) {
                        double dC = com.byazt.xf.tt.c(mediaExtraInfo.get("price"));
                        com.byazt.eu.tt.c("TTMediationSDK_ECMP", com.byazt.eu.uj.tt(c.this.f17417u.tt(), c.this.f17417u.t()) + "pangle 全屏 返回的 cpm价格：" + dC);
                        c cVar2 = c.this;
                        if (dC <= 0.0d) {
                            dC = 0.0d;
                        }
                        cVar2.setCpm(dC);
                    }
                    if (mediaExtraInfo != null) {
                        c.this.putExtraMsg(mediaExtraInfo);
                        Object obj = mediaExtraInfo.get("materialMetaIsFromPreload");
                        if (obj instanceof Boolean) {
                            c.this.f17416t = ((Boolean) obj).booleanValue();
                            com.byazt.eu.tt.c(MediationConstant.TAG, "pangle 全屏 返回的adnPreload：" + c.this.f17416t);
                        }
                    }
                    Function function = null;
                    c.this.f17414da.setDownloadListener(new com.byazt.ocd.ve(function) { // from class: com.byazt.nm.a.c.1.1
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
                    c.this.f17414da.setFullScreenVideoAdInteractionListener(new com.byazt.gl.c(function) { // from class: com.byazt.nm.a.c.1.2
                        @Override // com.byazt.gl.c
                        public void c(Bundle bundle) {
                            if (c.this.sp instanceof com.byazt.zq.tt) {
                                c.this.c().c();
                            }
                        }

                        @Override // com.byazt.gl.c
                        public void tt() {
                            if (c.this.sp instanceof com.byazt.zq.tt) {
                                c.this.c().h_();
                            }
                        }

                        @Override // com.byazt.gl.c
                        public void uj() {
                            if (c.this.sp instanceof com.byazt.zq.tt) {
                                c.this.c().a();
                            }
                        }

                        @Override // com.byazt.gl.c
                        public void ve() {
                            if (c.this.sp instanceof com.byazt.zq.tt) {
                                c.this.c().uj();
                            }
                        }

                        @Override // com.byazt.gl.c
                        public void c() {
                            if (c.this.sp instanceof com.byazt.zq.tt) {
                                c.this.c().g_();
                            }
                        }
                    });
                    c.this.sl = true;
                    c.this.yp.notifyLoadSuccess(c.this);
                    return;
                }
                c.this.yp.notifyLoadFail(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "请求成功，但无广告可用"));
            }

            @Override // com.byazt.nh.uj
            public void c() {
                com.byazt.eu.tt.c("TMe", "pangle full cached");
            }
        };
        public com.byazt.sp.tt yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public com.byazt.ll.tt f17419z;

        public c() {
        }

        @Override // com.byazt.yl.ve
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.byazt.yl.ve
        public long getAdId() {
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar != null) {
                return com.byazt.xf.tt.tt(slVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public long getCreativeId() {
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar != null) {
                return com.byazt.xf.tt.c(slVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar == null || (mediaExtraInfo = slVar.getMediaExtraInfo()) == null) {
                return null;
            }
            HashMap map = new HashMap();
            map.put(PayCenterOrderRequest.PAY_TYPE_COUPON, mediaExtraInfo.get(PayCenterOrderRequest.PAY_TYPE_COUPON));
            map.put("live_room", mediaExtraInfo.get("live_room"));
            map.put("product", mediaExtraInfo.get("product"));
            setMediaExtraInfo(map);
            return super.getMediaExtraInfo();
        }

        @Override // com.byazt.yl.ve
        public String getReqId() {
            com.byazt.nc.sl slVar = this.f17414da;
            return slVar != null ? com.byazt.xf.tt.ve(slVar.getMediaExtraInfo()) : "";
        }

        @Override // com.byazt.yl.ve
        public boolean hasDestroyed() {
            return this.f17414da == null;
        }

        @Override // com.byazt.yl.ve
        public boolean isAdnPreload() {
            return this.f17416t;
        }

        @Override // com.byazt.yl.ve
        public Integer isReadyStatus() {
            com.byazt.nc.sl slVar = this.f17414da;
            return (slVar == null || slVar.getExpirationTimestamp() <= System.currentTimeMillis()) ? 3 : 2;
        }

        public void loadAd(Context context, com.byazt.ll.tt ttVar, com.byazt.dv.tt ttVar2, com.byazt.sp.tt ttVar3) {
            this.f17417u = ttVar2;
            this.yp = ttVar3;
            this.f17419z = ttVar;
            h pluginCSJLoader = a.this.getPluginCSJLoader(context);
            if (pluginCSJLoader == null) {
                return;
            }
            com.byazt.dj.tt.c cVarC = com.byazt.xf.tt.c(this.f17419z, this.f17417u, false);
            cVarC.c(1080).tt(1920).uj(this.f17419z.d());
            pluginCSJLoader.loadFullScreenVideoAd(cVarC.c(), this.f17418x);
        }

        @Override // com.byazt.yl.ve
        public void onDestroy() {
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar != null) {
                slVar.setFullScreenVideoAdInteractionListener(null);
                this.f17414da.setDownloadListener(null);
                this.f17414da.setAdInteractionListener(null);
                this.f17414da = null;
            }
        }

        @Override // com.byazt.yl.ve
        public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar != null) {
                slVar.setAdInteractionListener(ttVar);
            }
        }

        @Override // com.byazt.yl.ve
        public void showAd(Activity activity, Object obj, String str) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "PangleFullVideoLoader WaterfallPangleFullVideoLoader showAd ritScenes:" + obj + "  ritScenesContent: " + str + "  mTTFullScreenVideoAd:" + this.f17414da + "  activity:" + activity);
            com.byazt.nc.sl slVar = this.f17414da;
            if (slVar != null) {
                if (obj != null) {
                    slVar.showFullScreenVideoAd(activity, obj, str);
                } else {
                    slVar.showFullScreenVideoAd(activity);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.byazt.zq.tt c() {
            return (com.byazt.zq.tt) this.sp;
        }
    }

    public a(com.byazt.db.tt ttVar) {
        super(ttVar);
    }

    @Override // com.byazt.sp.tt
    public void startLoad(Context context, com.byazt.dv.tt ttVar, com.byazt.ll.tt ttVar2, Map<String, Object> map) {
        if (ttVar2 == null) {
            notifyLoadFail(new com.byazt.pp.c("load ad fail adSlot is null"));
        } else {
            new c().loadAd(context.getApplicationContext(), ttVar2, ttVar, this);
        }
    }
}
