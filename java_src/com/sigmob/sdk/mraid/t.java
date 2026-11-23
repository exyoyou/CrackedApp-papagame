package com.sigmob.sdk.mraid;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class t extends n implements n.a, com.sigmob.sdk.videocache.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f81102c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f81103d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f81104e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f81105f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f81106g = 4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f81107h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f81108i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f81109j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f81110k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f81111l = 8;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private r f81112m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f81113n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private u f81114o;

    /* JADX INFO: renamed from: com.sigmob.sdk.mraid.t$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81116a;

        static {
            int[] iArr = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f81116a = iArr;
            try {
                iArr[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_PREPARING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f81116a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public t(String uniqueId) {
        super(uniqueId);
    }

    @Override // com.sigmob.sdk.mraid.n
    public View a() {
        return this.f81112m;
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void c(JSONObject args) {
        r rVar = this.f81112m;
        if (rVar == null) {
            return;
        }
        rVar.a(0);
        this.f81112m.d();
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void d(JSONObject args) {
        r rVar = this.f81112m;
        if (rVar == null) {
            return;
        }
        rVar.j();
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void e(JSONObject args) {
        r rVar = this.f81112m;
        if (rVar == null) {
            return;
        }
        rVar.i();
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void f(JSONObject args) {
        if (this.f81112m == null) {
            return;
        }
        this.f81112m.setMute(args.optBoolean("muted", false));
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void g(JSONObject args) {
        if (this.f81112m == null) {
            return;
        }
        this.f81112m.a(((int) args.optDouble("seekTime", 0.0d)) * 1000);
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void h(JSONObject args) {
        JSONObject jSONObjectOptJSONObject;
        if (this.f81112m == null || args == null || (jSONObjectOptJSONObject = args.optJSONObject(TypedValues.AttributesType.S_FRAME)) == null) {
            return;
        }
        Context contextE = com.sigmob.sdk.b.e();
        int iOptDouble = (int) jSONObjectOptJSONObject.optDouble("x", 0.0d);
        int iOptDouble2 = (int) jSONObjectOptJSONObject.optDouble("y", 0.0d);
        int iOptDouble3 = (int) jSONObjectOptJSONObject.optDouble(IAdInterListener.AdReqParam.WIDTH, -1.0d);
        int iOptDouble4 = (int) jSONObjectOptJSONObject.optDouble("h", -1.0d);
        if (iOptDouble3 > 0) {
            iOptDouble3 = Dips.dipsToIntPixels(iOptDouble3, contextE);
        }
        if (iOptDouble4 > 0) {
            iOptDouble4 = Dips.dipsToIntPixels(iOptDouble4, contextE);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iOptDouble3, iOptDouble4);
        this.f81112m.setX(Dips.dipsToIntPixels(iOptDouble, contextE));
        this.f81112m.setY(Dips.dipsToIntPixels(iOptDouble2, contextE));
        this.f81112m.setLayoutParams(layoutParams);
        this.f81112m.requestLayout();
    }

    @Override // com.sigmob.sdk.mraid.n
    public void b() {
        if (com.sigmob.sdk.base.utils.w.b(this.f81112m)) {
            com.sigmob.sdk.base.utils.x.a(this.f81112m);
            this.f81112m.removeAllViews();
            this.f81112m.r();
            this.f81112m = null;
        }
        if (com.sigmob.sdk.base.utils.t.b(this.f81113n)) {
            com.sigmob.sdk.base.common.h.d().unregisterCacheListener(this, this.f81113n);
        }
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void a(Context context, JSONObject args) {
        r rVar = new r(context);
        this.f81112m = rVar;
        rVar.setVideoPlayerStatusListener(new com.sigmob.sdk.videoplayer.k() { // from class: com.sigmob.sdk.mraid.t.1
            @Override // com.sigmob.sdk.videoplayer.k
            public void a(long position, long duration) {
                if (t.this.f81114o == null) {
                    return;
                }
                t.this.f81114o.a(t.this.f81045a, position, duration);
            }

            @Override // com.sigmob.sdk.videoplayer.k
            public void a(com.sigmob.sdk.videoplayer.d state) {
                u uVar;
                String str;
                SigmobLog.d("VIDEO_PLAYER_STATE change: " + state);
                int i10 = 1;
                switch (AnonymousClass2.f81116a[state.ordinal()]) {
                    case 1:
                        if (t.this.f81114o != null) {
                            t.this.f81114o.a(t.this.f81045a, t.this.f81112m.getDuration(), t.this.f81112m.getVideoWidth(), t.this.f81112m.getVideoHeight());
                        }
                        if (t.this.f81114o != null) {
                            t.this.f81114o.b(t.this.f81045a, 2);
                        }
                        if (t.this.f81114o != null) {
                            t.this.f81114o.b(t.this.f81045a, 4);
                            return;
                        }
                        return;
                    case 2:
                        if (t.this.f81114o != null) {
                            t.this.f81114o.a(t.this.f81045a, t.this.f81112m.getErrorCode(), t.this.f81112m.getErrorMessage());
                            return;
                        }
                        return;
                    case 3:
                        if (t.this.f81114o != null) {
                            t.this.f81114o.a(t.this.f81045a, 2);
                            return;
                        }
                        return;
                    case 4:
                        if (t.this.f81114o != null) {
                            t.this.f81114o.a(t.this.f81045a, 1);
                            return;
                        }
                        return;
                    case 5:
                        if (t.this.f81114o != null) {
                            u uVar2 = t.this.f81114o;
                            t tVar = t.this;
                            uVar2.a(tVar.f81045a, tVar.f81112m.getDuration(), t.this.f81112m.getDuration());
                            u uVar3 = t.this.f81114o;
                            t tVar2 = t.this;
                            uVar3.a(tVar2.f81045a, tVar2.f81112m.getDuration());
                            return;
                        }
                        return;
                    case 6:
                        if (t.this.f81114o == null) {
                            return;
                        }
                        uVar = t.this.f81114o;
                        str = t.this.f81045a;
                        break;
                    case 7:
                        if (t.this.f81114o == null) {
                            return;
                        }
                        t.this.f81112m.j();
                        uVar = t.this.f81114o;
                        str = t.this.f81045a;
                        i10 = 8;
                        break;
                    case 8:
                        if (t.this.f81114o != null) {
                            t.this.f81112m.d();
                            t.this.f81114o.b(t.this.f81045a, 2);
                            return;
                        }
                        return;
                    case 9:
                        if (t.this.f81114o != null) {
                            t.this.f81114o.a(t.this.f81045a, 4);
                            return;
                        }
                        return;
                    default:
                        return;
                }
                uVar.b(str, i10);
            }
        });
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void b(JSONObject args) {
        r rVar = this.f81112m;
        if (rVar == null) {
            return;
        }
        rVar.d();
    }

    public void a(u mraidVpaidListener) {
        this.f81114o = mraidVpaidListener;
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(File cacheFile, String url, int percentsAvailable) {
    }

    private void a(String uniqueId, String url) {
        Uri uri = Uri.parse(url);
        if (uri != null && "127.0.0.1".equalsIgnoreCase(uri.getHost())) {
            Pattern patternCompile = Pattern.compile("/(.*)");
            String path = uri.getPath();
            if (com.sigmob.sdk.base.utils.t.a((CharSequence) path)) {
                return;
            }
            Matcher matcher = patternCompile.matcher(path);
            if (matcher.find()) {
                this.f81113n = matcher.group(1);
                com.sigmob.sdk.base.common.h.d().registerCacheListener(this, this.f81113n);
            }
        }
    }

    @Override // com.sigmob.sdk.videocache.d
    public void a(String url, Throwable throwable) {
        SigmobLog.e("url", throwable);
        u uVar = this.f81114o;
        if (uVar == null) {
            return;
        }
        uVar.a(this.f81045a, 0, throwable.getMessage());
    }

    @Override // com.sigmob.sdk.mraid.n.a
    public void a(JSONObject args) {
        if (this.f81112m == null) {
            return;
        }
        String strOptString = args.optString("URL");
        if (args.optBoolean("proxy", false) && com.sigmob.sdk.base.utils.t.b(strOptString) && strOptString.startsWith("http")) {
            Uri uri = Uri.parse(strOptString);
            if (uri != null && !"127.0.0.1".equalsIgnoreCase(uri.getHost())) {
                strOptString = com.sigmob.sdk.base.common.h.d().getProxyUrl(strOptString);
            }
            a(this.f81045a, strOptString);
        }
        this.f81112m.setUp(strOptString);
        this.f81112m.n();
    }
}
