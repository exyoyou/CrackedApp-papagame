package com.join.android.app.component.video;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static StandardVideoView f35246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static v7.a f35247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Bitmap f35248c;

    public static void a(StandardVideoView switchVideo) {
        switchVideo.k(f35246a);
    }

    public static Bitmap b() {
        return f35248c;
    }

    public static void c(final StandardVideoView gsyVideoPlayer, String url, boolean cache, String title) {
        gsyVideoPlayer.setSwitchUrl(url);
        gsyVideoPlayer.setSwitchCache(cache);
        gsyVideoPlayer.setSwitchTitle(title);
    }

    public static void d() {
        f35246a = null;
        f35247b = null;
    }

    public static void e(Bitmap bitmap2) {
        f35248c = bitmap2;
    }

    public static void f(StandardVideoView switchVideo) {
        f35246a = switchVideo.n();
        f35247b = switchVideo;
    }
}
