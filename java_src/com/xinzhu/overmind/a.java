package com.xinzhu.overmind;

import android.util.ArrayMap;
import android.util.Base64;
import com.join.mgps.mod.utils.d;
import com.xinzhu.overmind.utils.e;
import com.xinzhu.overmind.utils.l;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f89165a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static File f89166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static File f89167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static File f89168d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static File f89169e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static File f89170f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static File f89171g = Overmind.getContext().getExternalFilesDir("virtual");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static File f89172h = new File(l(), "junit.jar");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f89173i = "armeabi-v7a";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f89174j = d.f71903e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f89175k = "arm64-v8a";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static ArrayMap<String, String> f89176l = new ArrayMap<>();

    static {
        File parentFile = new File(Overmind.getContext().getApplicationInfo().dataDir).getParentFile();
        f89166b = parentFile;
        try {
            f89166b = parentFile.getCanonicalFile();
        } catch (Throwable unused) {
        }
        f89167c = new File(f89166b, Overmind.getMainPkg());
        f89168d = new File(f89167c, "virtual");
        f89169e = new File(f89166b, Overmind.getPluginPkg());
        f89170f = new File(f89169e, "virtual");
        f89176l.put(f89173i, "arm");
        f89176l.put(f89174j, "arm");
        f89176l.put(f89175k, d.f71902d);
    }

    public static File A() {
        return new File(U(), "enabled-component.conf");
    }

    public static File B(String str, int i10) {
        return new File(C(str, i10), "cache");
    }

    public static File C(String str, int i10) {
        return new File(F(i10), String.format(Locale.CHINA, "Android/data/%s", str));
    }

    public static File D(String str, int i10) {
        return new File(C(str, i10), "files");
    }

    public static File E() {
        return f89171g;
    }

    public static File F(int i10) {
        return new File(f89171g, String.format(Locale.CHINA, "%d/", Integer.valueOf(i10)));
    }

    public static File G() {
        return f89171g;
    }

    public static File H(String str) {
        return new File(I(str), "base.apk");
    }

    public static File I(String str) {
        if (e.x()) {
            return new File(String.format("/data/app/%s-%s", str, Base64.encodeToString(str.length() > 16 ? str.substring(0, 16).getBytes(StandardCharsets.UTF_8) : str.getBytes(StandardCharsets.UTF_8), 10)));
        }
        return new File(String.format("/data/app/%s-1", str));
    }

    public static File J(String str) {
        return new File(I(str), "lib");
    }

    public static String K(String str) {
        String str2 = f89176l.get(str);
        if (str2 != null) {
            return str2;
        }
        throw new RuntimeException("Invalid abi " + str);
    }

    public static File L(String str) {
        return new File(f89168d, "data/app/" + str + "/oat/");
    }

    public static File M(String str) {
        return new File(f89170f, "data/app/" + str + "/oat/");
    }

    public static File N(String str, String str2) {
        return new File(L(str), str2 + "/base.odex");
    }

    public static File O(String str, String str2) {
        return new File(M(str), str2 + "/base.odex");
    }

    public static File P(String str, String str2) {
        return new File(str.substring(0, str.lastIndexOf(47)), str2 + ".apk");
    }

    public static File Q(String str) {
        return new File(d(str), "package.conf");
    }

    public static File R(String str) {
        return new File(d(str), "package.reliable");
    }

    public static File S(String str, String str2) {
        return new File(f89168d, "data/app/" + str + "/split_" + str2 + ".apk");
    }

    public static File T(String str, String str2) {
        return new File(f89170f, "data/app/" + str + "/split_" + str2 + ".apk");
    }

    public static File U() {
        return new File(f89168d, "system");
    }

    public static File V() {
        return new File(f89170f, "system");
    }

    public static File W() {
        return new File(U(), "uid.conf");
    }

    public static File X(int i10) {
        return new File(f89168d, String.format(Locale.CHINA, "data/user/%d", Integer.valueOf(i10)));
    }

    public static File Y(int i10) {
        return new File(f89170f, String.format(Locale.CHINA, "data/user/%d", Integer.valueOf(i10)));
    }

    public static File Z() {
        return new File(U(), "user.conf");
    }

    public static File a(File file, String... strArr) {
        for (String str : strArr) {
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    public static File a0() {
        return f89168d;
    }

    public static File b(int i10) {
        return new File(X(i10), "accounts");
    }

    public static File b0() {
        return f89170f;
    }

    public static File c(int i10) {
        return new File(Y(i10), "accounts");
    }

    public static File c0(String str) {
        return new File(d(str), "package.volatile");
    }

    public static File d(String str) {
        return new File(f89168d, "data/app/" + str);
    }

    public static File d0(String str, String str2) {
        return new File(str.substring(0, str.lastIndexOf(47)), "/split_" + str2 + ".apk");
    }

    public static File e(String str) {
        return new File(f89170f, "data/app/" + str);
    }

    public static File e0() {
        return new File(U(), "xposed-module.conf");
    }

    public static File f(String str) {
        return new File(d(str), "lib");
    }

    public static void f0() {
        l.p(f89168d);
        l.p(f89171g);
        l.p(U());
        l.p(l());
    }

    public static File g(String str) {
        return new File(e(str), "lib");
    }

    public static File h() {
        return d("");
    }

    public static File i() {
        return e("");
    }

    public static File j(String str) {
        return new File(f89168d, "data/app/" + str + "/base.apk");
    }

    public static File k(String str) {
        return new File(f89170f, "data/app/" + str + "/base.apk");
    }

    public static File l() {
        return new File(f89168d, "cache");
    }

    public static File m() {
        return new File(f89170f, "cache");
    }

    public static File n(String str, int i10) {
        return new File(r(str, i10), "cache");
    }

    public static File o(String str, int i10) {
        return new File(s(str, i10), "cache");
    }

    public static File p(String str, int i10) {
        return new File(r(str, i10), "databases");
    }

    public static File q(String str, int i10) {
        return new File(s(str, i10), "databases");
    }

    public static File r(String str, int i10) {
        return new File(f89168d, String.format(Locale.CHINA, "data/user/%d/%s", Integer.valueOf(i10), str));
    }

    public static File s(String str, int i10) {
        return new File(f89170f, String.format(Locale.CHINA, "data/user/%d/%s", Integer.valueOf(i10), str));
    }

    public static File t(String str, int i10) {
        return new File(r(str, i10), "files");
    }

    public static File u(String str, int i10) {
        return new File(s(str, i10), "files");
    }

    public static File v(String str, int i10) {
        return new File(r(str, i10), "lib");
    }

    public static File w(String str, int i10) {
        return new File(s(str, i10), "lib");
    }

    public static File x(String str, int i10) {
        return new File(f89168d, String.format(Locale.CHINA, "data/user_de/%d/%s", Integer.valueOf(i10), str));
    }

    public static File y(String str, int i10) {
        return new File(f89170f, String.format(Locale.CHINA, "data/user_de/%d/%s", Integer.valueOf(i10), str));
    }

    public static File z() {
        return new File(U(), "device.conf");
    }
}
