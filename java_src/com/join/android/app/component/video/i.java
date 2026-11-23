package com.join.android.app.component.video;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static StandardVideoView f35243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static v7.a f35244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Bitmap f35245c;

    public static void a(StandardVideoView switchVideo) {
        switchVideo.k(f35243a);
    }

    public static Bitmap b() {
        return f35245c;
    }

    public static void c(final StandardVideoView gsyVideoPlayer, String url, boolean cache, String title) {
        gsyVideoPlayer.setSwitchUrl(url);
        gsyVideoPlayer.setSwitchCache(cache);
        gsyVideoPlayer.setSwitchTitle(title);
    }

    public static void d() {
        f35243a = null;
        f35244b = null;
    }

    public static void e(Bitmap bitmap2) {
        f35245c = bitmap2;
    }

    public static void f(StandardVideoView switchVideo) {
        f35243a = switchVideo.n();
        f35244b = switchVideo;
    }
}
