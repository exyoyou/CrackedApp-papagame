package com.byazt.wn;

import com.byazt.uj.da;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 58, 71})
public class x extends tt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.uj.ve f21633i;

    public x(String str, com.byazt.db.tt ttVar) {
        super(str, ttVar);
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
        da daVar = new da(this, ((tt) this).ve);
        this.f21633i = daVar;
        c(daVar, d10, map);
    }

    @Override // com.byazt.wn.tt
    public <T> T callManager(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        double dDoubleValue;
        Map<String, Object> map;
        if (i10 == 8123) {
            int iIntValue = pluginValueSet.intValue(8014);
            String strStringValue = pluginValueSet.stringValue(8015);
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callLoaderFail  code:" + iIntValue + " msg:" + strStringValue);
            callLoaderFail(iIntValue, strStringValue);
        } else if (i10 == 8107) {
            if (pluginValueSet != null) {
                dDoubleValue = pluginValueSet.doubleValue(8409);
                map = (Map) pluginValueSet.objectValue(8075, Map.class);
            } else {
                dDoubleValue = 0.0d;
                map = null;
            }
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callLoadSucceed price:" + dDoubleValue + " mextraMsg:" + map);
            callLoadSucceed(dDoubleValue, map);
        } else if (i10 == 1009) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callSplashAdClicked");
            callSplashAdClicked();
        } else if (i10 == 1008) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callSplashAdShow");
            callSplashAdShow();
        } else if (i10 == 1019) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callSplashAdSkip");
            callSplashAdSkip();
        } else if (i10 == 1011) {
            com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom splash loader : callSplashAdDismiss");
            callSplashAdDismiss();
        }
        return null;
    }

    public void callSplashAdClicked() {
        if (this.f21633i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.1
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    x.this.checkClick(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.1.1
                        @Override // com.byazt.ylx.c.InterfaceC0493c
                        public void c() {
                            com.byazt.ko.tt ttVar = (com.byazt.ko.tt) x.this.f21633i.getTTAdatperCallback();
                            if (ttVar != null) {
                                ttVar.uj();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callSplashAdDismiss() {
        if (this.f21633i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.4
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.ko.tt ttVar = (com.byazt.ko.tt) x.this.f21633i.getTTAdatperCallback();
                    if (ttVar != null) {
                        ttVar.tt(2);
                    }
                }
            });
        }
    }

    public void callSplashAdShow() {
        if (this.f21633i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.2
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    x.this.checkShow(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.2.1
                        @Override // com.byazt.ylx.c.InterfaceC0493c
                        public void c() {
                            com.byazt.ko.tt ttVar = (com.byazt.ko.tt) x.this.f21633i.getTTAdatperCallback();
                            if (ttVar != null) {
                                ttVar.n();
                            }
                        }
                    });
                }
            });
        }
    }

    public void callSplashAdSkip() {
        if (this.f21633i != null) {
            checkLoadSuccess(new com.byazt.ylx.c.InterfaceC0493c() { // from class: com.byazt.wn.x.3
                @Override // com.byazt.ylx.c.InterfaceC0493c
                public void c() {
                    com.byazt.ko.tt ttVar = (com.byazt.ko.tt) x.this.f21633i.getTTAdatperCallback();
                    if (ttVar != null) {
                        ttVar.c(1);
                    }
                }
            });
        }
    }
}
