package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.beizi.fusion.c.h;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class InterstitialAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f10046a;

    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener, long j10) {
        this.f10046a = new h(context, str, interstitialAdListener, j10, 0);
    }

    public void destroy() {
        h hVar = this.f10046a;
        if (hVar != null) {
            hVar.G();
        }
    }

    public String getCustomExtraData() {
        h hVar = this.f10046a;
        if (hVar == null) {
            return null;
        }
        return hVar.y();
    }

    public String getCustomExtraJsonData() {
        h hVar = this.f10046a;
        if (hVar == null) {
            return null;
        }
        return hVar.A();
    }

    public int getECPM() {
        h hVar = this.f10046a;
        if (hVar != null) {
            return hVar.F();
        }
        return -1;
    }

    public boolean isLoaded() {
        h hVar = this.f10046a;
        if (hVar != null) {
            return hVar.b();
        }
        return false;
    }

    public boolean isValid() {
        h hVar = this.f10046a;
        if (hVar == null) {
            return false;
        }
        return hVar.E();
    }

    public void loadAd() {
        h hVar = this.f10046a;
        if (hVar != null) {
            hVar.c();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        h hVar = this.f10046a;
        if (hVar == null || map == null) {
            return;
        }
        hVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        h hVar = this.f10046a;
        if (hVar == null || map == null) {
            return;
        }
        hVar.a(map);
    }

    public void setAdVersion(int i10) {
        h hVar = this.f10046a;
        if (hVar != null) {
            hVar.a(i10);
        }
    }

    public void setBidResponse(String str) {
        h hVar = this.f10046a;
        if (hVar == null) {
            return;
        }
        hVar.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        h hVar = this.f10046a;
        if (hVar == null) {
            return;
        }
        hVar.c(map);
    }

    public void showAd(@NonNull Activity activity) {
        h hVar = this.f10046a;
        if (hVar != null) {
            hVar.a(activity);
        }
    }

    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener, long j10, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" request InterstitialAd adUnitId:");
        sb2.append(str);
        this.f10046a = new h(context, str, interstitialAdListener, j10, i10);
    }
}
