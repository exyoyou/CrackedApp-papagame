package com.join.mgps.mod.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import com.baidu.mobads.sdk.internal.cb;
import com.join.mgps.Util.h1;
import com.join.mgps.mod.bean.ModMeta;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f71886l = "Plugin";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f71888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PackageInfo f71889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DexClassLoader f71890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AssetManager f71891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Resources f71892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f71893g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f71894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f71895i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f71896j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Object f71897k;

    class a extends DexClassLoader {
        a(String str, String str2, String str3, ClassLoader classLoader) {
            super(str, str2, str3, classLoader);
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str) throws ClassNotFoundException {
            try {
                return str.startsWith("com.google.protobuf") ? ModMeta.class.getClassLoader().loadClass(str) : super.loadClass(str);
            } catch (ClassNotFoundException unused) {
                return ModMeta.class.getClassLoader().loadClass(str);
            }
        }
    }

    public b(Context context) {
        this.f71887a = null;
        this.f71888b = context;
        this.f71887a = context.getDir(d.f71907i, 0).getAbsolutePath();
    }

    private AssetManager a(String str) {
        try {
            AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
            assetManager.getClass().getMethod("addAssetPath", String.class).invoke(assetManager, str);
            return assetManager;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private DexClassLoader b(String str) {
        File dir = this.f71888b.getDir("dex", 0);
        if (dir.exists()) {
            dir.delete();
        }
        dir.mkdirs();
        this.f71894h = dir.getAbsolutePath();
        return new a(str, this.f71894h, this.f71887a, this.f71888b.getClassLoader());
    }

    private Resources c(AssetManager assetManager) {
        Resources resources = this.f71888b.getResources();
        return new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration());
    }

    private void l(PackageInfo packageInfo, String str) {
        this.f71889c = packageInfo;
        this.f71890d = b(str);
        h1.e("Plugin", "dexClassLoader:" + this.f71890d);
        this.f71891e = a(str);
        h1.e("Plugin", "assetManager:" + this.f71891e);
        this.f71892f = c(this.f71891e);
        h1.e("Plugin", "resources:" + this.f71892f);
    }

    public AssetManager d() {
        return this.f71891e;
    }

    public DexClassLoader e() {
        return this.f71890d;
    }

    public String f() {
        return this.f71895i;
    }

    public String g() {
        return this.f71896j;
    }

    public Resources getResources() {
        return this.f71892f;
    }

    public PackageInfo h() {
        return this.f71889c;
    }

    public String i() {
        return this.f71889c.packageName;
    }

    public boolean j() {
        return this.f71889c != null && this.f71893g;
    }

    public void k(String str) {
        h1.e("Plugin", "loadApk " + str);
        PackageInfo packageArchiveInfo = this.f71888b.getPackageManager().getPackageArchiveInfo(str, 128);
        h1.e("Plugin", "loadApk packageInfo");
        if (packageArchiveInfo == null) {
            h1.e("Plugin", "loadApk get packageInfo failed");
            return;
        }
        this.f71895i = packageArchiveInfo.applicationInfo.metaData.getString("Plugin");
        this.f71896j = packageArchiveInfo.applicationInfo.metaData.getString(d.f71909k);
        h1.e("Plugin", "loadApk preparePluginEnv");
        l(packageArchiveInfo, str);
        this.f71893g = true;
    }

    public void m(String str, Bundle bundle) {
        try {
            h1.e(cb.f7679a, "processCommand");
            Object obj = this.f71897k;
            if (obj == null) {
                return;
            }
            Method methodE = c.e(obj, "processCommand", String.class, Bundle.class);
            if (methodE != null) {
                methodE.invoke(this.f71897k, str, bundle);
            }
            h1.e(cb.f7679a, "processCommand invoked");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Object n(ModMeta modMeta) {
        try {
            Class<?> clsF = c.f(e(), this.f71895i);
            h1.e("start mod", "constructor=" + clsF);
            if (clsF == null) {
                return null;
            }
            String str = "";
            for (int i10 = 0; i10 < clsF.getDeclaredConstructors().length; i10++) {
                str = str + clsF.getConstructors()[i10] + ";\n";
            }
            h1.e("start mod", "init \n" + str);
            Object objNewInstance = clsF.getDeclaredConstructor(ModMeta.class).newInstance(modMeta);
            this.f71897k = objNewInstance;
            return objNewInstance;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b(Context context, String str) {
        this.f71888b = context;
        this.f71887a = str;
    }
}
