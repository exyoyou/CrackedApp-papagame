package com.papa.sim.statistic;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f77188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f77189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f77190c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f77191d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Drawable f77192e;

        public a() {
        }

        public String a() {
            return this.f77190c;
        }

        public Drawable b() {
            return this.f77192e;
        }

        public String c() {
            return this.f77191d;
        }

        public int d() {
            return this.f77189b;
        }

        public String e() {
            return this.f77188a;
        }

        public void f(String str) {
            this.f77190c = str;
        }

        public void g(Drawable drawable) {
            this.f77192e = drawable;
        }

        public void h(String str) {
            this.f77191d = str;
        }

        public void i(int i10) {
            this.f77189b = i10;
        }

        public void j(String str) {
            this.f77188a = str;
        }
    }

    public boolean a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 1);
            return packageInfo != null && packageInfo.activities.length > 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public a b(Context context, String str) {
        a aVar = new a();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 1);
            if (packageInfo != null) {
                String str2 = packageInfo.versionName;
                int i10 = packageInfo.versionCode;
                String string = packageInfo.applicationInfo.loadLabel(context.getPackageManager()).toString();
                String str3 = packageInfo.packageName;
                aVar.i(i10);
                aVar.j(str2);
                aVar.f(string);
                aVar.h(str3);
                aVar.g(null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }
}
