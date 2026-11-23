package com.byazt.wn;

import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 58, 34})
public class a extends tt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.uj.ve f21591i;

    public a(String str, com.byazt.db.tt ttVar) {
        super(str, ttVar);
    }

    public void callInterstitialAdClick() {
        if (this.f21591i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.2
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    a.this.checkClick(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.2.1
                        @Override // com.byazt.ylx.c.InterfaceC0493c
                        public void c() {
                            com.byazt.xu.c cVar = (com.byazt.xu.c) a.this.f21591i.getTTAdatperCallback();
                            if (cVar != null) {
                                cVar.tt();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callInterstitialAdLeftApplication() {
        if (this.f21591i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.5
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.xu.c cVar = (com.byazt.xu.c) a.this.f21591i.getTTAdatperCallback();
                    if (cVar != null) {
                        cVar.n();
                    }
                }
            });
        }
    }

    public void callInterstitialAdOpened() {
        if (this.f21591i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.4
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.xu.c cVar = (com.byazt.xu.c) a.this.f21591i.getTTAdatperCallback();
                    if (cVar != null) {
                        cVar.uj();
                    }
                }
            });
        }
    }

    public void callInterstitialClosed() {
        if (this.f21591i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.3
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.xu.c cVar = (com.byazt.xu.c) a.this.f21591i.getTTAdatperCallback();
                    if (cVar != null) {
                        cVar.ve();
                    }
                }
            });
        }
    }

    public void callInterstitialShow() {
        if (this.f21591i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.1
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    a.this.checkShow(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.a.1.1
                        @Override // com.byazt.ylx.c.InterfaceC0493c
                        public void c() {
                            com.byazt.xu.c cVar = (com.byazt.xu.c) a.this.f21591i.getTTAdatperCallback();
                            if (cVar != null) {
                                cVar.c();
                            }
                        }
                    });
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
        com.byazt.uj.sp spVar = new com.byazt.uj.sp(this, ((tt) this).ve);
        this.f21591i = spVar;
        c(spVar, d10, map);
    }

    @Override // com.byazt.wn.tt
    public <T> T callManager(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i10 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i10 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i10 == 1008) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialShow");
            callInterstitialShow();
        } else if (i10 == 1009) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdClick");
            callInterstitialAdClick();
        } else if (i10 == 1014) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialClosed");
            callInterstitialClosed();
        } else if (i10 == 1015) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdOpened");
            callInterstitialAdOpened();
        } else if (i10 == 1016) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom interstitial loader : callInterstitialAdLeftApplication");
            callInterstitialAdLeftApplication();
        }
        return null;
    }
}
