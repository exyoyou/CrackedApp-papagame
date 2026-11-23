package com.windmill.gromore;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.join.mgps.activity.TagGameListActivity_;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f86348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f86349d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f86351f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f86352g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    double f86346a = -1.0d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<a> f86347b = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f86350e = TTAdSdk.getAdManager().getSDKVersion();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f86353h = "5";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f86354i = "";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double f86355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<b> f86356b;

        public a(double d10, List<b> list) {
            this.f86355a = d10;
            this.f86356b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && a.class == obj.getClass()) {
                a aVar = (a) obj;
                if (Math.abs(aVar.f86355a - this.f86355a) < 0.001d && Objects.equals(this.f86356b, aVar.f86356b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Double.valueOf(this.f86355a), this.f86356b);
        }

        @NonNull
        public final String toString() {
            return "{price=" + this.f86355a + ", path=" + this.f86356b + '}';
        }

        public a(List<b> list) {
            this.f86356b = list;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f86357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f86358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f86359c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Integer f86360d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f86361e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f86362f;

        public b(String str, String str2, String str3, Integer num, String str4, int i10) {
            this.f86357a = str;
            this.f86358b = str2;
            this.f86359c = str3;
            this.f86360d = num;
            this.f86361e = str4;
            this.f86362f = i10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && b.class == obj.getClass()) {
                b bVar = (b) obj;
                if (Objects.equals(this.f86357a, bVar.f86357a) && Objects.equals(this.f86358b, bVar.f86358b) && Objects.equals(this.f86359c, bVar.f86359c) && Objects.equals(this.f86360d, bVar.f86360d) && this.f86362f == bVar.f86362f) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f86357a, this.f86358b, this.f86359c, this.f86360d, Integer.valueOf(this.f86362f));
        }

        @NonNull
        public final String toString() {
            return "{classPath='" + this.f86357a + "', fieldType='" + this.f86358b + "', fieldName='" + this.f86359c + "', index=" + this.f86360d + ", tag='" + this.f86361e + "', level=" + this.f86362f + '}';
        }
    }

    @NonNull
    private static JSONObject a(a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("price", aVar.f86355a);
        JSONArray jSONArray = new JSONArray();
        for (b bVar : aVar.f86356b) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("classPath", bVar.f86357a);
            jSONObject2.put("fieldType", bVar.f86358b);
            jSONObject2.put("fieldName", bVar.f86359c);
            jSONObject2.put("index", bVar.f86360d);
            jSONObject2.put(TagGameListActivity_.TAG_EXTRA, bVar.f86361e);
            jSONObject2.put("level", bVar.f86362f);
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("steps", jSONArray);
        return jSONObject;
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("highestPrice", this.f86346a);
            jSONObject.put("slotId", this.f86348c);
            jSONObject.put("gmVersion", this.f86350e);
            jSONObject.put("pluginVersion", this.f86349d);
            jSONObject.put("costTime", this.f86352g);
            jSONObject.put("rootObjectClasspath", this.f86351f);
            jSONObject.put("priceSource", this.f86353h);
            jSONObject.put("priceSourcePkg", this.f86354i);
            JSONArray jSONArray = new JSONArray();
            Iterator<a> it2 = this.f86347b.iterator();
            while (it2.hasNext()) {
                jSONArray.put(a(it2.next()));
            }
            jSONObject.put("allPathChains", jSONArray);
            return jSONObject.toString();
        } catch (Exception unused) {
            return super.toString();
        }
    }

    public final synchronized void a(List<b> list, double d10) {
        a aVar = new a(d10, new ArrayList(list));
        if (!this.f86347b.contains(aVar)) {
            this.f86347b.add(aVar);
        }
    }
}
