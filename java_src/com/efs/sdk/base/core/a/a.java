package com.efs.sdk.base.core.a;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.http.HttpResponse;
import com.windmill.sdk.WMConstants;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile long f26228b = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f26229a;

    /* JADX INFO: renamed from: com.efs.sdk.base.core.a.a$a, reason: collision with other inner class name */
    static class C0547a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f26230a = new a(0);
    }

    /* synthetic */ a(byte b10) {
        this();
    }

    public static a a() {
        return C0547a.f26230a;
    }

    public static long b() {
        return f26228b == -1 ? System.currentTimeMillis() : SystemClock.elapsedRealtime() + f26228b;
    }

    private a() {
        this.f26229a = true;
    }

    @NonNull
    public final HttpResponse a(String str, c cVar, File file, boolean z10) {
        String strB = cVar.b();
        String strA = a(str, cVar);
        if (this.f26229a) {
            Log.i("efs.px.api", "Upload file, url is ".concat(String.valueOf(strA)));
        }
        HashMap map = new HashMap(1);
        map.put("wpk-header", strB);
        com.efs.sdk.base.core.util.a.d dVarA = new com.efs.sdk.base.core.util.a.d(strA).a(map);
        dVarA.f26392a.f26387d = file;
        com.efs.sdk.base.core.util.a.d dVarA2 = dVarA.a("type", cVar.f26239h);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cVar.f26244m);
        return dVarA2.a("size", sb2.toString()).a("flow_limit", Boolean.toString(z10)).a(d.a()).a().b();
    }

    public static String a(@NonNull String str, @NonNull c cVar) {
        String str2;
        byte b10 = cVar.f26238g;
        if (b10 == 1) {
            str2 = "/apm_logs";
        } else if (b10 != 2) {
            str2 = b10 != 3 ? "/api/v1/raw/upload" : "/api/v1/mix/upload";
        } else {
            str2 = "/perf_upload";
        }
        return str + str2;
    }

    static void a(@Nullable HttpResponse httpResponse) {
        if (httpResponse == null || !httpResponse.succ || TextUtils.isEmpty(httpResponse.data)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(httpResponse.data);
            String strOptString = jSONObject.optString("code", WMConstants.TIMER_STAGE_NONE);
            httpResponse.setBizCode(strOptString);
            if (!"0".equals(strOptString)) {
                httpResponse.succ = false;
            }
            if (jSONObject.has("cver")) {
                ((Map) httpResponse.extra).put("cver", jSONObject.getString("cver"));
            }
            long j10 = jSONObject.getLong("stm") * 1000;
            if (Math.abs(j10 - b()) > 1500000) {
                f26228b = j10 - SystemClock.elapsedRealtime();
            }
        } catch (Throwable th) {
            Log.e("efs.px.api", "checkPxReturn error", th);
        }
    }
}
