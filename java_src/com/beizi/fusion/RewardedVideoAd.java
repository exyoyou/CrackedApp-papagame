package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.beizi.fusion.c.k;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class RewardedVideoAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k f10049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f10050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f10051c;

    public RewardedVideoAd(Context context, String str, RewardedVideoAdListener rewardedVideoAdListener, long j10, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" request RewardedVideoAd adUnitId:");
        sb2.append(str);
        this.f10049a = new k(context, str, rewardedVideoAdListener, j10, i10);
    }

    public void destroy() {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.I();
        }
    }

    public String getCustomExtraData() {
        k kVar = this.f10049a;
        if (kVar == null) {
            return null;
        }
        return kVar.y();
    }

    public String getCustomExtraJsonData() {
        k kVar = this.f10049a;
        if (kVar == null) {
            return null;
        }
        return kVar.A();
    }

    public int getECPM() {
        k kVar = this.f10049a;
        if (kVar != null) {
            return kVar.H();
        }
        return -1;
    }

    public String getExtra() {
        return this.f10051c;
    }

    public String getUserId() {
        return this.f10050b;
    }

    public boolean isLoaded() {
        k kVar = this.f10049a;
        if (kVar != null) {
            return kVar.F();
        }
        return false;
    }

    public boolean isValid() {
        k kVar = this.f10049a;
        if (kVar == null) {
            return false;
        }
        return kVar.E();
    }

    public void loadAd() {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.G();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        k kVar = this.f10049a;
        if (kVar == null || map == null) {
            return;
        }
        kVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        k kVar = this.f10049a;
        if (kVar == null || map == null) {
            return;
        }
        kVar.a(map);
    }

    public void setBidResponse(String str) {
        k kVar = this.f10049a;
        if (kVar == null) {
            return;
        }
        kVar.g(str);
    }

    public void setExtra(String str) {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.i(str);
        }
    }

    public void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.a(rewardedVideoAdListener);
        }
    }

    public void setSpaceParam(Map<String, Object> map) {
        k kVar = this.f10049a;
        if (kVar == null) {
            return;
        }
        kVar.c(map);
    }

    public void setUserId(String str) {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.h(str);
        }
    }

    public void showAd(@NonNull Activity activity) {
        k kVar = this.f10049a;
        if (kVar != null) {
            kVar.a(activity);
        }
    }
}
