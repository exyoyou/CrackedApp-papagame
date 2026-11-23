package com.kwad.sdk.i;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class e implements com.kwad.sdk.i.b {
    public double aJV;
    public int bim;
    public b bin;
    public a bio;

    public static class a implements com.kwad.sdk.i.b {
        public List<String> bip;
        public List<String> biq;
        public List<String> bir;

        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.bip = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("levelList");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    this.bip.add(jSONArrayOptJSONArray.optString(i10));
                }
            }
            this.biq = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("tagList");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    this.biq.add(jSONArrayOptJSONArray2.optString(i11));
                }
            }
            this.bir = new ArrayList();
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("keywordList");
            if (jSONArrayOptJSONArray3 != null) {
                for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                    this.bir.add(jSONArrayOptJSONArray3.optString(i12));
                }
            }
        }

        @Override // com.kwad.sdk.i.b
        public final JSONObject toJson() {
            return null;
        }
    }

    public static class b implements com.kwad.sdk.i.b {
        public static int OK = 1;
        public static int bis = -1;
        public static int bit;
        public List<String> bds;
        public List<String> bdt;
        public List<String> biu;
        public int biv = bis;

        public final boolean RK() {
            return this.biv == OK;
        }

        public final void cc(boolean z10) {
            this.biv = z10 ? OK : bit;
        }

        public final void parseJson(@Nullable JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.bds = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("appIdList");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    this.bds.add(jSONArrayOptJSONArray.optString(i10));
                }
            }
            this.bdt = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("sdkVersionList");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    this.bdt.add(jSONArrayOptJSONArray2.optString(i11));
                }
            }
            this.biu = new ArrayList();
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("deviceIdList");
            if (jSONArrayOptJSONArray3 != null) {
                for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                    this.biu.add(jSONArrayOptJSONArray3.optString(i12));
                }
            }
        }

        @Override // com.kwad.sdk.i.b
        public final JSONObject toJson() {
            return null;
        }
    }

    e() {
    }

    public final void parseJson(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.aJV = jSONObject.optDouble("ratio");
        this.bim = jSONObject.optInt("kcType", 1);
        b bVar = new b();
        this.bin = bVar;
        bVar.parseJson(jSONObject.optJSONObject("scopeConfig"));
        a aVar = new a();
        this.bio = aVar;
        aVar.parseJson(jSONObject.optJSONObject("logConfig"));
    }

    @Override // com.kwad.sdk.i.b
    public final JSONObject toJson() {
        return null;
    }
}
