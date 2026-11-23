package com.beizi.fusion.tool;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.beizi.fusion.BeiZis;
import com.beizi.fusion.model.ResponseInfo;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class n implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f10634a = new n();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f10635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10636c;

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        String string = stringWriter.toString();
        a(string);
        b(string);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            a(th);
        } catch (Exception e10) {
            e10.printStackTrace();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f10635b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }

    public static n a() {
        return f10634a;
    }

    public void a(Context context) {
        this.f10635b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f10636c = context.getApplicationContext();
    }

    private void a(String str) {
        String strB;
        String strA;
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("appId", com.beizi.fusion.c.b.a().b());
            jSONObject.put("packageName", this.f10636c.getPackageName());
            jSONObject.put("versionName", au.d(this.f10636c));
            jSONObject.put("versionCode", String.valueOf(au.e(this.f10636c)));
            jSONObject.put("sdkVersion", "5.3.0.3");
            jSONObject2.put("osVersion", Build.VERSION.RELEASE + "_" + Build.VERSION.SDK_INT);
            jSONObject2.put("vendor", Build.MANUFACTURER);
            jSONObject2.put(bn.f7597i, Build.MODEL);
            jSONObject.put("device", jSONObject2);
            jSONObject.put("crashMessage", str);
            if (!TextUtils.isEmpty(ResponseInfo.getInstance(this.f10636c).getCrashUrl()) && ResponseInfo.getInstance(this.f10636c).getCrashUrl().startsWith("http")) {
                strB = ResponseInfo.getInstance(this.f10636c).getCrashUrl();
            } else {
                strB = d.b(BeiZis.getTransferProtocol() ? "aHR0cHM6Ly9hcGktaHRwLmJlaXppLmJpei9tYi9zZGsvY3Jhc2gvdjE=" : "aHR0cDovL2FwaS5odHAuYWQtc2NvcGUuY29tLmNuOjQ1NjAwL21iL3Nkay9jcmFzaC92MQ==");
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
            }
            if (TextUtils.isEmpty(strB) || (strA = x.a(strB, jSONObject.toString().getBytes())) == null) {
                return;
            }
            ac.a("lance", "post:" + strA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(String str) {
        try {
            Context context = this.f10636c;
            if (context == null) {
                return;
            }
            File fileA = g.a(context);
            ac.a("BeiZis", "CrashHandler storagePath == " + fileA);
            if (fileA != null) {
                String str2 = fileA.getPath() + "/Beizi/log/";
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str3 = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS").format(new Date(System.currentTimeMillis()));
                File file2 = new File(str2 + "crash_" + str3 + ".trace");
                file2.createNewFile();
                FileWriter fileWriter = new FileWriter(file2, true);
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                bufferedWriter.write(str3);
                bufferedWriter.write("\r\n");
                bufferedWriter.write("------------------crash----------------------");
                bufferedWriter.write("\r\n");
                bufferedWriter.write(str);
                bufferedWriter.write("\r\n");
                bufferedWriter.write("-------------------end-----------------------");
                bufferedWriter.newLine();
                bufferedWriter.close();
                fileWriter.close();
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        ac.a("lance", "writeLog ok");
    }

    private boolean a(final Throwable th) {
        if (th == null) {
            return false;
        }
        new Thread(new Runnable() { // from class: com.beizi.fusion.tool.n.1
            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                n.this.b(th);
                Looper.loop();
            }
        }).start();
        try {
            Thread.sleep(1000L);
            return true;
        } catch (InterruptedException e10) {
            e10.printStackTrace();
            return true;
        }
    }
}
