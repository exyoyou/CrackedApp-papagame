package x;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.c;
import com.xinzhu.overmind.utils.x;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f97589b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f97590a;

    private b() {
    }

    private static String a(String[] strArr) {
        Process processStart;
        String line = "";
        try {
            ProcessBuilder processBuilder = new ProcessBuilder(strArr);
            processBuilder.redirectErrorStream(false);
            processStart = processBuilder.start();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(processStart.getOutputStream());
                line = new DataInputStream(processStart.getInputStream()).readLine();
                dataOutputStream.writeBytes(x.f90146c);
                dataOutputStream.flush();
                processStart.waitFor();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            processStart = null;
        }
        try {
            processStart.destroy();
        } catch (Exception unused3) {
        }
        return line;
    }

    public static b b() {
        if (f97589b == null) {
            f97589b = new b();
        }
        return f97589b;
    }

    public static boolean d() {
        String[] strArr = {"/system/xbin/", "/system/bin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i10 = 0; i10 < 5; i10++) {
            try {
                String str = strArr[i10] + "su";
                if (new File(str).exists()) {
                    String strA = a(new String[]{"ls", "-l", str});
                    return (TextUtils.isEmpty(strA) || strA.indexOf("root") == strA.lastIndexOf("root")) ? false : true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private Context f() {
        return this.f97590a;
    }

    private static c g() {
        return c.a();
    }

    public final void c(Context context) {
        this.f97590a = context.getApplicationContext();
    }

    public final String e() {
        try {
            return com.ta.utdid2.device.c.a(this.f97590a);
        } catch (Throwable unused) {
            return "";
        }
    }
}
