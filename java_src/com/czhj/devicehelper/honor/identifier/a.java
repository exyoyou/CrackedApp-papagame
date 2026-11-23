package com.czhj.devicehelper.honor.identifier;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: com.czhj.devicehelper.honor.identifier.a$a, reason: collision with other inner class name */
    public static final class C0540a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f25344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f25345b;
    }

    private a() {
    }

    public static C0540a a(Context context) {
        b bVar = new b();
        bVar.f25347b = context;
        if (!bVar.a(context)) {
            return null;
        }
        C0540a c0540a = bVar.f25346a;
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "oaid");
            if (!TextUtils.isEmpty(string)) {
                c0540a.f25345b = false;
                c0540a.f25344a = string;
                return c0540a;
            }
        } catch (Exception unused) {
        }
        try {
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            context.bindService(intent, bVar, 1);
            bVar.f25350e.await(2000L, TimeUnit.MILLISECONDS);
            bVar.a();
        } catch (Exception e10) {
            e10.printStackTrace();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getAdvertisingIdInfo error=");
            sb2.append(e10.getMessage());
            bVar.a();
        }
        return c0540a;
    }

    public static boolean b(Context context) {
        return new b().a(context);
    }
}
