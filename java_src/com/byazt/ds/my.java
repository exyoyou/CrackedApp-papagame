package com.byazt.ds;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 145})
public class my extends ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13151n;

    public my(Context context) {
        super(true, false);
        this.f13151n = context;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        Signature signature;
        String strTt = null;
        try {
            packageInfo = this.f13151n.getPackageManager().getPackageInfo(this.f13151n.getPackageName(), 64);
        } catch (Throwable th) {
            com.byazt.yv.da.tt(th);
            packageInfo = null;
        }
        if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
            strTt = com.byazt.yv.ve.tt(signature.toByteArray());
        }
        if (strTt == null) {
            return true;
        }
        jSONObject.put("sig_hash", strTt);
        return true;
    }
}
