package com.join.android.app.common.exception;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.join.android.app.common.utils.q;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.SplashActivity;
import com.papa.sim.statistic.t;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f34522e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f34523f = "CrashCatchHandler";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f34524g = "VERSION_NAME";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f34525h = "VERSION_CODE";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f34526i = "EXCEPTION";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f34527j = "crash";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f34528k = ".log";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f34529l = 2000;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f34530m = "/log";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f34531n = "yyyy-MM-dd HH:mm:ss";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final a f34532o = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f34533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f34534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Properties f34535c = new Properties();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34536d;

    /* JADX INFO: renamed from: com.join.android.app.common.exception.a$a, reason: collision with other inner class name */
    class C0636a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Throwable f34537b;

        C0636a(final Throwable val$ex) {
            this.f34537b = val$ex;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            a.this.k(this.f34537b);
            a.this.i(this.f34537b);
        }
    }

    class b implements FilenameFilter {
        b() {
        }

        boolean a(long time) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(time);
            int i10 = calendar.get(1);
            int i11 = calendar.get(2);
            int i12 = calendar.get(5);
            calendar.setTimeInMillis(System.currentTimeMillis());
            return i10 == calendar.get(1) && i11 == calendar.get(2) && i12 == calendar.get(5);
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String name) {
            if (name.contains(o0.f49827a)) {
                String strSubstring = name.substring(name.lastIndexOf(o0.f49827a) + 1);
                if (TextUtils.isEmpty(strSubstring) && strSubstring.equals("log")) {
                    if (!a(file.lastModified()) && file.exists()) {
                        file.delete();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    private a() {
    }

    @SuppressLint({"CommitPrefEdits"})
    private String d(Throwable e10) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        e10.printStackTrace(printWriter);
        this.f34535c.put(f34526i, stringWriter.toString());
        try {
            stringWriter.close();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        printWriter.close();
        String str = e.F0 + "crash" + new SimpleDateFormat(f34531n, Locale.US).format(new Date()) + ".log";
        File file = new File(this.f34536d);
        if (!file.exists()) {
            file.mkdirs();
            if (file.canWrite()) {
                return m(str);
            }
            l("unable to write to log file", null);
        } else {
            if (file.canWrite()) {
                return m(str);
            }
            l("unable to write to log file", null);
        }
        return null;
    }

    public static a e() {
        return f34532o;
    }

    public static FilenameFilter f() {
        return new b();
    }

    private String g() {
        return ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? this.f34533a.getExternalCacheDir().getAbsolutePath() : this.f34533a.getCacheDir().getPath();
    }

    private void h() {
        ((AlarmManager) this.f34533a.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 1000, PendingIntent.getActivity(this.f34533a, 0, new Intent(this.f34533a, (Class<?>) SplashActivity.class), 0));
        Process.killProcess(Process.myPid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(Throwable e10) {
        String localizedMessage;
        if (e10 == null || (localizedMessage = e10.getLocalizedMessage()) == null) {
            return false;
        }
        l("程序异常，即将退出:\r\n", localizedMessage);
        c();
        d(e10);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Throwable ex) {
        StringBuffer stringBuffer = new StringBuffer(q.n(this.f34533a).m() + ";error::");
        stringBuffer.append(ex.getMessage());
        for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        t.l(this.f34533a).N1(stringBuffer.substring(0, Math.min(524288, stringBuffer.length())));
    }

    private void l(String describe, String msg) {
    }

    public void c() {
        try {
            this.f34535c.put(f34524g, com.join.android.app.mgsim.wufun.b.f35535h);
            this.f34535c.put(f34525h, "517");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        for (Field field : Build.class.getDeclaredFields()) {
            field.setAccessible(true);
            try {
                this.f34535c.put(field.getName(), String.valueOf(field.get(null)));
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (IllegalArgumentException e12) {
                e12.printStackTrace();
            }
        }
    }

    public void j(Context cxt) {
        this.f34533a = cxt;
        this.f34534b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f34536d = g() + f34530m;
        new File(this.f34536d).listFiles(f());
    }

    public String m(String fileName) {
        File file = new File(this.f34536d + fileName);
        try {
            file.createNewFile();
            if (!file.exists() || !file.canWrite()) {
                return null;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, false);
            this.f34535c.store(fileOutputStream, "");
            fileOutputStream.flush();
            fileOutputStream.close();
            return fileName;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, final Throwable ex) {
        ex.printStackTrace();
        new C0636a(ex).start();
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException unused) {
        }
        h();
    }
}
