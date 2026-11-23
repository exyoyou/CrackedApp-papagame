package com.qq.e.comm.constants;

import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LoadAdParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LoginType f78296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f78297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f78299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f78300e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JSONObject f78301f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final JSONObject f78302g = new JSONObject();

    public Map getDevExtra() {
        return this.f78300e;
    }

    public String getDevExtraJsonString() {
        try {
            Map<String, String> map = this.f78300e;
            return (map == null || map.size() <= 0) ? "" : new JSONObject(this.f78300e).toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public JSONObject getExtraInfo() {
        return this.f78301f;
    }

    @Deprecated
    public String getLoginAppId() {
        return this.f78297b;
    }

    @Deprecated
    public String getLoginOpenid() {
        return this.f78298c;
    }

    @Deprecated
    public LoginType getLoginType() {
        return this.f78296a;
    }

    public JSONObject getParams() {
        return this.f78302g;
    }

    @Deprecated
    public String getUin() {
        return this.f78299d;
    }

    public void setDevExtra(Map<String, String> map) {
        this.f78300e = map;
    }

    public void setExtraInfo(JSONObject jSONObject) {
        this.f78301f = jSONObject;
    }

    @Deprecated
    public void setLoginAppId(String str) {
        this.f78297b = str;
        GDTLogger.e("注意！LoadAdParams#setLoginAppId 已废弃");
    }

    @Deprecated
    public void setLoginOpenid(String str) {
        this.f78298c = str;
        GDTLogger.e("注意！LoadAdParams#setLoginOpenid 已废弃");
    }

    @Deprecated
    public void setLoginType(LoginType loginType) {
        this.f78296a = loginType;
        GDTLogger.e("注意！LoadAdParams#setLoginType 已废弃");
    }

    @Deprecated
    public void setUin(String str) {
        this.f78299d = str;
        GDTLogger.e("注意！LoadAdParams#setUin 已废弃");
    }

    public String toString() {
        return "LoadAdParams{, loginType=" + this.f78296a + ", loginAppId=" + this.f78297b + ", loginOpenid=" + this.f78298c + ", uin=" + this.f78299d + ", passThroughInfo=" + this.f78300e + ", extraInfo=" + this.f78301f + '}';
    }
}
