package com.byazt.wn;

import android.view.View;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 58, 20})
public class c extends tt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.uj.ve f21599i;

    public c(String str, com.byazt.db.tt ttVar) {
        super(str, ttVar);
    }

    public void callBannerAdClicked() {
        if (this.f21599i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.c.2
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    c.this.checkClick(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.c.2.1
                        @Override // com.byazt.ylx.c.InterfaceC0493c
                        public void c() {
                            com.byazt.oc.c cVar = (com.byazt.oc.c) c.this.f21599i.getTTAdatperCallback();
                            if (cVar != null) {
                                cVar.c((View) null);
                            }
                        }
                    });
                }
            });
        }
    }

    public void callBannerAdClosed() {
        if (this.f21599i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.c.3
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.oc.c cVar = (com.byazt.oc.c) c.this.f21599i.getTTAdatperCallback();
                    if (cVar != null) {
                        cVar.c();
                    }
                }
            });
        }
    }

    public void callBannerAdShow() {
        if (this.f21599i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.c.1
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.oc.c cVar = (com.byazt.oc.c) c.this.f21599i.getTTAdatperCallback();
                    if (cVar != null) {
                        cVar.tt(null);
                    }
                }
            });
        }
    }

    public void callLoadFail(com.byazt.zm.c cVar) {
        if (hasNotifyFail()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
        } else {
            notifyLoadFail(new com.byazt.pp.c(49004, com.byazt.pp.c.c(49004), cVar == null ? -1 : cVar.c(), cVar == null ? "" : cVar.tt()));
        }
    }

    public void callLoadSucceed(double d10, Map<String, Object> map) {
        if (hasNotifySuccess()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter callLoadSuccess");
        com.byazt.uj.tt ttVar = new com.byazt.uj.tt(this, ((tt) this).ve);
        this.f21599i = ttVar;
        ttVar.setMediaExtraInfo(this.f21631n);
        this.f21599i.setAdType(this.uj.yv());
        if (d10 > 0.0d && getBiddingType() == 1) {
            this.f21599i.setCpm(d10);
        }
        if (map != null) {
            this.f21631n.putAll(map);
        }
        this.f21599i.putExtraMsg(this.f21631n);
        notifyLoadSuccess(this.f21599i);
    }

    @Override // com.byazt.wn.tt
    public <T> T callManager(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i10 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom banner loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i10 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom banner loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i10 == 1008) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom banner loader : callBannerAdShow");
            callBannerAdShow();
        } else if (i10 == 1009) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom banner loader : callBannerAdClick");
            callBannerAdClicked();
        } else if (i10 == 1014) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom banner loader : callBannerAdClosed");
            callBannerAdClosed();
        }
        return null;
    }
}
