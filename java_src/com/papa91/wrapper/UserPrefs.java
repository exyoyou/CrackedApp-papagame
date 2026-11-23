package com.papa91.wrapper;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.sigmob.sdk.base.models.ExtensionEvent;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UserPrefs {
    public final boolean fullScreen;
    public final boolean hideNav;
    public final boolean hintShown_fullScreen;
    protected SharedPreferences prefsData;
    protected Resources res;

    public UserPrefs(Context context) {
        this(context, null);
    }

    private void setFullScreenAndHideNav() {
        this.prefsData.edit().putBoolean("hideNav", true).commit();
        this.prefsData.edit().putBoolean("fullScreen", true).commit();
        this.prefsData.edit().putBoolean("fullscreen_hint_shown", true).commit();
    }

    public void get(String str, String str2) {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.getString(str, str2);
    }

    public String getAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return "";
        }
        return this.prefsData.getString("AdGame_" + str + "_" + str2, "");
    }

    public int getAdGamesHasSeeCount() {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return 0;
        }
        return sharedPreferences.getInt("AdGamesHasSeeCount", 0);
    }

    public String getFbaAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return "";
        }
        return this.prefsData.getString("FbaAdGame_" + str + "_" + str2, "");
    }

    public String getGoldFingerAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return "";
        }
        return this.prefsData.getString("GoldFinger_" + str + "_" + str2, "");
    }

    public int getLastLaunchGamesMode(String str) {
        if (this.prefsData == null) {
            return 0;
        }
        return this.prefsData.getInt("gm_" + str, 0);
    }

    public long getLastTime(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("lastTime")) {
                return Long.parseLong(jSONObject.get("lastTime").toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0L;
    }

    public long getRemainTime(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("remainTime")) {
                return Long.parseLong(jSONObject.get("remainTime").toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return 0L;
    }

    public boolean getSkipAd(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(ExtensionEvent.AD_SKIP)) {
                return Boolean.parseBoolean(jSONObject.get(ExtensionEvent.AD_SKIP).toString());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public Set<String> getSlotTipIds() {
        SharedPreferences sharedPreferences = this.prefsData;
        return sharedPreferences == null ? new HashSet() : sharedPreferences.getStringSet("SlotTipIds", new HashSet());
    }

    public boolean getSlotTipShow() {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.getBoolean("SlotTipShow", true);
    }

    public String getSspAdConfig() {
        SharedPreferences sharedPreferences = this.prefsData;
        return sharedPreferences == null ? "" : sharedPreferences.getString("ssp_cfg", "");
    }

    public void removeAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return;
        }
        this.prefsData.edit().remove("AdGame_" + str + "_" + str2).apply();
    }

    public void removeFbaAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return;
        }
        this.prefsData.edit().remove("FbaAdGame_" + str + "_" + str2).apply();
    }

    public void removeGoldFingerAdGamesConfig(String str, String str2) {
        if (this.prefsData == null) {
            return;
        }
        this.prefsData.edit().remove("GoldFinger_" + str + "_" + str2).apply();
    }

    public void set(String str, String str2) {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(str, str2).commit();
    }

    public void setAdGamesConfig(String str, String str2, long j10, boolean z10) {
        if (this.prefsData == null) {
            return;
        }
        String str3 = "AdGame_" + str + "_" + str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("remainTime", j10 + "");
            jSONObject.put(ExtensionEvent.AD_SKIP, z10 + "");
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.prefsData.edit().putString(str3, jSONObject.toString()).apply();
    }

    public void setAdGamesHasSeeCount(int i10) {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt("AdGamesHasSeeCount", i10).commit();
    }

    public void setFbaAdGamesConfig(String str, String str2, int i10, int i11) {
        if (this.prefsData == null) {
            return;
        }
        String str3 = "FbaAdGame_" + str + "_" + str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("howTimes", i10);
            jSONObject.put("adCount", i11);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.prefsData.edit().putString(str3, jSONObject.toString()).apply();
    }

    public void setGoldFingerAdGamesConfig(String str, String str2, int i10, int i11) {
        if (this.prefsData == null) {
            return;
        }
        String str3 = "GoldFinger_" + str + "_" + str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("howTimes", i10);
            jSONObject.put("adCount", i11);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.prefsData.edit().putString(str3, jSONObject.toString()).apply();
    }

    public void setHintShown() {
        this.prefsData.edit().putBoolean("fullscreen_hint_shown", true).commit();
    }

    public void setLastLaunchGamesMode(String str, int i10) {
        if (this.prefsData == null) {
            return;
        }
        this.prefsData.edit().putInt("gm_" + str, i10).apply();
    }

    public void setSlotTipIds(Set<String> set) {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putStringSet("SlotTipIds", set).commit();
    }

    public void setSlotTipShow(boolean z10) {
        SharedPreferences sharedPreferences = this.prefsData;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putBoolean("SlotTipShow", z10).commit();
    }

    public void setSspAdConfig(int i10) {
        if (this.prefsData == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adCount", i10);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.prefsData.edit().putString("ssp_cfg", jSONObject.toString()).apply();
    }

    public UserPrefs(Context context, SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            this.prefsData = sharedPreferences;
        } else {
            this.prefsData = context.getSharedPreferences(context.getPackageName() + "_preferences", 4);
        }
        if (this.prefsData == null) {
            this.prefsData = PreferenceManager.getDefaultSharedPreferences(context);
        }
        this.res = context.getResources();
        this.fullScreen = this.prefsData.getBoolean("fullScreen", true);
        this.hideNav = this.prefsData.getBoolean("hideNav", false);
        this.hintShown_fullScreen = this.prefsData.getBoolean("fullscreen_hint_shown", false);
        setFullScreenAndHideNav();
    }

    public String getAdGamesConfig(String str) {
        if (this.prefsData == null) {
            return "";
        }
        return this.prefsData.getString("SingleGame_" + str, "");
    }

    public void removeAdGamesConfig(String str) {
        if (this.prefsData == null) {
            return;
        }
        this.prefsData.edit().remove("SingleGame_" + str).apply();
    }

    public void setAdGamesConfig(String str, int i10) {
        if (this.prefsData == null) {
            return;
        }
        String str2 = "SingleGame_" + str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adCount", i10);
            jSONObject.put("lastTime", System.currentTimeMillis() + "");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        this.prefsData.edit().putString(str2, jSONObject.toString()).apply();
    }
}
