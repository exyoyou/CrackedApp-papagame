package com.sigmob.sdk.base.mta;

import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntityCrash;
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
public class PointEntitySigmobCrash extends PointEntityCrash {
    public static PointEntitySigmobCrash WindCrash(String crash) {
        PointEntitySigmobCrash pointEntitySigmobCrash = new PointEntitySigmobCrash();
        pointEntitySigmobCrash.setAc_type("402");
        pointEntitySigmobCrash.setCategory("crash");
        pointEntitySigmobCrash.setCrashMessage(crash);
        return pointEntitySigmobCrash;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindAds.sharedAds().getAppId();
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return b.b();
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
}
