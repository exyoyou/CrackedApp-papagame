package com.byazt.nm;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.byazt.nc.yp;
import com.byazt.omf.h;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 585, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17453c;

    @com.byazt.zqa.c(c = {0, 1, 585, 64})
    class c extends com.byazt.yl.ve {

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public com.byazt.ft.ve f17455da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public com.byazt.ft.tt f17456i;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public volatile boolean f17457t = false;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public yp f17458x;

        public c(yp ypVar) {
            Map<String, Object> mediaExtraInfo;
            Function function = null;
            this.f17456i = new com.byazt.ft.tt(function) { // from class: com.byazt.nm.i.c.2
                @Override // com.byazt.ft.tt
                public void c(View view, int i10) {
                    if (c.this.f22291c != null) {
                        c.this.f22291c.c(view);
                    }
                }

                @Override // com.byazt.ft.tt
                public void tt(View view, int i10) {
                    if (c.this.f22291c != null) {
                        c.this.f22291c.c();
                    }
                }

                @Override // com.byazt.ft.tt
                public void c(View view, String str, int i10) {
                    if (c.this.f22291c instanceof com.byazt.me.a) {
                        ((com.byazt.me.a) c.this.f22291c).c(view, str, i10);
                    }
                }

                @Override // com.byazt.ft.tt
                public void c(View view, float f10, float f11) {
                    if (c.this.f22291c instanceof com.byazt.me.a) {
                        ((com.byazt.me.a) c.this.f22291c).c(f10, f11);
                    }
                }
            };
            this.f17455da = new com.byazt.ft.ve(function) { // from class: com.byazt.nm.i.c.3
                @Override // com.byazt.ft.ve
                public void c() {
                    if (c.this.tt != null) {
                        c.this.tt.c();
                    }
                }

                @Override // com.byazt.ft.ve
                public void n() {
                    if (c.this.tt != null) {
                        c.this.tt.n();
                    }
                }

                @Override // com.byazt.ft.ve
                public void tt() {
                    if (c.this.tt != null) {
                        c.this.tt.tt();
                    }
                }

                @Override // com.byazt.ft.ve
                public void uj() {
                    if (c.this.tt != null) {
                        c.this.tt.uj();
                    }
                }

                @Override // com.byazt.ft.ve
                public void ve() {
                    if (c.this.tt != null) {
                        c.this.tt.ve();
                    }
                }

                @Override // com.byazt.ft.ve
                public void c(int i10, int i11) {
                    if (c.this.tt != null) {
                        c.this.tt.c(new com.byazt.pp.c(i10, "MediaPlayer inter error code:".concat(String.valueOf(i11))));
                    }
                }

                @Override // com.byazt.ft.ve
                public void c(long j10, long j11) {
                    if (c.this.tt != null) {
                        c.this.tt.c(j10, j11);
                    }
                }
            };
            this.f17458x = ypVar;
            setImageMode(ypVar.getImageMode());
            setInteractionType(this.f17458x.getInteractionType());
            setExpressAd(true);
            if (i.this.f17453c && (mediaExtraInfo = ypVar.getMediaExtraInfo()) != null) {
                double dC = com.byazt.xf.tt.c(mediaExtraInfo.get("price"));
                com.byazt.eu.tt.c("TTMediationSDK_ECMP", "pangle 模板native 返回的 cpm价格：".concat(String.valueOf(dC)));
                setCpm(dC <= 0.0d ? 0.0d : dC);
            }
            putExtraMsg(MediationConstant.EXTRA_ADID, Long.valueOf(getAdId()));
            putExtraMsg(MediationConstant.EXTRA_CID, Long.valueOf(getCreativeId()));
            Map<String, Object> mediaExtraInfo2 = this.f17458x.getMediaExtraInfo();
            if (mediaExtraInfo2 != null) {
                putExtraMsg(mediaExtraInfo2);
                putExtraMsg("log_extra", mediaExtraInfo2.toString());
            }
            this.f17458x.setExpressInteractionListener(this.f17456i);
            this.f17458x.setVideoAdListener(this.f17455da);
        }

        @Override // com.byazt.yl.ve
        public long getAdId() {
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                return com.byazt.xf.tt.tt(ypVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public View getAdView() {
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                return ypVar.getExpressAdView();
            }
            return null;
        }

        @Override // com.byazt.yl.ve
        public long getCreativeId() {
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                return com.byazt.xf.tt.c(ypVar.getMediaExtraInfo());
            }
            return 0L;
        }

        @Override // com.byazt.yl.ve
        public com.byazt.nc.sp getDislikeDialog(Activity activity) {
            yp ypVar = this.f17458x;
            return ypVar != null ? ypVar.getDislikeDialog(activity) : super.getDislikeDialog(activity);
        }

        @Override // com.byazt.yl.ve
        public com.byazt.nc.uj getDislikeInfo() {
            yp ypVar = this.f17458x;
            return ypVar != null ? ypVar.getDislikeInfo() : super.getDislikeInfo();
        }

        @Override // com.byazt.yl.ve
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            yp ypVar = this.f17458x;
            if (ypVar == null || (mediaExtraInfo = ypVar.getMediaExtraInfo()) == null) {
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
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                return com.byazt.xf.tt.ve(ypVar.getMediaExtraInfo());
            }
            return null;
        }

        @Override // com.byazt.yl.ve
        public boolean hasDestroyed() {
            return this.f17457t;
        }

        @Override // com.byazt.yl.ve
        public boolean hasDislike() {
            return true;
        }

        @Override // com.byazt.yl.ve
        public void onDestroy() {
            this.f17457t = true;
            com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.nm.i.c.1
                @Override // java.lang.Runnable
                public void run() {
                    yp ypVar = c.this.f17458x;
                    if (ypVar != null) {
                        ypVar.destroy();
                    }
                }
            });
        }

        @Override // com.byazt.yl.ve
        public void render() {
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                ypVar.render();
            }
        }

        @Override // com.byazt.yl.ve
        public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
            yp ypVar = this.f17458x;
            if (ypVar != null) {
                ypVar.setAdInteractionListener(ttVar);
            }
        }

        @Override // com.byazt.yl.ve
        public void setDislikeCallback(Activity activity, com.byazt.dhf.c cVar) {
            if (this.f17458x != null) {
                com.byazt.eu.tt.tt(MediationConstant.TAG, "pangle native express:  activity = " + activity + " pluginDislikeInteractionCallback:" + cVar);
                this.f17458x.setDislikeCallback(activity, cVar);
            }
        }

        @Override // com.byazt.yl.ve
        public void setDislikeDialog(Dialog dialog, Integer[] numArr) {
            if (this.f17458x != null) {
                com.byazt.eu.tt.tt(MediationConstant.TAG, "pangle native express:  ttDislikeDialogAbstract = ".concat(String.valueOf(dialog)));
                this.f17458x.setDislikeDialog(dialog, numArr);
            }
        }

        @Override // com.byazt.yl.ve
        public void uploadDislikeEvent(String str) {
            if (this.f17458x != null) {
                com.byazt.eu.tt.tt(MediationConstant.TAG, "pangle native express: uploadDislikeEvent event = ".concat(String.valueOf(str)));
                this.f17458x.uploadDislikeEvent(str);
            }
        }
    }

    public void c(boolean z10, h hVar, com.byazt.dj.tt ttVar, final com.byazt.sp.tt ttVar2) {
        if (hVar == null || ttVar2 == null) {
            return;
        }
        this.f17453c = z10;
        hVar.loadNativeExpressAd(ttVar, new com.byazt.nh.a(null) { // from class: com.byazt.nm.i.1
            @Override // com.byazt.nh.a
            public void c(int i10, String str) {
                ttVar2.notifyLoadFail(new com.byazt.pp.c(i10, str));
            }

            @Override // com.byazt.nh.a
            public void c(List<yp> list) {
                if (list == null || list.size() == 0) {
                    ttVar2.notifyLoadFail(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "load成功但返回广告是空"));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (yp ypVar : list) {
                    if (ypVar != null) {
                        arrayList.add(i.this.new c(ypVar));
                    }
                }
                ttVar2.notifyLoadSuccess(arrayList);
            }
        });
    }
}
