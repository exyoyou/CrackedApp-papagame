package com.byazt.ete;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME})
public class ir extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13763a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13764da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13765i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13766n;
    public int sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13767t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13768u;
    public String uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13769x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Map<String, ir> f13770z;

    public ir(JSONObject jSONObject, int i10) {
        if (jSONObject == null) {
            return;
        }
        this.tt = jSONObject.optInt("render_sequence");
        this.ve = jSONObject.optInt("displayAreaAndroid");
        this.uj = jSONObject.optString("ugen_md5");
        this.f13766n = jSONObject.optString("ugen_id");
        this.f13763a = jSONObject.optString("ugen_url");
        this.sl = jSONObject.optInt("if_stay_top", 0);
        this.sp = jSONObject.optInt("need_backup_convert_area", 0);
        this.f13769x = jSONObject.optInt("min_height", 0);
        this.f13765i = jSONObject.optInt("min_width", 0);
        this.f13764da = jSONObject.optInt("min_ratio", 0);
        this.f13767t = jSONObject.optInt("mode");
        this.f13768u = jSONObject.optInt("render_control", 0);
        this.yp = jSONObject.optInt("creative_type", 0);
        this.f13899c = i10;
        c(jSONObject.optJSONObject("config"));
    }

    private void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f13770z = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
            if (jSONObjectOptJSONObject != null) {
                this.f13770z.put(next, new ir(jSONObjectOptJSONObject, 5));
            }
        }
    }

    public int a() {
        return this.sl;
    }

    public String da() {
        return this.f13763a;
    }

    public String i() {
        return this.uj;
    }

    @Override // com.byazt.ete.u
    public String n() {
        return this.f13766n;
    }

    public boolean sl() {
        return this.sp == 1;
    }

    public int sp() {
        return this.f13767t;
    }

    public boolean t() {
        return !TextUtils.isEmpty(this.f13763a);
    }

    @Override // com.byazt.ete.u
    public int uj() {
        return this.ve;
    }

    @Override // com.byazt.ete.u
    public int ve() {
        return this.tt;
    }

    public int x() {
        return this.f13768u;
    }

    public boolean c(int i10, int i11) {
        int iUj = com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), i10);
        int iUj2 = com.byazt.aas.pf.uj(com.byazt.omf.gt.getContext(), i11);
        int i12 = this.f13765i;
        if (i12 != 0 && iUj < i12) {
            return false;
        }
        int i13 = this.f13769x;
        if (i13 == 0 || iUj2 >= i13) {
            return iUj == 0 || iUj2 == 0 || ((float) iUj2) / ((float) iUj) >= ((float) this.f13764da);
        }
        return false;
    }
}
