package com.join.mgps.pref;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected SharedPreferences f71935a;

    public a(Context context) {
        this.f71935a = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public void a(String key, String defVal) {
        SharedPreferences sharedPreferences = this.f71935a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.getString(key, defVal);
    }

    public String b(String uid) {
        if (this.f71935a == null) {
            return "";
        }
        return this.f71935a.getString("AdGame_" + uid, "");
    }

    public String c(String gameId, String uid) {
        if (this.f71935a == null) {
            return "";
        }
        return this.f71935a.getString("AdGame_" + gameId + "_" + uid, "");
    }

    public long d(String config) {
        if (TextUtils.isEmpty(config)) {
            return 0L;
        }
        try {
            JSONObject jSONObject = new JSONObject(config);
            if (jSONObject.has("lastTime")) {
                return Long.parseLong(jSONObject.get("lastTime").toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0L;
    }

    public void e(String uid) {
        if (this.f71935a == null) {
            return;
        }
        this.f71935a.edit().remove("AdGame_" + uid).apply();
    }

    public void f(String gameId, String uid) {
        if (this.f71935a == null) {
            return;
        }
        this.f71935a.edit().remove("AdGame_" + gameId + "_" + uid).apply();
    }

    public void g(String key, String val) {
        SharedPreferences sharedPreferences = this.f71935a;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(key, val).commit();
    }

    public void h(String uid) {
        if (this.f71935a == null) {
            return;
        }
        String str = "AdGame_" + uid;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("startDay", 1);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.f71935a.edit().putString(str, jSONObject.toString()).apply();
    }

    public void i(String gameId, String uid) {
        if (this.f71935a == null) {
            return;
        }
        String str = "AdGame_" + gameId + "_" + uid;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("startDay", 1);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.f71935a.edit().putString(str, jSONObject.toString()).apply();
    }
}
