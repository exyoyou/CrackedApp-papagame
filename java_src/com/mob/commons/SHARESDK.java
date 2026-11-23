package com.mob.commons;

import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.d;

/* JADX INFO: loaded from: classes2.dex */
public class SHARESDK implements MobProduct {
    private void initBusiness() {
        try {
            d.a();
        } catch (Throwable unused) {
        }
    }

    @Override // cn.fly.commons.FlyProduct
    public String getProductTag() {
        initBusiness();
        return ShareSDK.SDK_TAG;
    }

    @Override // cn.fly.commons.FlyProduct
    public int getSdkver() {
        initBusiness();
        return ShareSDK.SDK_VERSION_CODE;
    }
}
