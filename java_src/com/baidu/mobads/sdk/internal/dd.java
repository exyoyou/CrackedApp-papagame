package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
class dd implements ViewTreeObserver.OnWindowFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ RelativeLayout f7833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ cz f7834b;

    dd(cz czVar, RelativeLayout relativeLayout) {
        this.f7834b = czVar;
        this.f7833a = relativeLayout;
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public void onWindowFocusChanged(boolean z10) {
        if (z10) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("novel_activity", (Activity) this.f7834b.f7573i);
            map.put("banner_container", this.f7833a);
            map.put("entry", Integer.valueOf(this.f7834b.G));
            map.put("channelId", Integer.valueOf(this.f7834b.H));
            map.put("novel_id", this.f7834b.I);
            map.put("isnight", Boolean.valueOf(this.f7834b.x()));
            this.f7834b.a(cz.f7825x, map);
        }
    }
}
