package com.sigmob.sdk.mraid2;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, String> f81247a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, a> f81248b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, a> f81249c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f81250d;

    public interface a {
        void valueChange(JSONObject object);
    }

    p(Context context) {
        this.f81250d = context;
    }

    public String a(int type, String key) {
        if (type == 1) {
            return (String) n.b(this.f81250d, key, "");
        }
        Map<String, String> map = f81247a;
        return map.get(key) == null ? "" : map.get(key);
    }

    public int b(int type) {
        if (type != 1) {
            return f81247a.size();
        }
        Map<String, ?> mapA = n.a(this.f81250d);
        if (mapA == null) {
            return 0;
        }
        return mapA.size();
    }

    public void a(int type) {
        if (type == 1) {
            Map<String, ?> mapA = n.a(this.f81250d);
            if (mapA != null && !mapA.isEmpty()) {
                for (Map.Entry<String, ?> entry : mapA.entrySet()) {
                    a aVar = this.f81248b.get(entry.getKey());
                    if (aVar != null) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("key", entry.getKey());
                            jSONObject.put("newValue", "");
                            jSONObject.put("oldValue", entry.getValue());
                        } catch (JSONException e10) {
                            e10.printStackTrace();
                        }
                        aVar.valueChange(jSONObject);
                    }
                }
            }
            n.b(this.f81250d);
            return;
        }
        Map<String, String> map = f81247a;
        if (map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            a aVar2 = this.f81249c.get(entry2.getKey());
            if (aVar2 != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("key", entry2.getKey());
                    jSONObject2.put("newValue", "");
                    jSONObject2.put("oldValue", entry2.getValue());
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
                aVar2.valueChange(jSONObject2);
            }
        }
        f81247a.clear();
    }

    public void b(int type, String key) {
        a aVar;
        a aVar2;
        if (type == 1) {
            String str = (String) n.b(this.f81250d, key, "");
            if (!TextUtils.isEmpty(str) && (aVar2 = this.f81248b.get(key)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("key", key);
                    jSONObject.put("newValue", "");
                    jSONObject.put("oldValue", str);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                aVar2.valueChange(jSONObject);
            }
            n.b(this.f81250d, key);
            return;
        }
        String str2 = f81247a.get(key);
        if (!TextUtils.isEmpty(str2) && (aVar = this.f81249c.get(key)) != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("key", key);
                jSONObject2.put("newValue", "");
                jSONObject2.put("oldValue", str2);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            aVar.valueChange(jSONObject2);
        }
        f81247a.remove(key);
    }

    public void a(int type, String key, a listener) {
        (type == 1 ? this.f81248b : this.f81249c).put(key, listener);
    }

    public void a(int type, String key, String value) {
        a aVar;
        a aVar2;
        if (type == 1) {
            String str = (String) n.b(this.f81250d, key, "");
            if (str != null && !str.equals(value) && (aVar2 = this.f81248b.get(key)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("key", key);
                    jSONObject.put("newValue", value);
                    jSONObject.put("oldValue", str);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                aVar2.valueChange(jSONObject);
            }
            n.a(this.f81250d, key, value);
            return;
        }
        Map<String, String> map = f81247a;
        String str2 = map.get(key) != null ? map.get(key) : "";
        if (str2 != null && !str2.equals(value) && (aVar = this.f81249c.get(key)) != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("key", key);
                jSONObject2.put("newValue", value);
                jSONObject2.put("oldValue", str2);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            aVar.valueChange(jSONObject2);
        }
        f81247a.put(key, value);
    }
}
