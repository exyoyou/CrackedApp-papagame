package com.kwad.sdk.api.loader;

import com.haima.hmcp.ConstantsInternal;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class l {
    public static int aIm;

    static class a {
        private int aIn;
        private int aIo;
        private String aIp;
        private String aIq;
        private long aIr;
        private int aIs;
        private String aIt;

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a av(long j10) {
            this.aIr = j10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a db(String str) {
            this.aIp = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dc(String str) {
            this.aIq = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dd(String str) {
            this.aIt = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dp(int i10) {
            this.aIn = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dq(int i10) {
            this.aIo = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a dr(int i10) {
            this.aIs = i10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("load_status", Integer.valueOf(this.aIn));
                jSONObject.putOpt("update_count", Integer.valueOf(this.aIo));
                jSONObject.putOpt("dynamic_version", this.aIp);
                jSONObject.putOpt(COSHttpResponseKey.DOWNLOAD_URL, this.aIq);
                jSONObject.putOpt("duration_ms", Long.valueOf(this.aIr));
                jSONObject.putOpt("error_code", Integer.valueOf(this.aIs));
                jSONObject.putOpt(ConstantsInternal.KEY_ERROR_MSG, this.aIt);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public final String toString() {
            return "MonitorInfo{load_status=" + this.aIn + ", update_count=" + this.aIo + ", dynamic_version='" + this.aIp + "', download_url='" + this.aIq + "', duration_ms=" + this.aIr + ", error_code=" + this.aIs + ", error_msg='" + this.aIt + "'}";
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    public static void a(com.kwad.sdk.api.loader.a.C0917a c0917a) {
        aIm++;
        a(1, c0917a, 0L, 0, "");
    }

    public static void b(com.kwad.sdk.api.loader.a.C0917a c0917a) {
        a(5, c0917a, 0L, 0, "");
    }

    public static void b(com.kwad.sdk.api.loader.a.C0917a c0917a, long j10) {
        a(6, c0917a, j10, 0, "");
    }

    public static void a(com.kwad.sdk.api.loader.a.C0917a c0917a, long j10) {
        a(2, c0917a, j10, 0, "");
    }

    public static void b(com.kwad.sdk.api.loader.a.C0917a c0917a, int i10, String str) {
        a(7, c0917a, 0L, i10, str);
    }

    public static void a(com.kwad.sdk.api.loader.a.C0917a c0917a, long j10, String str) {
        a(3, c0917a, j10, 0, str);
    }

    public static void a(com.kwad.sdk.api.loader.a.C0917a c0917a, int i10, String str) {
        a(4, c0917a, 0L, i10, str);
    }

    private static void a(int i10, com.kwad.sdk.api.loader.a.C0917a c0917a, long j10, int i11, String str) {
        if (c0917a == null) {
            return;
        }
        try {
            JSONObject json = new a((byte) 0).dp(i10).dq(aIm).db(c0917a.sdkVersion).dc(c0917a.aHD).av(j10).dr(i11).dd(str).toJson();
            Objects.toString(json);
            com.kwad.sdk.api.c.g("reportDynamicUpdate", json);
        } catch (Throwable unused) {
        }
    }
}
