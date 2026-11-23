package com.qq.e.comm;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.qq.e.comm.pi.SVSD;
import com.qq.e.comm.util.GDTLogger;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SVSD f78272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78273c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinkedList<b> f78274d = new LinkedList<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.qq.e.comm.managers.a f78275b;

        /* JADX INFO: renamed from: com.qq.e.comm.DownloadService$a$a, reason: collision with other inner class name */
        class RunnableC1008a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ SVSD f78277b;

            RunnableC1008a(SVSD svsd) {
                this.f78277b = svsd;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f78277b.onCreate();
                    while (true) {
                        b bVar = (b) DownloadService.this.f78274d.poll();
                        if (bVar == null) {
                            DownloadService.this.f78272b = this.f78277b;
                            return;
                        }
                        this.f78277b.onStartCommand(bVar.f78279a, bVar.f78280b, bVar.f78281c);
                    }
                } catch (Throwable th) {
                    GDTLogger.w("DownloadService初始化异常", th);
                }
            }
        }

        a(com.qq.e.comm.managers.a aVar) {
            this.f78275b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SVSD aPKDownloadServiceDelegate = this.f78275b.c().getPOFactory().getAPKDownloadServiceDelegate(DownloadService.this);
                if (aPKDownloadServiceDelegate == null) {
                    GDTLogger.w("DownloadService初始化异常");
                } else {
                    new Handler(Looper.getMainLooper()).post(new RunnableC1008a(aPKDownloadServiceDelegate));
                }
            } catch (Throwable th) {
                GDTLogger.w("DownloadService初始化异常", th);
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Intent f78279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f78280b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f78281c;

        private b(Intent intent, int i10, int i11) {
            this.f78279a = intent;
            this.f78280b = i10;
            this.f78281c = i11;
        }

        /* synthetic */ b(Intent intent, int i10, int i11, a aVar) {
            this(intent, i10, i11);
        }
    }

    private boolean c(boolean z10) {
        if (this.f78272b != null) {
            return true;
        }
        com.qq.e.comm.managers.a aVarB = com.qq.e.comm.managers.a.b();
        if (!aVarB.d()) {
            return false;
        }
        if (!z10) {
            if (this.f78273c) {
                return false;
            }
            this.f78273c = true;
            com.qq.e.comm.managers.a.f78305g.submit(new a(aVarB));
            return false;
        }
        try {
            SVSD aPKDownloadServiceDelegate = aVarB.c().getPOFactory().getAPKDownloadServiceDelegate(this);
            this.f78272b = aPKDownloadServiceDelegate;
            aPKDownloadServiceDelegate.onCreate();
            return true;
        } catch (Throwable th) {
            GDTLogger.w("DownloadService初始化异常", th);
            return false;
        }
    }

    public static void enterAPPDownloadListPage(Context context) {
        if (context == null) {
            GDTLogger.e("enterAPPDownloadListPage 调用异常，context为空");
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.putExtra("GDT_APPID", com.qq.e.comm.managers.a.b().a());
        intent.setAction("com.qq.e.comm.ACTION_DOWNLOAD_LIST");
        context.startService(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            return svsd.onBind(intent);
        }
        if (TextUtils.isEmpty(intent.getStringExtra("GDT_APPID")) || !c(true)) {
            return null;
        }
        return this.f78272b.onBind(intent);
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onConfigurationChanged(configuration);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onDestroy();
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onLowMemory();
        }
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onRebind(intent);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (intent == null) {
            stopSelf(i11);
            return 2;
        }
        if (TextUtils.isEmpty(intent.getStringExtra("GDT_APPID"))) {
            GDTLogger.w("Service onStartCommand 出现异常");
            return 2;
        }
        if (c(false)) {
            return this.f78272b.onStartCommand(intent, i10, i11);
        }
        this.f78274d.add(new b(intent, i10, i11, null));
        return 2;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onTaskRemoved(intent);
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        SVSD svsd = this.f78272b;
        if (svsd != null) {
            svsd.onTrimMemory(i10);
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        SVSD svsd = this.f78272b;
        return svsd != null ? svsd.onUnbind(intent) : super.onUnbind(intent);
    }
}
