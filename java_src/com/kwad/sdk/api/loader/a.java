package com.kwad.sdk.api.loader;

import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: com.kwad.sdk.api.loader.a$a, reason: collision with other inner class name */
    static class C0917a {
        int aHC;
        String aHD;
        transient File aHE;
        long interval;
        String md5;
        String sdkVersion;

        C0917a() {
        }

        public final boolean HA() {
            return this.aHC == 1;
        }

        public final boolean HB() {
            return this.aHC == -1;
        }

        public final void parseJson(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.aHC = jSONObject.optInt("dynamicType");
            this.aHD = jSONObject.optString("dynamicUrl");
            this.md5 = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
            this.interval = jSONObject.optLong("interval");
            this.sdkVersion = jSONObject.optString("sdkVersion");
        }

        public final String toString() {
            return "Data{dynamicType=" + this.aHC + ", dynamicUrl='" + this.aHD + "', md5='" + this.md5 + "', interval=" + this.interval + ", sdkVersion='" + this.sdkVersion + "', downloadFile=" + this.aHE + '}';
        }
    }

    static class b {
        C0917a aHF;
        String errorMsg;
        long result;

        b() {
        }

        final boolean isLegal() {
            return this.result == 1 && this.aHF != null;
        }

        public final void parseJson(JSONObject jSONObject) {
            this.result = jSONObject.optLong("result");
            this.errorMsg = jSONObject.optString("errorMsg");
            C0917a c0917a = new C0917a();
            this.aHF = c0917a;
            c0917a.parseJson(jSONObject.optJSONObject("data"));
        }

        public final String toString() {
            return "UpdateData{result=" + this.result + ", errorMsg='" + this.errorMsg + "', data=" + this.aHF + '}';
        }
    }
}
