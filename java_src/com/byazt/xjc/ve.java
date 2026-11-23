package com.byazt.xjc;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 511, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f21921a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f21922c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f21923da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f21924i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f21925n;
    public boolean sl;
    public JSONArray sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f21926x;

    @com.byazt.zqa.c(c = {0, 1, 511, 24})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f21927a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f21928c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public com.byazt.cjm.c f21929da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f21930i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public JSONArray f21931n;
        public int sp;
        public int tt;
        public boolean uj;
        public int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f21932x;

        public ve c() {
            return new ve(this.f21928c, this.tt, this.ve, this.f21932x, this.uj, this.f21931n, this.f21927a, this.f21929da, this.sp, this.f21930i);
        }

        public c tt(int i10) {
            this.ve = i10;
            return this;
        }

        public c uj(int i10) {
            this.f21932x = i10;
            return this;
        }

        public c ve(int i10) {
            this.sp = i10;
            return this;
        }

        public c c(String str) {
            this.f21928c = str;
            return this;
        }

        public c tt(boolean z10) {
            this.f21927a = z10;
            return this;
        }

        public c ve(boolean z10) {
            this.f21930i = z10;
            return this;
        }

        public c c(int i10) {
            this.tt = i10;
            return this;
        }

        public c c(boolean z10) {
            this.uj = z10;
            return this;
        }

        public c c(Set<Integer> set) {
            this.f21931n = new JSONArray((Collection) set);
            return this;
        }

        public c c(com.byazt.cjm.c cVar) {
            this.f21929da = cVar;
            return this;
        }
    }

    public String a() {
        return this.f21924i;
    }

    public String c() {
        return this.f21922c;
    }

    public int da() {
        return this.uj;
    }

    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("meta_md5", this.f21922c);
            jSONObject.put("consume_time", this.tt);
            jSONObject.put("reduce_time", this.ve);
            jSONObject.put("is_video_completed", this.f21925n);
            jSONObject.put("is_user_interacted", this.f21921a);
            jSONObject.put("reward_verify_array", this.sp);
            jSONObject.put("is_mute", this.f21926x);
            jSONObject.put("play_again_string", this.f21924i);
            jSONObject.put("carousel_type", this.f21923da);
            jSONObject.put("eternal_global_time", this.uj);
            jSONObject.put("first_ad_is_video", this.sl);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public boolean n() {
        return this.f21926x;
    }

    public boolean sl() {
        return this.sl;
    }

    public int sp() {
        return this.f21923da;
    }

    public int tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.f21925n;
    }

    public int ve() {
        return this.ve;
    }

    public Map<Integer, Boolean> x() {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < this.sp.length(); i10++) {
            try {
                map.put((Integer) this.sp.get(i10), Boolean.TRUE);
            } catch (Exception unused) {
            }
        }
        return map;
    }

    private ve(String str, int i10, int i11, int i12, boolean z10, JSONArray jSONArray, boolean z11, com.byazt.cjm.c cVar, int i13, boolean z12) {
        this.f21922c = str;
        this.tt = i10;
        this.ve = i11;
        this.uj = i12;
        this.f21925n = z10;
        this.sp = jSONArray;
        this.f21926x = z11;
        this.f21924i = cVar.x();
        this.f21923da = i13;
        this.sl = z12;
    }

    public ve(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f21922c = jSONObject.optString("meta_md5");
            this.tt = jSONObject.optInt("consume_time");
            this.ve = jSONObject.optInt("reduce_time");
            this.f21925n = jSONObject.optBoolean("is_video_completed");
            this.sp = jSONObject.optJSONArray("reward_verify_array");
            this.f21926x = jSONObject.optBoolean("is_mute");
            this.f21924i = jSONObject.optString("play_again_string");
            this.f21923da = jSONObject.optInt("carousel_type");
            this.uj = jSONObject.optInt("eternal_global_time");
            this.sl = jSONObject.optBoolean("first_ad_is_video");
        } catch (Exception unused) {
        }
    }
}
