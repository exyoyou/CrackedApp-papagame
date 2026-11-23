package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import java.io.File;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f3690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PackageInfo f3691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f3692c;

    static {
        new c();
    }

    private c() {
        UUID.randomUUID().toString();
    }

    public static c a(Context context, String str) {
        c cVar = new c(context);
        cVar.f3690a = new File(str);
        cVar.f3691b = d.b(context, str);
        return cVar;
    }

    public Bitmap b() throws PackageManager.NameNotFoundException {
        try {
            if (this.f3692c != null && f() && a()) {
                String absolutePath = this.f3690a.getAbsolutePath();
                PackageManager packageManager = this.f3692c.getPackageManager();
                ApplicationInfo applicationInfo = this.f3691b.applicationInfo;
                if (applicationInfo != null) {
                    applicationInfo.sourceDir = absolutePath;
                    applicationInfo.publicSourceDir = absolutePath;
                    Drawable applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                    if (Build.VERSION.SDK_INT >= 26 && !(applicationIcon instanceof BitmapDrawable)) {
                        if (q.a(applicationIcon)) {
                            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{r.a(applicationIcon).getBackground(), r.a(applicationIcon).getForeground()});
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(layerDrawable.getIntrinsicWidth(), layerDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(bitmapCreateBitmap);
                            layerDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                            layerDrawable.draw(canvas);
                            return bitmapCreateBitmap;
                        }
                    }
                    return ((BitmapDrawable) applicationIcon).getBitmap();
                }
            }
            throw new PackageManager.NameNotFoundException("app name(" + c() + ") not found");
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new PackageManager.NameNotFoundException("app name2(" + c() + ") not found");
        }
    }

    public String c() {
        return a() ? this.f3690a.getAbsolutePath() : "";
    }

    public String d() throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo;
        try {
            if (this.f3692c != null && f() && a() && (applicationInfo = this.f3691b.applicationInfo) != null) {
                applicationInfo.sourceDir = this.f3690a.getAbsolutePath();
                applicationInfo.publicSourceDir = this.f3690a.getAbsolutePath();
                return (String) this.f3691b.applicationInfo.loadLabel(this.f3692c.getPackageManager());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        throw new PackageManager.NameNotFoundException("app name(" + c() + ") not found");
    }

    public String e() throws PackageManager.NameNotFoundException {
        if (f() && a()) {
            return this.f3691b.packageName;
        }
        throw new PackageManager.NameNotFoundException("app name(" + c() + ") not found");
    }

    public boolean f() {
        return this.f3691b != null;
    }

    public boolean g() {
        if (this.f3692c == null) {
            return false;
        }
        try {
            return d.c(this.f3692c, e());
        } catch (Exception unused) {
            return false;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ApkFileLoader {");
        sb2.append("existApkFile = ");
        sb2.append(a());
        sb2.append(",");
        sb2.append("apkFilePath = ");
        sb2.append(c());
        sb2.append(",");
        try {
            sb2.append("getAppName = ");
            sb2.append(d());
            sb2.append(",");
            sb2.append("getApkIcon = ");
            sb2.append(b());
            sb2.append(",");
            sb2.append("getPackageName = ");
            sb2.append(e());
            sb2.append(",");
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        sb2.append("isInstalled = ");
        sb2.append(g());
        sb2.append(" }");
        return sb2.toString();
    }

    private c(Context context) {
        UUID.randomUUID().toString();
        this.f3692c = context;
    }

    public boolean a() {
        File file = this.f3690a;
        if (file != null) {
            return file.exists();
        }
        return false;
    }
}
