package com.byazt.xd;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.byazt.cd.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f21786a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.cd.c.C0282c f21787c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public tt f21788i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.cd.c.C0282c f21789n;
    public float sp;
    public com.byazt.cd.c.C0282c tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f21790x;

    public void c(String str) {
        if (com.byazt.cd.c.ve(str)) {
            this.f21787c = com.byazt.cd.c.tt(str);
        }
    }

    public void tt(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("gradient", null);
            if (strOptString == null || !com.byazt.cd.c.ve(strOptString)) {
                return;
            }
            this.tt = com.byazt.cd.c.tt(strOptString);
            this.ve = jSONObject.optInt("duration", 2200);
            this.uj = jSONObject.optInt("playCount", -1);
        } catch (JSONException unused) {
        }
    }

    public void uj() {
        tt ttVar = this.f21788i;
        if (ttVar != null) {
            ttVar.tt();
        }
    }

    public void ve() {
        tt ttVar = this.f21788i;
        if (ttVar == null || !ttVar.ve()) {
            return;
        }
        this.f21788i.c();
    }

    public void c(String str, Context context) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("gradient", null);
            if (strOptString == null || !com.byazt.cd.c.ve(strOptString)) {
                return;
            }
            this.f21789n = com.byazt.cd.c.tt(strOptString);
            this.f21786a = x.c(context, (float) jSONObject.optDouble("width", 76.0d));
            this.sp = (float) jSONObject.optDouble("opacity", 0.9d);
            this.f21790x = jSONObject.optInt("steps", 24);
        } catch (JSONException unused) {
        }
    }

    public boolean tt() {
        return (this.f21787c == null && this.tt == null && this.f21789n == null) ? false : true;
    }

    public boolean c() {
        return (this.f21787c == null && this.tt == null) ? false : true;
    }

    public void c(View view, Drawable drawable, float f10, float[] fArr) {
        int[] iArr;
        float[] fArr2;
        float[] fArr3;
        boolean z10 = c() && f10 > 0.0f;
        com.byazt.cd.c.C0282c c0282c = this.f21789n;
        boolean z11 = c0282c != null;
        if (!z10 && !z11) {
            this.f21788i = null;
            view.setBackground(drawable);
            return;
        }
        if (z10) {
            com.byazt.cd.c.C0282c c0282c2 = this.tt;
            if (c0282c2 != null) {
                iArr = c0282c2.tt;
                fArr3 = c0282c2.ve;
            } else {
                com.byazt.cd.c.C0282c c0282c3 = this.f21787c;
                iArr = c0282c3.tt;
                fArr3 = c0282c3.ve;
            }
            fArr2 = fArr3;
        } else {
            iArr = null;
            fArr2 = null;
        }
        tt ttVar = new tt(drawable, iArr, fArr2, f10, fArr, this.tt != null, this.ve, this.uj, z11, this.f21786a, this.sp, this.f21790x, z11 ? c0282c.tt : null, z11 ? c0282c.ve : null);
        this.f21788i = ttVar;
        view.setBackground(ttVar);
    }
}
