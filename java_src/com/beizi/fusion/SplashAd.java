package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.RequiresPermission;
import com.beizi.fusion.c.l;
import com.kuaishou.weapon.p0.g;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class SplashAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f10052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup f10053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f10054c = false;

    @RequiresPermission(g.f74777a)
    public SplashAd(Context context, View view, String str, AdListener adListener, long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" request SplashAd adUnitId:");
        sb2.append(str);
        this.f10052a = new l(context, str, view, adListener, j10);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f10053b = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    public void cancel(Context context) {
        l lVar = this.f10052a;
        if (lVar != null) {
            lVar.o();
        }
    }

    public String getCustomExtraData() {
        l lVar = this.f10052a;
        if (lVar == null) {
            return null;
        }
        return lVar.y();
    }

    public String getCustomExtraJsonData() {
        l lVar = this.f10052a;
        if (lVar == null) {
            return null;
        }
        return lVar.A();
    }

    public int getECPM() {
        l lVar = this.f10052a;
        if (lVar != null) {
            return lVar.G();
        }
        return -1;
    }

    public Map getExtraData() {
        l lVar = this.f10052a;
        if (lVar == null) {
            return null;
        }
        return lVar.I();
    }

    public boolean isValid() {
        l lVar = this.f10052a;
        if (lVar == null) {
            return false;
        }
        return lVar.E();
    }

    public void loadAd(int i10, int i11) {
        l lVar = this.f10052a;
        if (lVar == null || this.f10053b == null) {
            return;
        }
        lVar.a(i10);
        this.f10052a.c(i11);
        this.f10052a.a(this.f10053b);
    }

    public void reportNotShow() {
        l lVar = this.f10052a;
        if (lVar != null) {
            lVar.H();
        }
    }

    public void sendLossNotificationWithInfo(Map map) {
        l lVar = this.f10052a;
        if (lVar == null || map == null) {
            return;
        }
        lVar.b(map);
    }

    public void sendWinNotificationWithInfo(Map map) {
        l lVar = this.f10052a;
        if (lVar == null || map == null) {
            return;
        }
        lVar.a(map);
    }

    public void setBidResponse(String str) {
        l lVar = this.f10052a;
        if (lVar == null) {
            return;
        }
        lVar.g(str);
    }

    public void setSpaceParam(Map<String, Object> map) {
        l lVar = this.f10052a;
        if (lVar == null) {
            return;
        }
        lVar.c(map);
    }

    public void setSupportRegionClick(boolean z10) {
        l lVar = this.f10052a;
        if (lVar != null) {
            lVar.a(z10);
        }
    }

    public void show(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (this.f10054c || viewGroup == null || this.f10052a == null || (viewGroup2 = this.f10053b) == null) {
            return;
        }
        try {
            if (!(viewGroup2.getContext() instanceof Activity)) {
                this.f10052a.a(viewGroup.getContext());
            }
        } catch (Throwable unused) {
        }
        viewGroup.addView(this.f10053b);
        this.f10052a.F();
        this.f10054c = true;
    }

    @Deprecated
    public void loadAd() {
        ViewGroup viewGroup;
        l lVar = this.f10052a;
        if (lVar == null || (viewGroup = this.f10053b) == null) {
            return;
        }
        lVar.a(viewGroup);
    }
}
