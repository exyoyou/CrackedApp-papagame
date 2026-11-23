package com.beizi.fusion;

import android.content.Context;
import com.beizi.fusion.c.j;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class NativeUnifiedAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f10048a;

    public NativeUnifiedAd(Context context, String str, NativeUnifiedAdListener nativeUnifiedAdListener, long j10, int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" request NativeUnifiedAd adUnitId:");
        sb2.append(str);
        this.f10048a = new j(context, str, nativeUnifiedAdListener, j10, i10);
    }

    public void destroy() {
        j jVar = this.f10048a;
        if (jVar != null) {
            jVar.G();
        }
    }

    public String getCustomExtraData() {
        j jVar = this.f10048a;
        if (jVar == null) {
            return null;
        }
        return jVar.y();
    }

    public String getCustomExtraJsonData() {
        j jVar = this.f10048a;
        if (jVar == null) {
            return null;
        }
        return jVar.A();
    }

    public int getECPM() {
        j jVar = this.f10048a;
        if (jVar != null) {
            return jVar.F();
        }
        return -1;
    }

    public boolean isLoaded() {
        j jVar = this.f10048a;
        if (jVar != null) {
            return jVar.c();
        }
        return false;
    }

    public boolean isValid() {
        j jVar = this.f10048a;
        if (jVar == null) {
            return false;
        }
        return jVar.E();
    }

    public void loadAd() {
        j jVar = this.f10048a;
        if (jVar != null) {
            jVar.b();
        }
    }

    public void resume() {
        j jVar = this.f10048a;
        if (jVar != null) {
            jVar.H();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        j jVar = this.f10048a;
        if (jVar == null || map == null) {
            return;
        }
        jVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        j jVar = this.f10048a;
        if (jVar == null || map == null) {
            return;
        }
        jVar.a(map);
    }

    public void setBidResponse(String str) {
        j jVar = this.f10048a;
        if (jVar == null) {
            return;
        }
        jVar.g(str);
    }

    public void setHideAdLogo(boolean z10) {
        j jVar = this.f10048a;
        if (jVar != null) {
            jVar.b(z10);
        }
    }

    public void setHideDownloadInfo(boolean z10) {
        j jVar = this.f10048a;
        if (jVar != null) {
            jVar.c(z10);
        }
    }

    public void setSpaceParam(Map<String, Object> map) {
        j jVar = this.f10048a;
        if (jVar == null) {
            return;
        }
        jVar.c(map);
    }
}
