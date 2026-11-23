package com.byazt.qg;

import android.content.Context;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.alipay.sdk.authjs.a;
import com.byazt.nl.ve;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL})
public class BaseWebView extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View.OnScrollChangeListener f19022a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, c> f19023c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Boolean f19024da;
    public Boolean gr;
    public Boolean gt;
    public Boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ve.c f19025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Boolean f19026i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f19027m;
    public Boolean md;
    public Boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Integer f19028n;
    public Boolean nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Boolean f19029p;
    public Boolean qy;
    public WebSettings.LayoutAlgorithm rh;
    public Boolean rl;
    public Boolean sl;
    public Boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Boolean f19030t;
    public com.byazt.el.tt tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f19031u;
    public DownloadListener uj;
    public WebChromeClient ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Boolean f19032x;
    public Integer yp;
    public Boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Integer f19033z;
    public Integer zm;

    public BaseWebView(Context context) {
        super(context);
        this.f19022a = null;
    }

    public void c(Runnable runnable) {
        if (c()) {
            runnable.run();
        } else {
            da.tt().post(runnable);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        tt();
        super.destroy();
    }

    public Boolean getAllowFileAccess() {
        return this.f19030t;
    }

    public Boolean getAllowFileAccessFromFileURLs() {
        return this.f19024da;
    }

    public Boolean getAllowUniversalAccessFromFileURLs() {
        return this.f19026i;
    }

    public Boolean getAppCacheEnabled() {
        return this.gr;
    }

    public Integer getBackgroundColor() {
        return this.f19028n;
    }

    public Boolean getBlockNetworkImage() {
        return this.sl;
    }

    public Boolean getBuiltInZoomControls() {
        return this.my;
    }

    public Integer getCacheMode() {
        return this.zm;
    }

    public WebChromeClient getChromeClient() {
        return this.ve;
    }

    public com.byazt.el.tt getClient() {
        return this.tt;
    }

    public Boolean getDatabaseEnabled() {
        return this.f19031u;
    }

    public Integer getDefaultFontSize() {
        return this.f19033z;
    }

    public String getDefaultTextEncodingName() {
        return this.f19027m;
    }

    public Boolean getDisplayZoomControls() {
        return this.yv;
    }

    public Boolean getDomStorageEnabled() {
        return this.gt;
    }

    public DownloadListener getDownloadListener() {
        return this.uj;
    }

    public Boolean getJavaScriptCanOpenWindowsAutomatically() {
        return this.rl;
    }

    public Boolean getJavaScriptEnabled() {
        return this.f19029p;
    }

    public Map<String, c> getJavascriptInterfaces() {
        return this.f19023c;
    }

    public WebSettings.LayoutAlgorithm getLayoutAlgorithm() {
        return this.rh;
    }

    public Boolean getLoadWithOverviewMod() {
        return this.nu;
    }

    public Boolean getMediaPlaybackRequiresUserGesture() {
        return this.sp;
    }

    public Integer getMixedContentMode() {
        return this.yp;
    }

    public Boolean getNetworkAvailable() {
        return this.md;
    }

    public View.OnScrollChangeListener getOnScrollChangeListener() {
        return this.f19022a;
    }

    public ve.c getOnTouchEventListener() {
        return this.f19025h;
    }

    public Boolean getSavePassword() {
        return this.f19032x;
    }

    public Boolean getSupportZoom() {
        return this.qy;
    }

    public Boolean getUseWideViewPort() {
        return this.gu;
    }

    public void tt() {
        this.f19023c = null;
        this.tt = null;
        this.ve = null;
        this.uj = null;
        this.f19022a = null;
        this.f19028n = null;
        this.sp = null;
        this.f19032x = null;
        this.f19026i = null;
        this.f19024da = null;
        this.sl = null;
        this.f19030t = null;
        this.f19031u = null;
        this.yp = null;
        this.f19033z = null;
        this.f19027m = null;
        this.nu = null;
        this.rh = null;
        this.my = null;
        this.gt = null;
        this.rl = null;
        this.qy = null;
        this.gu = null;
        this.gr = null;
        this.zm = null;
        this.yv = null;
        this.f19029p = null;
        this.md = null;
        this.f19025h = null;
    }

    public BaseWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19022a = null;
    }

    public boolean c() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    public BaseWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f19022a = null;
    }

    public void c(String str, String str2, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("__msg_type", a.f7124i);
            jSONObject2.putOpt("__callback_id", str2);
            jSONObject2.putOpt("__params", jSONObject);
            c(str, jSONObject2);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void c(String str, JSONObject jSONObject) {
        evaluateJavascript("javascript:" + str + "._handleMessageFromToutiao(" + jSONObject + ")", null);
    }

    public void tt(String str, String str2, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.putOpt("__event_id", str2);
            jSONObject2.putOpt("__params", jSONObject);
            c(str, jSONObject2);
        } catch (Throwable th) {
            m.c(th);
        }
    }
}
