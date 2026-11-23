package com.windmill.sdk.strategy;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.windmill.sdk.WindMillAdRequest;
import java.util.Calendar;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f87124a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SharedPreferences f87130g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JSONObject f87131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private JSONObject f87132i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private JSONObject f87133j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private JSONObject f87134k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private JSONObject f87135l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f87125b = "splash_num";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f87126c = "banner_num";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f87127d = "reward_num";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f87128e = "native_num";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f87129f = "interstitial_num";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f87136m = "time";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f87137n = "number";

    private c() {
    }

    public static c a() {
        if (f87124a == null) {
            synchronized (c.class) {
                if (f87124a == null) {
                    f87124a = new c();
                }
            }
        }
        return f87124a;
    }

    public void b() {
        try {
            SharedPreferences sharedPreferencesA = com.windmill.sdk.utils.n.a(ClientMetadata.getInstance().getContext());
            this.f87130g = sharedPreferencesA;
            String string = sharedPreferencesA.getString(this.f87125b, "");
            if (TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject();
                this.f87131h = jSONObject;
                jSONObject.put(this.f87137n, 0);
                this.f87131h.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87125b, this.f87131h.toString()).apply();
            } else {
                JSONObject jSONObject2 = new JSONObject(string);
                this.f87131h = jSONObject2;
                if (!a(jSONObject2.optLong(this.f87136m))) {
                    this.f87131h.put(this.f87137n, 0);
                    this.f87131h.put(this.f87136m, System.currentTimeMillis());
                }
            }
            String string2 = this.f87130g.getString(this.f87126c, "");
            if (TextUtils.isEmpty(string2)) {
                JSONObject jSONObject3 = new JSONObject();
                this.f87132i = jSONObject3;
                jSONObject3.put(this.f87137n, 0);
                this.f87132i.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87126c, this.f87132i.toString()).apply();
            } else {
                JSONObject jSONObject4 = new JSONObject(string2);
                this.f87132i = jSONObject4;
                if (!a(jSONObject4.optLong(this.f87136m))) {
                    this.f87132i.put(this.f87137n, 0);
                    this.f87132i.put(this.f87136m, System.currentTimeMillis());
                }
            }
            String string3 = this.f87130g.getString(this.f87129f, "");
            if (TextUtils.isEmpty(string3)) {
                JSONObject jSONObject5 = new JSONObject();
                this.f87135l = jSONObject5;
                jSONObject5.put(this.f87137n, 0);
                this.f87135l.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87129f, this.f87135l.toString()).apply();
            } else {
                JSONObject jSONObject6 = new JSONObject(string3);
                this.f87135l = jSONObject6;
                if (!a(jSONObject6.optLong(this.f87136m))) {
                    this.f87135l.put(this.f87137n, 0);
                    this.f87135l.put(this.f87136m, System.currentTimeMillis());
                }
            }
            String string4 = this.f87130g.getString(this.f87127d, "");
            if (TextUtils.isEmpty(string4)) {
                JSONObject jSONObject7 = new JSONObject();
                this.f87133j = jSONObject7;
                jSONObject7.put(this.f87137n, 0);
                this.f87133j.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87127d, this.f87133j.toString()).apply();
            } else {
                JSONObject jSONObject8 = new JSONObject(string4);
                this.f87133j = jSONObject8;
                if (!a(jSONObject8.optLong(this.f87136m))) {
                    this.f87133j.put(this.f87137n, 0);
                    this.f87133j.put(this.f87136m, System.currentTimeMillis());
                }
            }
            String string5 = this.f87130g.getString(this.f87128e, "");
            if (TextUtils.isEmpty(string5)) {
                JSONObject jSONObject9 = new JSONObject();
                this.f87134k = jSONObject9;
                jSONObject9.put(this.f87137n, 0);
                this.f87134k.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87128e, this.f87134k.toString()).apply();
                return;
            }
            JSONObject jSONObject10 = new JSONObject(string5);
            this.f87134k = jSONObject10;
            if (a(jSONObject10.optLong(this.f87136m))) {
                return;
            }
            this.f87134k.put(this.f87137n, 0);
            this.f87134k.put(this.f87136m, System.currentTimeMillis());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean a(long timestamp) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(timestamp);
        return calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5);
    }

    public void a(WindMillAdRequest request) {
        JSONObject jSONObject;
        try {
            int adType = request.getAdType();
            if (adType == 2) {
                JSONObject jSONObject2 = this.f87131h;
                if (jSONObject2 != null) {
                    this.f87131h.put(this.f87137n, jSONObject2.optInt(this.f87137n, 0) + 1);
                    this.f87131h.put(this.f87136m, System.currentTimeMillis());
                    this.f87130g.edit().putString(this.f87125b, this.f87131h.toString()).apply();
                }
            } else if (adType == 7) {
                JSONObject jSONObject3 = this.f87132i;
                if (jSONObject3 != null) {
                    this.f87132i.put(this.f87137n, jSONObject3.optInt(this.f87137n, 0) + 1);
                    this.f87132i.put(this.f87136m, System.currentTimeMillis());
                    this.f87130g.edit().putString(this.f87126c, this.f87132i.toString()).apply();
                }
            } else if (adType == 1) {
                JSONObject jSONObject4 = this.f87133j;
                if (jSONObject4 != null) {
                    this.f87133j.put(this.f87137n, jSONObject4.optInt(this.f87137n, 0) + 1);
                    this.f87133j.put(this.f87136m, System.currentTimeMillis());
                    this.f87130g.edit().putString(this.f87127d, this.f87133j.toString()).apply();
                }
            } else if (adType == 4) {
                JSONObject jSONObject5 = this.f87135l;
                if (jSONObject5 != null) {
                    this.f87135l.put(this.f87137n, jSONObject5.optInt(this.f87137n, 0) + 1);
                    this.f87135l.put(this.f87136m, System.currentTimeMillis());
                    this.f87130g.edit().putString(this.f87129f, this.f87135l.toString()).apply();
                }
            } else if (adType == 5 && (jSONObject = this.f87134k) != null) {
                this.f87134k.put(this.f87137n, jSONObject.optInt(this.f87137n, 0) + 1);
                this.f87134k.put(this.f87136m, System.currentTimeMillis());
                this.f87130g.edit().putString(this.f87128e, this.f87134k.toString()).apply();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int b(WindMillAdRequest request) {
        JSONObject jSONObject;
        try {
            int adType = request.getAdType();
            if (adType == 2) {
                JSONObject jSONObject2 = this.f87131h;
                if (jSONObject2 != null) {
                    return jSONObject2.optInt(this.f87137n, 0);
                }
            } else if (adType == 7) {
                JSONObject jSONObject3 = this.f87132i;
                if (jSONObject3 != null) {
                    return jSONObject3.optInt(this.f87137n, 0);
                }
            } else if (adType == 1) {
                JSONObject jSONObject4 = this.f87133j;
                if (jSONObject4 != null) {
                    return jSONObject4.optInt(this.f87137n, 0);
                }
            } else if (adType == 4) {
                JSONObject jSONObject5 = this.f87135l;
                if (jSONObject5 != null) {
                    return jSONObject5.optInt(this.f87137n, 0);
                }
            } else if (adType == 5 && (jSONObject = this.f87134k) != null) {
                return jSONObject.optInt(this.f87137n, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0;
    }
}
