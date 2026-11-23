package com.byazt.fiq;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f14199a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, List<String>> f14200c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f14201n;
    public final String tt;
    public final String uj;
    public final JSONObject ve;

    public sp(String str, String str2, Map<String, List<String>> map, JSONObject jSONObject) {
        this.tt = str;
        this.uj = str2;
        this.f14200c = map;
        this.ve = jSONObject;
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        List<String> list = this.f14200c.get(str);
        if (list != null) {
            list.add(str2);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        this.f14200c.put(str, arrayList);
    }

    public String tt() {
        return this.tt;
    }

    public String uj() {
        return this.uj;
    }

    public String ve() {
        try {
            String strOptString = this.ve.optString("expandParams");
            String str = "apppackage=" + this.f14201n + "|appsign=" + this.f14199a;
            if (!TextUtils.isEmpty(strOptString)) {
                str = strOptString + "|" + str;
            }
            this.ve.put("expandParams", str);
        } catch (Exception e10) {
            m.c(e10);
        }
        JSONObject jSONObject = this.ve;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public void tt(String str) {
        this.f14199a = str;
    }

    public Map<String, List<String>> c() {
        return this.f14200c;
    }

    public void c(String str) {
        this.f14201n = str;
    }
}
