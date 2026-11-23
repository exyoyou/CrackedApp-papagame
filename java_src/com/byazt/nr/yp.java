package com.byazt.nr;

import android.annotation.TargetApi;
import android.os.Looper;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 215})
public class yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f17593c = new tt();

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 435})
    private static class c {
        private c() {
        }

        public void c(final WebView webView, final String str) {
            if (webView == null) {
                return;
            }
            yp.tt(new Runnable() { // from class: com.byazt.nr.yp.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        webView.loadUrl(str);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 2052})
    @TargetApi(19)
    private static class tt extends c {
        private tt() {
            super();
        }

        @Override // com.byazt.nr.yp.c
        public void c(final WebView webView, final String str) {
            if (webView == null) {
                return;
            }
            yp.tt(new Runnable() { // from class: com.byazt.nr.yp.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    String str2 = str;
                    boolean z10 = false;
                    if (str2 != null && str2.startsWith("javascript:")) {
                        try {
                            webView.evaluateJavascript(str, null);
                            z10 = true;
                        } catch (Throwable th) {
                            boolean z11 = th instanceof IllegalStateException;
                        }
                    }
                    if (z10) {
                        return;
                    }
                    try {
                        webView.loadUrl(str);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            da.tt().post(runnable);
        }
    }

    @Deprecated
    public static void c(WebView webView, String str) {
        f17593c.c(webView, str);
    }

    public static void c(com.byazt.nl.uj ujVar, String str) {
        f17593c.c(ujVar.getWebView(), str);
    }
}
