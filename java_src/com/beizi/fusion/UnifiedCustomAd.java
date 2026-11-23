package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.beizi.fusion.c.m;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class UnifiedCustomAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f10055a;

    public UnifiedCustomAd(Context context, String str, NativeAdListener nativeAdListener, long j10, int i10) {
        this.f10055a = new m(context, str, nativeAdListener, j10, i10);
    }

    public void destroy() {
        m mVar = this.f10055a;
        if (mVar != null) {
            mVar.F();
        }
    }

    public String getCustomExtraData() {
        m mVar = this.f10055a;
        if (mVar == null) {
            return null;
        }
        return mVar.y();
    }

    public String getCustomExtraJsonData() {
        m mVar = this.f10055a;
        if (mVar == null) {
            return null;
        }
        return mVar.A();
    }

    public boolean isLoaded() {
        m mVar = this.f10055a;
        if (mVar != null) {
            return mVar.c();
        }
        return false;
    }

    public boolean isValid() {
        m mVar = this.f10055a;
        if (mVar == null) {
            return false;
        }
        return mVar.E();
    }

    public void loadAd() {
        m mVar = this.f10055a;
        if (mVar != null) {
            mVar.b();
        }
    }

    public void resume() {
        m mVar = this.f10055a;
        if (mVar != null) {
            mVar.G();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        m mVar = this.f10055a;
        if (mVar == null || map == null) {
            return;
        }
        mVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        m mVar = this.f10055a;
        if (mVar == null || map == null) {
            return;
        }
        mVar.a(map);
    }

    public void setBidResponse(String str) {
        m mVar = this.f10055a;
        if (mVar == null) {
            return;
        }
        mVar.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        m mVar = this.f10055a;
        if (mVar == null) {
            return;
        }
        mVar.c(map);
    }

    public void showAd(@NonNull Activity activity) {
        m mVar = this.f10055a;
        if (mVar != null) {
            mVar.a(activity);
        }
    }
}
