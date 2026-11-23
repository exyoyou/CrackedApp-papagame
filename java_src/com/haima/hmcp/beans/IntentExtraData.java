package com.haima.hmcp.beans;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class IntentExtraData implements Serializable {
    private String appLink;
    public Map<String, Boolean> booleanExtra;
    public Map<String, String> componentNameExtra;
    public Map<String, Float[]> floatArrayExtra;
    public Map<String, Float> floatExtra;
    public Map<String, List<Float>> floatListExtra;
    public Map<String, Integer[]> integerArrayExtra;
    public Map<String, Integer> integerExtra;
    public Map<String, List<Integer>> integerListExtra;
    public Map<String, Long[]> longArrayExtra;
    public Map<String, Long> longExtra;
    public Map<String, List<Long>> longListExtra;
    public Map<String, String[]> stringArrayExtra;
    public Map<String, String> stringExtra;
    public Map<String, List<String>> stringListExtra;
    public Map<String, String> uriExtra;

    public String getAppLink() {
        return this.appLink;
    }

    public Map<String, Boolean> getBooleanExtra() {
        return this.booleanExtra;
    }

    public Map<String, String> getComponentNameExtra() {
        return this.componentNameExtra;
    }

    public Map<String, Float[]> getFloatArrayExtra() {
        return this.floatArrayExtra;
    }

    public Map<String, Float> getFloatExtra() {
        return this.floatExtra;
    }

    public Map<String, List<Float>> getFloatListExtra() {
        return this.floatListExtra;
    }

    public Map<String, Integer[]> getIntegerArrayExtra() {
        return this.integerArrayExtra;
    }

    public Map<String, Integer> getIntegerExtra() {
        return this.integerExtra;
    }

    public Map<String, List<Integer>> getIntegerListExtra() {
        return this.integerListExtra;
    }

    public JSONObject getIntentExtraDataJson() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.booleanExtra != null) {
                jSONObject.put("booleanExtra", new JSONObject(this.booleanExtra));
            }
            if (this.integerExtra != null) {
                jSONObject.put("integerExtra", new JSONObject(this.integerExtra));
            }
            if (this.integerArrayExtra != null) {
                jSONObject.put("integerArrayExtra", new JSONObject(this.integerArrayExtra));
            }
            if (this.integerListExtra != null) {
                jSONObject.put("integerListExtra", new JSONObject(this.integerListExtra));
            }
            if (this.stringExtra != null) {
                jSONObject.put("stringExtra", new JSONObject(this.stringExtra));
            }
            if (this.stringArrayExtra != null) {
                jSONObject.put("stringArrayExtra", new JSONObject(this.stringArrayExtra));
            }
            if (this.stringListExtra != null) {
                jSONObject.put("stringListExtra", new JSONObject(this.stringListExtra));
            }
            if (this.floatExtra != null) {
                jSONObject.put("floatExtra", new JSONObject(this.floatExtra));
            }
            if (this.floatArrayExtra != null) {
                jSONObject.put("floatArrayExtra", new JSONObject(this.floatArrayExtra));
            }
            if (this.floatListExtra != null) {
                jSONObject.put("floatListExtra", new JSONObject(this.floatListExtra));
            }
            if (this.longExtra != null) {
                jSONObject.put("longExtra", new JSONObject(this.longExtra));
            }
            if (this.longArrayExtra != null) {
                jSONObject.put("longArrayExtra", new JSONObject(this.longArrayExtra));
            }
            if (this.longListExtra != null) {
                jSONObject.put("longListExtra", new JSONObject(this.longListExtra));
            }
            if (this.componentNameExtra != null) {
                jSONObject.put("componentNameExtra", new JSONObject(this.componentNameExtra));
            }
            if (this.uriExtra != null) {
                jSONObject.put("uriExtra", new JSONObject(this.uriExtra));
            }
            if (!TextUtils.isEmpty(this.appLink)) {
                jSONObject.put("appLink", this.appLink);
            }
            return jSONObject;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Map<String, Long[]> getLongArrayExtra() {
        return this.longArrayExtra;
    }

    public Map<String, Long> getLongExtra() {
        return this.longExtra;
    }

    public Map<String, List<Long>> getLongListExtra() {
        return this.longListExtra;
    }

    public Map<String, String[]> getStringArrayExtra() {
        return this.stringArrayExtra;
    }

    public Map<String, String> getStringExtra() {
        return this.stringExtra;
    }

    public Map<String, List<String>> getStringListExtra() {
        return this.stringListExtra;
    }

    public Map<String, String> getUriExtra() {
        return this.uriExtra;
    }

    public void setAppLink(String str) {
        this.appLink = str;
    }

    public void setBooleanExtra(Map<String, Boolean> map) {
        this.booleanExtra = map;
    }

    public void setComponentNameExtra(Map<String, String> map) {
        this.componentNameExtra = map;
    }

    public void setFloatArrayExtra(Map<String, Float[]> map) {
        this.floatArrayExtra = map;
    }

    public void setFloatExtra(Map<String, Float> map) {
        this.floatExtra = map;
    }

    public void setFloatListExtra(Map<String, List<Float>> map) {
        this.floatListExtra = map;
    }

    public void setIntegerArrayExtra(Map<String, Integer[]> map) {
        this.integerArrayExtra = map;
    }

    public void setIntegerExtra(Map<String, Integer> map) {
        this.integerExtra = map;
    }

    public void setIntegerListExtra(Map<String, List<Integer>> map) {
        this.integerListExtra = map;
    }

    public void setLongArrayExtra(Map<String, Long[]> map) {
        this.longArrayExtra = map;
    }

    public void setLongExtra(Map<String, Long> map) {
        this.longExtra = map;
    }

    public void setLongListExtra(Map<String, List<Long>> map) {
        this.longListExtra = map;
    }

    public void setStringArrayExtra(Map<String, String[]> map) {
        this.stringArrayExtra = map;
    }

    public void setStringExtra(Map<String, String> map) {
        this.stringExtra = map;
    }

    public void setStringListExtra(Map<String, List<String>> map) {
        this.stringListExtra = map;
    }

    public void setUriExtra(Map<String, String> map) {
        this.uriExtra = map;
    }

    public String toString() {
        return "IntentExtraData{booleanExtra=" + this.booleanExtra + ", integerExtra=" + this.integerExtra + ", integerArrayExtra=" + this.integerArrayExtra + ", integerListExtra=" + this.integerListExtra + ", stringExtra=" + this.stringExtra + ", stringArrayExtra=" + this.stringArrayExtra + ", stringListExtra=" + this.stringListExtra + ", floatExtra=" + this.floatExtra + ", floatArrayExtra=" + this.floatArrayExtra + ", floatListExtra=" + this.floatListExtra + ", longExtra=" + this.longExtra + ", longArrayExtra=" + this.longArrayExtra + ", longListExtra=" + this.longListExtra + ", componentNameExtra=" + this.componentNameExtra + ", uriExtra=" + this.uriExtra + ", appLink=" + this.appLink + '}';
    }
}
