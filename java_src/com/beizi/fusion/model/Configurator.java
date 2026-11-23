package com.beizi.fusion.model;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class Configurator {

    @JsonNode(key = "checkInterval")
    private long checkInterval;

    @JsonNode(key = "configUrl")
    private String configUrl;

    @JsonNode(key = "configVersion")
    private String configVersion;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @JsonNode(key = "id")
    private String f10281id;

    @JsonNode(key = "job")
    private String job;

    @JsonNode(key = "s2sbidding")
    private S2SBiddingConfig s2sbidding;

    @JsonNode(key = "version")
    private String version;

    public static List<Configurator> arraySdkConfigFromData(String str) {
        try {
            return (List) JsonResolver.fromJson(str, new JsonResolver.TypeToken<ArrayList<Configurator>>() { // from class: com.beizi.fusion.model.Configurator.1
            }.getType());
        } catch (Exception unused) {
            return null;
        }
    }

    public static Configurator objectFromData(String str) {
        try {
            return (Configurator) JsonResolver.fromJson(str, Configurator.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public long getCheckInterval() {
        return this.checkInterval;
    }

    public String getConfigUrl() {
        return this.configUrl;
    }

    public String getConfigVersion() {
        return this.configVersion;
    }

    public String getId() {
        return this.f10281id;
    }

    public String getJob() {
        return this.job;
    }

    public S2SBiddingConfig getS2sbidding() {
        return this.s2sbidding;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCheckInterval(long j10) {
        this.checkInterval = j10;
    }

    public void setConfigUrl(String str) {
        this.configUrl = str;
    }

    public void setConfigVersion(String str) {
        this.configVersion = str;
    }

    public void setId(String str) {
        this.f10281id = str;
    }

    public void setJob(String str) {
        this.job = str;
    }

    public void setS2sbidding(S2SBiddingConfig s2SBiddingConfig) {
        this.s2sbidding = s2SBiddingConfig;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "Configurator{id='" + this.f10281id + "', job='" + this.job + "', version='" + this.version + "', configVersion='" + this.configVersion + "', checkInterval=" + this.checkInterval + ", configUrl='" + this.configUrl + "'}";
    }

    public static Configurator objectFromData(String str, String str2) {
        try {
            return (Configurator) JsonResolver.fromJson(new JSONObject(str).getString(str), Configurator.class);
        } catch (JSONException | Exception unused) {
            return null;
        }
    }

    public static List<Configurator> arraySdkConfigFromData(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return (List) JsonResolver.fromJson(jSONObject.getJSONArray(str2).toString(), new JsonResolver.TypeToken<ArrayList<Configurator>>() { // from class: com.beizi.fusion.model.Configurator.2
            }.getType());
        } catch (JSONException | Exception unused) {
            return new ArrayList();
        }
    }
}
