package com.byazt.db;

import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 734, 15})
public abstract class uj extends com.byazt.yl.ve {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.dv.c f12663i;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f12664x;

    public uj(com.byazt.dv.c cVar) {
        this.f12663i = cVar;
    }

    public static Integer isReadyStatus(Function<SparseArray<Object>, Object> function) {
        Integer numC;
        if (function == null || (numC = com.byazt.sq.c.c(function.apply(com.byazt.yxi.uj.c().c(8121).c(20068, 1).c(Object.class).tt()))) == null) {
            return 1;
        }
        return numC;
    }

    @Override // com.byazt.yl.ve, com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i10 == 8128) {
            this.f12664x = n0.c.a(pluginValueSet.objectValue(8035, n0.a.a()));
        } else if (i10 == 8208) {
            String strStringValue = pluginValueSet.stringValue(8058);
            if (!TextUtils.isEmpty(strStringValue)) {
                setLevelTag(strStringValue);
            }
        } else if (i10 == 8209) {
            setImageMode(pluginValueSet.intValue(8060));
        } else if (i10 == 8140) {
            setInteractionType(pluginValueSet.intValue(8059));
        }
        return (T) callMethod(i10, pluginValueSet, cls);
    }

    @Override // com.byazt.yl.ve
    public void bidLoseNotify(Map<String, Object> map) {
        if (isClientBiddingAd() && this.f12664x != null) {
            this.f12664x.apply(com.byazt.yxi.uj.c().c(8144).c(Void.class).c(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void bidWinNotify(Map<String, Object> map) {
        if (isClientBiddingAd() && this.f12664x != null) {
            this.f12664x.apply(com.byazt.yxi.uj.c().c(8142).c(Void.class).c(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, map).tt());
        }
    }

    public abstract <T> T callMethod(int i10, PluginValueSet pluginValueSet, Class<T> cls);

    @Override // com.byazt.yl.ve
    public long getAdId() {
        if (this.f12664x == null) {
            return super.getAdId();
        }
        Object objApply = this.f12664x.apply(com.byazt.yxi.uj.c().c(8246).c(Long.class).tt());
        if (objApply instanceof Long) {
            return ((Long) objApply).longValue();
        }
        return 0L;
    }

    @Override // com.byazt.yl.ve
    public long getCreativeId() {
        if (this.f12664x == null) {
            return super.getCreativeId();
        }
        Object objApply = this.f12664x.apply(com.byazt.yxi.uj.c().c(8245).c(Long.class).tt());
        if (objApply instanceof Long) {
            return ((Long) objApply).longValue();
        }
        return 0L;
    }

    @Override // com.byazt.yl.ve
    public Map<String, Object> getMediaExtraInfo() {
        if (this.f12664x != null) {
            Object objApply = this.f12664x.apply(com.byazt.yxi.uj.c().c(8239).c(Map.class).tt());
            setMediaExtraInfo(objApply instanceof Map ? (Map) objApply : null);
        }
        return super.getMediaExtraInfo();
    }

    @Override // com.byazt.yl.ve
    public boolean hasDestroyed() {
        if (this.f12664x == null) {
            return false;
        }
        this.f12664x.apply(com.byazt.yxi.uj.c().c(8120).c(Boolean.class).tt());
        return false;
    }

    public boolean isClientBidding() {
        com.byazt.dv.c cVar = this.f12663i;
        if (cVar != null) {
            return cVar.c();
        }
        return false;
    }

    @Override // com.byazt.yl.ve
    public void onDestroy() {
        super.onDestroy();
        if (this.f12664x != null) {
            this.f12664x.apply(com.byazt.yxi.uj.c().c(8109).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void onPause() {
        super.onPause();
        if (this.f12664x != null) {
            this.f12664x.apply(com.byazt.yxi.uj.c().c(8149).c(Void.class).tt());
        }
    }

    @Override // com.byazt.yl.ve
    public void onResume() {
        super.onResume();
        if (this.f12664x != null) {
            this.f12664x.apply(com.byazt.yxi.uj.c().c(8148).c(Void.class).tt());
        }
    }
}
