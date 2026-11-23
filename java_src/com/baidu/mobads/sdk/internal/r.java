package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.NativeResponse;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class r implements NativeResponse.CustomizeMediaPlayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7924a = "vstart";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f7925b = "vrepeatedplay";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7926c = "vclose";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7927d = "vreadyplay";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7928e = "vplayfail";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f7929f = "vmute";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f7930g = "vfrozen";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f7931h = "vshow";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f7932i = "curTimeSec";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f7933j = "startTimeSec";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f7934k = "autoPlay";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f7935l = "reasonValue";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final dg f7936m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final a f7937n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f7938o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7939p = 0;

    public r(dg dgVar, a aVar) {
        this.f7936m = dgVar;
        this.f7937n = aVar;
    }

    private void a(String str, JSONObject jSONObject) {
        a aVar;
        JSONObject jSONObjectY;
        if (this.f7936m == null || (aVar = this.f7937n) == null || (jSONObjectY = aVar.Y()) == null) {
            return;
        }
        try {
            jSONObjectY.put("msg", "sendVideoThirdLog");
            jSONObjectY.put("trackType", str);
            jSONObjectY.put("trackInfo", jSONObject);
            this.f7936m.a(jSONObjectY);
        } catch (Throwable th) {
            bv.a().d(th.getMessage());
        }
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public String getVideoUrl() {
        a aVar = this.f7937n;
        if (aVar != null) {
            return aVar.n();
        }
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayError(int i10) {
        a(f7928e, a(this.f7939p, i10, this.f7938o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayFrozen(int i10) {
        a(f7930g, a(this.f7939p, i10, this.f7938o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportPlayerReady() {
        a(f7927d, a(0, 0, false, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoMuteChange(int i10, boolean z10) {
        a(f7929f, a(this.f7939p, i10, this.f7938o, z10 ? 2 : 1));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoPause(int i10, NativeResponse.VideoReason videoReason) {
        a("vclose", a(this.f7939p, i10, this.f7938o, videoReason.getCode()));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoReplay() {
        this.f7939p = 0;
        a(f7925b, a(0, 0, this.f7938o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoResume(int i10) {
        this.f7939p = i10;
        a(f7924a, a(i10, i10, this.f7938o, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoShow() {
        a(f7931h, a(0, 0, false, 7));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoStart(boolean z10) {
        this.f7939p = 0;
        this.f7938o = z10;
        a(f7924a, a(0, 0, z10, 0));
    }

    @Override // com.baidu.mobads.sdk.api.NativeResponse.CustomizeMediaPlayer
    public void reportVideoStop(int i10, NativeResponse.VideoReason videoReason) {
        a("vclose", a(this.f7939p, i10, this.f7938o, videoReason.getCode()));
    }

    private JSONObject a(int i10, int i11, boolean z10, int i12) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(f7933j, i10 / 1000);
            jSONObject.put(f7932i, i11 / 1000);
            jSONObject.put(f7934k, z10);
            jSONObject.put(f7935l, i12);
        } catch (Throwable th) {
            bv.a().d(th.getMessage());
        }
        return jSONObject;
    }
}
