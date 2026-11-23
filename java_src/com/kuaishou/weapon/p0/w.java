package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.kuaishou.weapon.p0.jni.A;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes3.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f74942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f74944c;

    public w(Context context) {
        this.f74943b = 0;
        this.f74942a = context;
        h hVarA = h.a(context, "re_po_rt");
        this.f74944c = hVarA;
        if (hVarA != null) {
            this.f74943b = hVarA.b(dd.f74741r, 0);
        }
    }

    public JSONArray a(int i10) {
        try {
            new A(this.f74942a, i10);
            JSONArray jsonObject = A.getJsonObject();
            JSONArray jSONArray = new JSONArray();
            if (jsonObject != null) {
                for (int i11 = 0; i11 < jsonObject.length(); i11++) {
                    jSONArray.put(jsonObject.get(i11));
                }
                A.setJsonObject(null);
                return jSONArray;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public JSONArray b(int i10) {
        try {
            return c(i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    public JSONArray c(int i10) {
        return d(i10);
    }

    public JSONArray d(int i10) {
        String[] packagesForUid;
        JSONArray jSONArray = new JSONArray();
        try {
            PackageManager packageManager = this.f74942a.getPackageManager();
            for (int i11 = 1000; i11 <= 19999; i11++) {
                try {
                    packagesForUid = packageManager.getPackagesForUid(i11);
                } catch (Exception unused) {
                    packagesForUid = null;
                }
                if (packagesForUid != null) {
                    for (String str : packagesForUid) {
                        try {
                            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                            if (i10 != 1 || (packageInfo.applicationInfo.flags & 1) != 1) {
                                v vVar = new v(packageInfo, this.f74942a);
                                vVar.h();
                                jSONArray.put(vVar.k());
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
        } catch (Exception unused3) {
        }
        return jSONArray;
    }
}
