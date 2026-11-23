package com.windmill.sdk.point;

import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntitySuper;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.c;
import com.windmill.sdk.strategy.WMSdkConfig;
import com.windmill.sdk.utils.d;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class PointEntityWMActive extends PointEntitySuper {
    private String active_id;
    private String duration;

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindMillAd.sharedAds().getAppId();
    }

    public String getActive_id() {
        return this.active_id;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return d.a().b();
    }

    public String getDuration() {
        return this.duration;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String getSdkversion() {
        return WMConstants.SDK_VERSION;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public boolean isAcTypeBlock() {
        if (!c.b()) {
            return true;
        }
        Iterator<Integer> it2 = WMSdkConfig.sharedInstance().getLogBlackList().iterator();
        while (it2.hasNext()) {
            if (getAc_type().equals(String.valueOf(it2.next()))) {
                WMLogUtil.e("block ac type " + getAc_type());
                return true;
            }
        }
        return false;
    }

    public void setActive_id(String active_id) {
        this.active_id = active_id;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}
