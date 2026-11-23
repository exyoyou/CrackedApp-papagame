package com.byazt.ol;

import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 41, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<tt> f17903c;

    public ve(tt ttVar) {
        this.f17903c = new WeakReference<>(ttVar);
    }

    @JavascriptInterface
    public void adAnalysisData(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().adAnalysisData(str);
    }

    @JavascriptInterface
    public String adInfo() {
        WeakReference<tt> weakReference = this.f17903c;
        return (weakReference == null || weakReference.get() == null) ? "" : this.f17903c.get().adInfo();
    }

    @JavascriptInterface
    public String appInfo() {
        WeakReference<tt> weakReference = this.f17903c;
        return (weakReference == null || weakReference.get() == null) ? "" : this.f17903c.get().appInfo();
    }

    public void c(tt ttVar) {
        if (ttVar == null) {
            this.f17903c = null;
        } else {
            this.f17903c = new WeakReference<>(ttVar);
        }
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().changeVideoState(str);
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().clickEvent(str);
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().dynamicTrack(str);
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        WeakReference<tt> weakReference = this.f17903c;
        return (weakReference == null || weakReference.get() == null) ? "" : this.f17903c.get().getCurrentVideoState();
    }

    @JavascriptInterface
    public String getData(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        return (weakReference == null || weakReference.get() == null) ? "" : this.f17903c.get().getData(str);
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        WeakReference<tt> weakReference = this.f17903c;
        return (weakReference == null || weakReference.get() == null) ? "" : this.f17903c.get().getTemplateInfo();
    }

    @JavascriptInterface
    public void initRenderFinish() {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().initRenderFinish();
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().muteVideo(str);
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().renderDidFinish(str);
    }

    @JavascriptInterface
    public void requestPauseVideo(String str) {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().requestPauseVideo(str);
    }

    @JavascriptInterface
    public void skipVideo() {
        WeakReference<tt> weakReference = this.f17903c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17903c.get().skipVideo();
    }
}
