package n5;

import com.huaksj.vasdolly.common.V1SchemeUtil;
import com.huaksj.vasdolly.common.d;
import com.huaksj.vasdolly.common.e;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f94477a = "wf_channel";

    public static boolean a(File file) {
        if (file != null && file.exists() && file.isFile()) {
            return V1SchemeUtil.b(file);
        }
        return false;
    }

    public static boolean b(File file) {
        if (file != null && file.exists() && file.isFile()) {
            return d.a(file);
        }
        return false;
    }

    public static boolean c(File file) {
        if (file != null && file.exists() && file.isFile()) {
            return e.a(file);
        }
        return false;
    }

    public static String d(File file) {
        try {
            return V1SchemeUtil.f(file);
        } catch (Exception unused) {
            System.out.println("APK : " + file.getAbsolutePath() + " not have channel info from Zip Comment");
            return "";
        }
    }

    public static String e(File file) {
        System.out.println("try to read channel info from apk : " + file.getAbsolutePath());
        return b.d(file, com.huaksj.vasdolly.common.b.f34397a);
    }

    public static boolean f(File file, String str) {
        if (str != null) {
            return str.equals(d(file));
        }
        return false;
    }

    public static boolean g(File file, String str) {
        if (str != null) {
            return str.equals(e(file));
        }
        return false;
    }
}
