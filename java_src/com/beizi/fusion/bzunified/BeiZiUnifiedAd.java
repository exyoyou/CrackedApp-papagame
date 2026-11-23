package com.beizi.fusion.bzunified;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.c.f;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BeiZiUnifiedAd {
    private f mBeiZiUnifiedManager;
    private String mSpaceId;
    private int mTimeout;

    public BeiZiUnifiedAd(Context context, BeiZiUnifiedAdRequestParameters beiZiUnifiedAdRequestParameters, BeiZiUnifiedAdListener beiZiUnifiedAdListener) {
        this.mSpaceId = null;
        this.mTimeout = 5000;
        if (beiZiUnifiedAdRequestParameters != null) {
            this.mSpaceId = beiZiUnifiedAdRequestParameters.getSpaceId();
            this.mTimeout = beiZiUnifiedAdRequestParameters.getTimeout();
        }
        this.mBeiZiUnifiedManager = new f(context, this.mSpaceId, this.mTimeout, beiZiUnifiedAdListener);
    }

    public void destroy() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null) {
            return;
        }
        fVar.F();
    }

    public String getCustomExtraData() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null) {
            return null;
        }
        return fVar.y();
    }

    public String getCustomExtraJsonData() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null) {
            return null;
        }
        return fVar.A();
    }

    public boolean isLoaded() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar != null) {
            return fVar.c();
        }
        return false;
    }

    public boolean isValid() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null) {
            return false;
        }
        return fVar.E();
    }

    public void loadAd() {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar != null) {
            fVar.b();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null || map == null) {
            return;
        }
        fVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null || map == null) {
            return;
        }
        fVar.a(map);
    }

    public void setBidResponse(String str) {
        if (this.mBeiZiUnifiedManager == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mBeiZiUnifiedManager.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        f fVar = this.mBeiZiUnifiedManager;
        if (fVar == null) {
            return;
        }
        fVar.c(map);
    }
}
