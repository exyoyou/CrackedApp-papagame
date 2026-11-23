package com.yatoooon.screenadaptation;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.yatoooon.screenadaptation.a f90220a;

    static class a implements b {
        a() {
        }

        @Override // com.yatoooon.screenadaptation.e.b
        public com.yatoooon.screenadaptation.a a(Context context, int i10, int i11, float f10, String str) {
            return new d(context, i10, i11, f10, str);
        }
    }

    public interface b {
        com.yatoooon.screenadaptation.a a(Context context, int i10, int i11, float f10, String str);
    }

    public static com.yatoooon.screenadaptation.a a() {
        return f90220a;
    }

    public static void b(Context context) {
        c(context, new a());
    }

    public static void c(Context context, b bVar) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            applicationInfo = null;
        }
        f90220a = bVar.a(context, applicationInfo.metaData.getInt("designwidth"), applicationInfo.metaData.getInt("designdpi"), applicationInfo.metaData.getFloat("fontsize"), applicationInfo.metaData.getString("unit"));
    }
}
