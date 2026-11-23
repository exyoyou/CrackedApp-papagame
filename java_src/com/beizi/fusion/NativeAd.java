package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.c.i;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class NativeAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f10047a;

    public NativeAd(Context context, String str, NativeAdListener nativeAdListener, long j10, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" request NativeAd adUnitId:");
        sb2.append(str);
        this.f10047a = new i(context, str, nativeAdListener, j10, i10);
    }

    public void destroy() {
        i iVar = this.f10047a;
        if (iVar != null) {
            iVar.c();
        }
    }

    public String getCustomExtraData() {
        i iVar = this.f10047a;
        if (iVar == null) {
            return null;
        }
        return iVar.y();
    }

    public String getCustomExtraJsonData() {
        i iVar = this.f10047a;
        if (iVar == null) {
            return null;
        }
        return iVar.A();
    }

    public int getECPM() {
        i iVar = this.f10047a;
        if (iVar != null) {
            return iVar.b();
        }
        return -1;
    }

    public boolean isValid() {
        i iVar = this.f10047a;
        if (iVar == null) {
            return false;
        }
        return iVar.E();
    }

    public void loadAd(float f10, float f11) {
        i iVar = this.f10047a;
        if (iVar != null) {
            iVar.a(f10, f11);
        }
    }

    public void pause() {
        i iVar = this.f10047a;
        if (iVar != null) {
            iVar.G();
        }
    }

    public void resume() {
        i iVar = this.f10047a;
        if (iVar != null) {
            iVar.F();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        i iVar = this.f10047a;
        if (iVar == null || map == null) {
            return;
        }
        iVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        i iVar = this.f10047a;
        if (iVar == null || map == null) {
            return;
        }
        iVar.a(map);
    }

    public void setBidResponse(String str) {
        i iVar = this.f10047a;
        if (iVar == null) {
            return;
        }
        iVar.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        i iVar = this.f10047a;
        if (iVar == null) {
            return;
        }
        iVar.c(map);
    }
}
