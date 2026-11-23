package com.windmill.sdk.point;

import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntityCrash;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.c;
import com.windmill.sdk.strategy.WMSdkConfig;
import com.windmill.sdk.utils.d;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class PointEntityWMCrash extends PointEntityCrash {
    public static PointEntityWMCrash NDKCrash(String crash) {
        PointEntityWMCrash pointEntityWMCrash = new PointEntityWMCrash();
        pointEntityWMCrash.setAc_type(PointType.NDK_CRASH);
        pointEntityWMCrash.setCategory("crash");
        pointEntityWMCrash.setCrashTime(System.currentTimeMillis());
        pointEntityWMCrash.setCrashMessage(crash);
        return pointEntityWMCrash;
    }

    public static PointEntityWMCrash WindCrash(String crash) {
        PointEntityWMCrash pointEntityWMCrash = new PointEntityWMCrash();
        pointEntityWMCrash.setAc_type("402");
        pointEntityWMCrash.setCategory("crash");
        pointEntityWMCrash.setCrashTime(System.currentTimeMillis());
        pointEntityWMCrash.setCrashMessage(crash);
        return pointEntityWMCrash;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindMillAd.sharedAds().getAppId();
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return d.a().b();
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
}
