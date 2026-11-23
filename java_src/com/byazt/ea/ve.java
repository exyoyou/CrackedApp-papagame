package com.byazt.ea;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 915, 54})
public class ve extends MediationNativeAdAppInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function<SparseArray<Object>, Object> f13285c;

    public ve(Function<SparseArray<Object>, Object> function) {
        this.f13285c = function == null ? com.byazt.rl.ve.ve : function;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public Map<String, Object> getAppInfoExtra() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271042);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getAppName() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271035);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getAuthorName() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271036);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getFunctionDescUrl() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271047);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public long getPackageSizeBytes() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271037);
        sparseArray.put(-99999985, Long.TYPE);
        return ((Long) this.f13285c.apply(sparseArray)).longValue();
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public Map<String, String> getPermissionsMap() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271039);
        sparseArray.put(-99999985, Map.class);
        return (Map) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getPermissionsUrl() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271038);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getPrivacyAgreement() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271040);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getRegUrl() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271051);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.MediationNativeAdAppInfo
    public String getVersionName() {
        SparseArray sparseArray = new SparseArray(1);
        sparseArray.put(-99999987, 271041);
        sparseArray.put(-99999985, String.class);
        return (String) this.f13285c.apply(sparseArray);
    }
}
