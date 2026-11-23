package com.beizi.fusion.unified;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.c.d;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BZUnifiedAd {
    private int mAdType;
    private d mBZUnifiedManager;
    private String mSpaceId;
    private int mTimeout;

    public BZUnifiedAd(Context context, BZBZUnifiedAdRequestParameters bZBZUnifiedAdRequestParameters, BZUnifiedAdListener bZUnifiedAdListener) {
        this.mSpaceId = null;
        this.mTimeout = 5000;
        this.mAdType = 0;
        if (bZBZUnifiedAdRequestParameters != null) {
            this.mSpaceId = bZBZUnifiedAdRequestParameters.getSpaceId();
            this.mTimeout = bZBZUnifiedAdRequestParameters.getTimeout();
            this.mAdType = bZBZUnifiedAdRequestParameters.getAdType();
        }
        this.mBZUnifiedManager = new d(context, this.mSpaceId, this.mTimeout, this.mAdType, bZUnifiedAdListener);
    }

    public void adsInteractiveActions(BZUnifiedAdActionData bZUnifiedAdActionData) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return;
        }
        dVar.a(bZUnifiedAdActionData);
    }

    public void destroy() {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return;
        }
        dVar.c();
    }

    public String getCustomExtraJsonData() {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return null;
        }
        return dVar.A();
    }

    public boolean isValid() {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return false;
        }
        return dVar.E();
    }

    public void loadAd() {
        d dVar = this.mBZUnifiedManager;
        if (dVar != null) {
            dVar.b();
        }
    }

    public void notifyVideoPlayProgress(int i10) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return;
        }
        dVar.a(i10);
    }

    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return;
        }
        dVar.a(viewGroup, list);
    }

    public void sendLossNotificationWithInfo(Map map) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null || map == null) {
            return;
        }
        dVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null || map == null) {
            return;
        }
        dVar.a(map);
    }

    public void setBidResponse(String str) {
        if (this.mBZUnifiedManager == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.mBZUnifiedManager.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        d dVar = this.mBZUnifiedManager;
        if (dVar == null) {
            return;
        }
        dVar.c(map);
    }
}
