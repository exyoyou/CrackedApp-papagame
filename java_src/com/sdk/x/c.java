package com.sdk.x;

import android.content.Context;
import com.sdk.base.module.manager.SDKManager;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.sdk.e.a<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f78642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f78643b;

    public c(a aVar, int i10) {
        this.f78643b = aVar;
        this.f78642a = i10;
    }

    @Override // com.sdk.e.a
    public void a(int i10, int i11, String str) {
        this.f78643b.a(i10, i11, str);
        String str2 = a.f78620h;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onFailure: ");
        sb2.append(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object] */
    @Override // com.sdk.e.a
    public void onSuccess(int i10, String str, int i11, Object obj, String str2) {
        com.sdk.p.b.b(this.f78643b.f78626b);
        if (i10 == 0) {
            try {
                String string = obj.toString();
                Context context = this.f78643b.f78626b;
                obj = com.sdk.s.a.a(String.valueOf((Object) obj));
                if (obj == 0) {
                    this.f78643b.a(1, 302001, "SDK解密异常");
                    return;
                }
                if (SDKManager.useCache()) {
                    Context context2 = this.f78643b.f78626b;
                    int i12 = this.f78642a;
                    String strA = com.sdk.b.a.a(str, string, str2, com.sdk.t.a.f78590g);
                    if (com.sdk.r.a.b(strA).booleanValue()) {
                        String strA2 = com.sdk.b.a.a(i12, "CUCC");
                        if (com.sdk.r.a.b(strA2).booleanValue()) {
                            com.sdk.j.a.b(context2, strA2, strA);
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject((String) obj);
                if (this.f78642a == 1) {
                    jSONObject.remove("fakeMobile");
                    obj = jSONObject.toString();
                }
            } catch (Exception unused) {
            }
        }
        this.f78643b.a(i10, str, i11, obj, str2);
        String str3 = a.f78620h;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getAuthoriseCode: ");
        sb2.append(i10);
    }
}
