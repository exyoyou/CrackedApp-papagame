package com.sigmob.sdk.base.mta;

import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntityBase;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.i;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.e;
import com.sigmob.windad.WindAds;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PointEnitySigmobBase extends PointEntityBase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f79518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f79519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f79520c;

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindAds.sharedAds().getAppId();
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return b.b();
    }

    public String getIs_custom_android_id() {
        return this.f79519b;
    }

    public String getIs_custom_imei() {
        return this.f79518a;
    }

    public String getIs_custom_oaid() {
        return this.f79520c;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String getSdkversion() {
        return n.f79584k;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public boolean isAcTypeBlock() {
        if (!i.a().i()) {
            return true;
        }
        List<Integer> listO = o.a().O();
        if (e.a(listO)) {
            return false;
        }
        Iterator<Integer> it2 = listO.iterator();
        while (it2.hasNext()) {
            if (getAc_type().equals(String.valueOf(it2.next()))) {
                SigmobLog.e("black ac type " + getAc_type());
                return true;
            }
        }
        return false;
    }

    public void setIs_custom_android_id(String is_custom_android_id) {
        this.f79519b = is_custom_android_id;
    }

    public void setIs_custom_imei(String is_custom_imei) {
        this.f79518a = is_custom_imei;
    }

    public void setIs_custom_oaid(String is_custom_oaid) {
        this.f79520c = is_custom_oaid;
    }
}
