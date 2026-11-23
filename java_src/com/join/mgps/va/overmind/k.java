package com.join.mgps.va.overmind;

import android.content.Context;
import android.os.storage.StorageManager;
import com.haima.hmcp.Constants;
import com.join.mgps.Util.h1;
import com.xinzhu.overmind.Overmind;
import java.io.File;
import java.io.IOException;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final k f73277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f73278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final String f73279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final String f73280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private static final String f73281e;

    static {
        k kVar = new k();
        f73277a = kVar;
        f73278b = k.class.getSimpleName();
        String strA = kVar.a(com.xinzhu.overmind.a.a0().getAbsolutePath() + "/sdcard");
        f73279c = strA;
        f73280d = kVar.a(com.xinzhu.overmind.a.b0().getAbsolutePath() + "/sdcard");
        f73281e = kVar.a(strA + "/Android");
    }

    private k() {
    }

    public static /* synthetic */ String E(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.D(str, i10);
    }

    public static /* synthetic */ String H(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.G(str, i10);
    }

    public static /* synthetic */ String K(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.J(str, i10);
    }

    public static /* synthetic */ String M(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.L(str, i10);
    }

    public static /* synthetic */ String P(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.O(str, i10);
    }

    public static /* synthetic */ String S(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.R(str, i10);
    }

    private final String a(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public static /* synthetic */ String b0(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.a0(str, i10);
    }

    public static /* synthetic */ String e0(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.d0(str, i10);
    }

    public static /* synthetic */ String g(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.f(str, i10);
    }

    public static /* synthetic */ String j(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.i(str, i10);
    }

    public static /* synthetic */ String q(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.p(str, i10);
    }

    public static /* synthetic */ String t(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.s(str, i10);
    }

    public static /* synthetic */ File w(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.v(str, i10);
    }

    public static /* synthetic */ String z(k kVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return kVar.y(str, i10);
    }

    @NotNull
    public final String A(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.j(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String B(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.k(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String C(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return E(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String D(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.r(packageName, i10).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String F(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return H(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String G(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.s(packageName, i10).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String I(@NotNull String subPath, boolean z10) {
        Intrinsics.checkNotNullParameter(subPath, "subPath");
        String str = (z10 ? f73280d : f73279c) + '/' + subPath;
        if (z10 && Overmind.isInPlugin()) {
            a(str);
        } else if (!z10 && !Overmind.isInPlugin()) {
            a(str);
        }
        return str;
    }

    @NotNull
    public final String J(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73279c + "/user/" + i10 + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String L(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73279c + "/user/" + i10 + '/' + packageName;
        a(str);
        return str;
    }

    @JvmOverloads
    @NotNull
    public final String N(@Nullable String str) {
        return P(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String O(@Nullable String str, int i10) {
        File parentFile;
        File file = new File(com.xinzhu.overmind.a.r(str, i10) + "/files/mod_cfg.ini");
        File parentFile2 = file.getParentFile();
        boolean z10 = false;
        if (parentFile2 != null && parentFile2.exists()) {
            z10 = true;
        }
        if (!z10 && (parentFile = file.getParentFile()) != null) {
            parentFile.mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        h1.e("ModConfigPath → " + file.getAbsolutePath());
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String Q(@Nullable String str) {
        return S(this, str, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String R(@Nullable String str, int i10) {
        return com.xinzhu.overmind.a.s(str, i10) + "/files/mod_cfg.ini";
    }

    @NotNull
    public final List<String> T() {
        List<String> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf("/mnt/sdcard/", "/sdcard/", "/storage/emulated/" + Overmind.getHostUserId() + '/', "storage/emulated/" + Overmind.getHostUserId() + '/');
        Context context = Overmind.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String[] strArrB = b(context);
        if (strArrB != null) {
            CollectionsKt__MutableCollectionsKt.addAll(listMutableListOf, strArrB);
        }
        return listMutableListOf;
    }

    @NotNull
    public final String U(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.L(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String V(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return a(f73279c + "/Android/obb/" + packageName);
    }

    @NotNull
    public final String W(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return a(f73279c + "/Android/obb/user/" + i10 + '/' + packageName);
    }

    @NotNull
    public final String X(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return com.xinzhu.overmind.a.b0() + "/sdcard/Android/obb/" + packageName;
    }

    @NotNull
    public final String Y(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return com.xinzhu.overmind.a.b0() + "/sdcard/Android/obb/user/" + i10 + '/' + packageName;
    }

    @JvmOverloads
    @NotNull
    public final String Z(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return b0(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String a0(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File file = new File(com.xinzhu.overmind.a.r(packageName, i10).getAbsolutePath(), "app_pluginLib");
        if (!file.exists()) {
            file.mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @Nullable
    public final String[] b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.storage.StorageManager");
        StorageManager storageManager = (StorageManager) systemService;
        try {
            Object objInvoke = storageManager.getClass().getMethod("getVolumePaths", new Class[0]).invoke(storageManager, new Object[0]);
            if (objInvoke instanceof String[]) {
                return (String[]) objInvoke;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String c() {
        String str = f73279c + "/Android/data";
        a(str);
        return str;
    }

    @JvmOverloads
    @NotNull
    public final String c0(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return e0(this, packageName, 0, 2, null);
    }

    @NotNull
    public final String d() {
        String str = f73280d + "/Android/data";
        a(str);
        return str;
    }

    @JvmOverloads
    @NotNull
    public final String d0(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return com.xinzhu.overmind.a.s(packageName, i10).getAbsolutePath() + "/app_pluginLib";
    }

    @NotNull
    public final String e(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73279c + "/Android/data/" + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String f(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73279c + "/Android/data/user/" + i10 + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String f0() {
        return f73279c + "/save_data";
    }

    @NotNull
    public final String g0() {
        return f73280d + "/save_data";
    }

    @NotNull
    public final String h(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73280d + "/Android/data/" + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String h0(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f0() + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String i(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = f73280d + "/Android/data/user/" + i10 + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String i0(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String str = g0() + '/' + packageName;
        a(str);
        return str;
    }

    @NotNull
    public final String j0() {
        return f73281e;
    }

    @NotNull
    public final String k(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.d(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String k0() {
        return f73279c;
    }

    @NotNull
    public final String l(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.e(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String l0() {
        return f73280d;
    }

    @NotNull
    public final String m(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.f(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final String n(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = com.xinzhu.overmind.a.g(packageName).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String o(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return q(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String p(@NotNull String packageName, int i10) {
        File parentFile;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File file = new File(com.xinzhu.overmind.a.r(packageName, i10).getAbsolutePath() + "/files/archive_cfg.ini");
        File parentFile2 = file.getParentFile();
        boolean z10 = false;
        if (parentFile2 != null && parentFile2.exists()) {
            z10 = true;
        }
        if (!z10 && (parentFile = file.getParentFile()) != null) {
            parentFile.mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @NotNull
    public final String r(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return t(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String s(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String absolutePath = new File(com.xinzhu.overmind.a.s(packageName, i10).getAbsolutePath() + "/files/archive_cfg.ini").getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @JvmOverloads
    @Nullable
    public final File u(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return w(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @Nullable
    public final File v(@NotNull String packageName, int i10) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return new File(com.xinzhu.overmind.a.r(packageName, i10).getAbsolutePath());
    }

    @JvmOverloads
    @NotNull
    public final String x(@NotNull String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return z(this, packageName, 0, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final String y(@NotNull String packageName, int i10) {
        File parentFile;
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        File file = new File(com.xinzhu.overmind.a.s(packageName, i10).getAbsolutePath());
        File parentFile2 = file.getParentFile();
        boolean z10 = false;
        if (parentFile2 != null && parentFile2.exists()) {
            z10 = true;
        }
        if (!z10 && (parentFile = file.getParentFile()) != null) {
            parentFile.mkdirs();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }
}
