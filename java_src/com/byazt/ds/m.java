package com.byazt.ds;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.byazt.quv.AbsServerManager;
import com.umeng.analytics.pro.bm;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 130})
public class m extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13149a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13150n;

    public m(Context context, x xVar) {
        super(false, false);
        this.f13150n = context;
        this.f13149a = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        int i10;
        ApplicationInfo applicationInfo;
        int i11;
        String packageName = this.f13150n.getPackageName();
        PackageInfo packageInfo = null;
        if (TextUtils.isEmpty(this.f13149a.lr())) {
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        } else {
            if (com.byazt.yv.da.tt) {
                com.byazt.yv.da.c("has zijie pkg", null);
            }
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, this.f13149a.lr());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            packageInfo = this.f13150n.getPackageManager().getPackageInfo(packageName, 0);
        } catch (Throwable unused) {
        }
        if (packageInfo != null) {
            try {
                i10 = packageInfo.versionCode;
            } catch (Throwable th) {
                com.byazt.yv.da.tt(th);
                return false;
            }
        } else {
            i10 = 0;
        }
        if (TextUtils.isEmpty(this.f13149a.zb())) {
            jSONObject.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        } else {
            jSONObject.put("app_version", this.f13149a.zb());
        }
        if (TextUtils.isEmpty(this.f13149a.pf())) {
            jSONObject.put("app_version_minor", "");
        } else {
            jSONObject.put("app_version_minor", this.f13149a.pf());
        }
        if (this.f13149a.h() != 0) {
            jSONObject.put("version_code", this.f13149a.h());
        } else {
            jSONObject.put("version_code", i10);
        }
        if (this.f13149a.d() != 0) {
            jSONObject.put("update_version_code", this.f13149a.d());
        } else {
            jSONObject.put("update_version_code", i10);
        }
        if (this.f13149a.eo() != 0) {
            jSONObject.put("manifest_version_code", this.f13149a.eo());
        } else {
            jSONObject.put("manifest_version_code", i10);
        }
        if (!TextUtils.isEmpty(this.f13149a.md())) {
            jSONObject.put("app_name", this.f13149a.md());
        }
        if (!TextUtils.isEmpty(this.f13149a.or())) {
            jSONObject.put("tweaked_channel", this.f13149a.or());
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (i11 = applicationInfo.labelRes) <= 0) {
            return true;
        }
        jSONObject.put(bm.f84416s, this.f13150n.getString(i11));
        return true;
    }
}
