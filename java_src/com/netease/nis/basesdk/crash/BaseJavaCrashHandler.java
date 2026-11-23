package com.netease.nis.basesdk.crash;

import android.os.Process;
import android.util.Log;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseJavaCrashHandler implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f75897a = "https://crash.163.com/uploadCrashLogInfo.do";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f75898b = "https://crash.163.com/client/api/uploadStartUpInfo.do";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f75899c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f75900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CrashStore f75901e;

    class a implements HttpUtil.ResponseCallBack {
        a(BaseJavaCrashHandler baseJavaCrashHandler) {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            Logger.i("BaseJavaCrashHandler", "start error" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.i("BaseJavaCrashHandler", "start success");
        }
    }

    class b implements HttpUtil.ResponseCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f75902a;

        b(String str) {
            this.f75902a = str;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            Logger.e("upload crash info failed,error code:" + i10 + " msg:" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.d("upload crash info success" + this.f75902a);
            BaseJavaCrashHandler.this.f75901e.delete(this.f75902a);
        }
    }

    public void allowStartUpload(boolean z10) {
        this.f75899c = z10;
    }

    protected abstract Map<String, String> buildCrashInfo(String str);

    protected abstract Map<String, String> buildStartInfo();

    public void initialize(String str) {
        this.f75900d = Thread.getDefaultUncaughtExceptionHandler();
        try {
            Thread.setDefaultUncaughtExceptionHandler(this);
        } catch (Exception e10) {
            Logger.e("BaseJavaCrashHandler", "JavaCrashHandler setDefaultUncaughtExceptionHandler failed" + e10.getMessage());
        }
        CrashStore crashStore = CrashStore.getInstance();
        this.f75901e = crashStore;
        crashStore.initialize(str);
        if (buildStartInfo() != null && this.f75899c) {
            new Thread(new StartReportRunnable(buildStartInfo(), this.f75898b, new a(this))).start();
        }
        a();
    }

    protected boolean interceptHandleException(Throwable th) {
        return false;
    }

    public void setStartUrl(String str) {
        this.f75898b = str;
    }

    public void setUploadUrl(String str) {
        this.f75897a = str;
    }

    public void testCrash() {
        throw new RuntimeException("test java exception");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws Throwable {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f75900d;
        if (uncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
        try {
            if (!interceptHandleException(th)) {
                a(thread, th);
            }
        } catch (Exception e10) {
            Logger.e("BaseJavaCrashHandler", "JavaCrashHandler handleException failed" + e10.getMessage());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f75900d;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    private void a() {
        Logger.d("check and report crash info");
        File[] fileArrLoadJava = this.f75901e.loadJava();
        if (fileArrLoadJava.length > 0) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 5, 5L, TimeUnit.SECONDS, new ArrayBlockingQueue(10), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardPolicy());
            for (File file : fileArrLoadJava) {
                try {
                    threadPoolExecutor.execute(a(this.f75901e.parse(file.getAbsolutePath()), file.getAbsolutePath()));
                } catch (UnsupportedEncodingException unused) {
                    Logger.e("BaseJavaCrashHandler", "logInfo encode error");
                }
            }
        }
    }

    private void a(Thread thread, Throwable th) throws Throwable {
        try {
            a(this.f75901e.store(Log.getStackTraceString(th)).getAbsolutePath());
        } catch (UnsupportedEncodingException unused) {
            Logger.e("BaseJavaCrashHandler", "logInfo encode error");
        }
    }

    private void a(String str) throws Throwable {
        String str2 = this.f75901e.parse(str);
        Logger.d(str2);
        Thread thread = new Thread(a(str2, str));
        thread.start();
        try {
            thread.join(BaseCloudFileManager.ACK_TIMEOUT);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            Logger.e("quick upload isInterrupted");
        }
    }

    private CrashReportRunnable a(String str, String str2) {
        return new CrashReportRunnable(buildCrashInfo(str), this.f75897a, new b(str2));
    }
}
