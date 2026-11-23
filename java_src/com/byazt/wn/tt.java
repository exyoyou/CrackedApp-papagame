package com.byazt.wn;

import android.content.Context;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 58, 13})
public abstract class tt extends com.byazt.sp.tt {
    public static final int CLICK_TIMES = 60;
    public static final int SHOW_TIMES = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f21628a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f21629da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f21630i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, Object> f21631n;
    public com.byazt.ll.tt sl;
    public int sp;
    public com.byazt.ih.ve tt;
    public com.byazt.dv.tt uj;
    public Function<SparseArray<Object>, Object> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f21632x;

    public tt(String str, com.byazt.db.tt ttVar) {
        super(ttVar);
        this.f21631n = new ConcurrentHashMap();
        this.f21628a = false;
        this.sp = 0;
        this.f21632x = 0;
        this.f21629da = str;
    }

    @Override // com.byazt.sp.tt, com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i10 == 8221) {
            this.ve = n0.c.a(pluginValueSet.objectValue(8405, n0.a.a()));
        } else {
            if (i10 == 8137) {
                T t10 = (T) getAdm();
                com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom loader : getAdm = ".concat(String.valueOf(t10)));
                return t10;
            }
            if (i10 == 8224) {
                T t11 = (T) getExtraDataNoParse();
                com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom loader : getExtraDataNoParse = ".concat(String.valueOf(t11)));
                return t11;
            }
            if (i10 == 8226) {
                T t12 = (T) Integer.valueOf(getBiddingType());
                com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom loader : getBiddingType = ".concat(String.valueOf(t12)));
                return t12;
            }
            if (i10 == 8227 && pluginValueSet != null) {
                Map<String, Object> map = (Map) pluginValueSet.objectValue(8075, Map.class);
                com.byazt.eu.tt.tt(MediationConstant.TAG, "Adn custom loader : setExtraInfo map =".concat(String.valueOf(map)));
                setExtraInfo(map);
            }
        }
        return (T) callManager(i10, pluginValueSet, cls);
    }

    public void c(com.byazt.yl.ve veVar, double d10, Map<String, Object> map) {
        if (d10 > 0.0d && getBiddingType() == 1) {
            veVar.setCpm(d10);
        }
        if (map != null) {
            this.f21631n.putAll(map);
        }
        veVar.putExtraMsg(this.f21631n);
        notifyLoadSuccess(veVar);
    }

    public void callLoaderFail(int i10, String str) {
        notifyLoadFail(new com.byazt.pp.c(i10, str));
    }

    public abstract <T> T callManager(int i10, PluginValueSet pluginValueSet, Class<T> cls);

    public final void checkClick(com.byazt.ylx.c.InterfaceC0493c interfaceC0493c) {
        int i10 = this.f21632x;
        if (i10 >= 60) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.f21632x = i10 + 1;
        if (interfaceC0493c != null) {
            interfaceC0493c.c();
        }
    }

    public final void checkLoadSuccess(com.byazt.ylx.c.InterfaceC0493c interfaceC0493c) {
        if (!hasNotifySuccess()) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter 调用错误需要在load成功之后才可以调用");
        } else if (interfaceC0493c != null) {
            interfaceC0493c.c();
        }
    }

    public final void checkShow(com.byazt.ylx.c.InterfaceC0493c interfaceC0493c) {
        if (!this.f21628a) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i10 = this.sp;
        if (i10 >= 2) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.sp = i10 + 1;
        if (interfaceC0493c != null) {
            interfaceC0493c.c();
        }
    }

    public String getAdm() {
        com.byazt.dv.tt ttVar = this.uj;
        return ttVar != null ? ttVar.zm() : "";
    }

    public int getBiddingType() {
        com.byazt.dv.tt ttVar = this.uj;
        if (ttVar != null) {
            return ttVar.my();
        }
        return 0;
    }

    public Object getExtraDataNoParse() {
        com.byazt.dv.tt ttVar = this.uj;
        return ttVar != null ? ttVar.qp() : "";
    }

    @Override // com.byazt.db.c
    public String getSdkVersion(String str) {
        return this.f21630i;
    }

    public Integer isReadyStatus() {
        if (this.ve == null) {
            return 1;
        }
        Integer numC = com.byazt.sq.c.c(this.ve.apply(com.byazt.yxi.uj.c().c(8121).c(Object.class).c(20068, 1).tt()));
        if (numC == null) {
            return 1;
        }
        return numC;
    }

    public void mediationCallShow() {
        this.f21628a = true;
    }

    @Override // com.byazt.sp.tt
    public void notifyLoadSuccess(com.byazt.yl.ve veVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(veVar);
        notifyLoadSuccess(arrayList);
    }

    public void onDestroy() {
        if (this.ve != null) {
            this.ve.apply(com.byazt.yxi.uj.c().c(8109).c(Void.class).tt());
        }
    }

    public void onPause() {
        if (this.ve != null) {
            this.ve.apply(com.byazt.yxi.uj.c().c(8149).c(Void.class).tt());
        }
    }

    public void onResume() {
        if (this.ve != null) {
            this.ve.apply(com.byazt.yxi.uj.c().c(8148).c(Void.class).tt());
        }
    }

    public void receiveBidResult(boolean z10, double d10, int i10, Map<String, Object> map) {
        if (this.ve != null) {
            this.ve.apply(com.byazt.yxi.uj.c().c(8225).c(Void.class).c(8406, Boolean.valueOf(z10)).c(8407, Double.valueOf(d10)).c(8408, Integer.valueOf(i10)).c(8075, map).tt());
        }
    }

    public void setExtraInfo(Map<String, Object> map) {
        if (map != null) {
            this.f21631n.clear();
            this.f21631n.putAll(map);
        }
    }

    @Override // com.byazt.sp.tt
    public final void startLoad(Context context, com.byazt.dv.tt ttVar, com.byazt.ll.tt ttVar2, Map<String, Object> map) {
        this.uj = ttVar;
        this.sl = ttVar2;
        this.tt = new com.byazt.ih.ve(ttVar.qy(), ttVar.t(), ttVar.yp(), ttVar.z(), ttVar.cu());
        com.byazt.id.c cVarC = com.byazt.px.c.c(ttVar.u());
        this.f21630i = cVarC != null ? cVarC.getNetworkSdkVersion() : "";
        com.byazt.yxi.uj ujVarC = com.byazt.yxi.uj.c();
        ujVarC.c(AVMDLDataLoader.KeyIsLiveMobileDownloadAllow, this);
        if (com.byazt.tjo.tt.c() >= 5900) {
            ujVarC.c(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, com.byazt.eu.c.c(context));
        } else {
            ujVarC.c(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
        }
        ujVarC.c(AVMDLDataLoader.KeyIsLiveMobileUploadAllow, this.f21629da);
        ujVarC.c(8546, com.byazt.lq.uj.c(this.tt.c()));
        if (ttVar2.qp() != null) {
            ujVarC.c(8548, com.byazt.lq.uj.c(ttVar2.qp()));
        }
        Function<SparseArray<Object>, Object> functionA = com.byazt.vq.c.c().a();
        if (functionA == null) {
            notifyLoadFail(new com.byazt.pp.c("Adn custom class loader is null"));
            return;
        }
        ujVarC.c(Void.class);
        ujVarC.c(8106);
        functionA.apply(ujVarC.tt());
    }

    @Override // com.byazt.sp.tt, com.byazt.db.tt
    public void notifyLoadSuccess(List<com.byazt.yl.ve> list) {
        for (com.byazt.yl.ve veVar : list) {
            veVar.setMediaExtraInfo(this.f21631n);
            veVar.setAdType(this.uj.yv());
        }
        super.notifyLoadSuccess(list);
    }
}
