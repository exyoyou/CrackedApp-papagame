package com.kwad.sdk.core.b.a;

import com.kwad.sdk.crash.message.JavaBackTraceElement;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class hj implements com.kwad.sdk.core.d<JavaBackTraceElement> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((JavaBackTraceElement) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((JavaBackTraceElement) bVar, jSONObject);
    }

    private static void a(JavaBackTraceElement javaBackTraceElement, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        javaBackTraceElement.mDeclaringClass = jSONObject.optString("mDeclaringClass");
        if (JSONObject.NULL.toString().equals(javaBackTraceElement.mDeclaringClass)) {
            javaBackTraceElement.mDeclaringClass = "";
        }
        javaBackTraceElement.mIsTitle = jSONObject.optBoolean("mIsTitle");
        javaBackTraceElement.mIsCausedBy = jSONObject.optBoolean("mIsCausedBy");
        javaBackTraceElement.mIsNative = jSONObject.optBoolean("mIsNative");
    }

    private static JSONObject b(JavaBackTraceElement javaBackTraceElement, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = javaBackTraceElement.mDeclaringClass;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mDeclaringClass", javaBackTraceElement.mDeclaringClass);
        }
        boolean z10 = javaBackTraceElement.mIsTitle;
        if (z10) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsTitle", z10);
        }
        boolean z11 = javaBackTraceElement.mIsCausedBy;
        if (z11) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsCausedBy", z11);
        }
        boolean z12 = javaBackTraceElement.mIsNative;
        if (z12) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mIsNative", z12);
        }
        return jSONObject;
    }
}
