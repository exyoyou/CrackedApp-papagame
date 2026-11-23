package fm.jiecao.jcvideoplayer_lib;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static JCVideoPlayer f91315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static JCVideoPlayer f91316b;

    public static void a() {
        JCVideoPlayer jCVideoPlayer = f91316b;
        if (jCVideoPlayer != null) {
            jCVideoPlayer.q();
            f91316b = null;
        }
        JCVideoPlayer jCVideoPlayer2 = f91315a;
        if (jCVideoPlayer2 != null) {
            jCVideoPlayer2.q();
            f91315a = null;
        }
    }

    public static JCVideoPlayer b() {
        return d() != null ? d() : c();
    }

    public static JCVideoPlayer c() {
        return f91315a;
    }

    public static JCVideoPlayer d() {
        return f91316b;
    }

    public static void e(JCVideoPlayer jCVideoPlayer) {
        f91315a = jCVideoPlayer;
    }

    public static void f(JCVideoPlayer jCVideoPlayer) {
        f91316b = jCVideoPlayer;
    }
}
