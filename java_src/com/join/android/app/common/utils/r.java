package com.join.android.app.common.utils;

import android.annotation.TargetApi;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f34818a = "r";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f34819b = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadPoolExecutor f34820c = new k(3, 3, 500, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static synchronized void a() {
        f34820c.getQueue().clear();
    }

    static synchronized boolean b() {
        return f34820c.getQueue().size() > 0 || f34820c.getActiveCount() == 3;
    }

    public static synchronized void c(DownloadTask task) {
        Iterator<Runnable> it2 = f34820c.getQueue().iterator();
        while (it2.hasNext()) {
            if (((com.github.snowdream.android.app.downloader.a) it2.next()).i().equals(task.getCrc_link_type_val())) {
                it2.remove();
                break;
            }
        }
    }

    public static synchronized void d(DownloadTask task) {
        Iterator<Runnable> it2 = f34820c.getQueue().iterator();
        while (it2.hasNext()) {
            com.github.snowdream.android.app.downloader.a aVar = (com.github.snowdream.android.app.downloader.a) it2.next();
            if (aVar.i().equals(task.getCrc_link_type_val())) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("stopWaitingTask=");
                sb2.append(aVar.i());
                task.setStatus(40);
                it2.remove();
                break;
            }
        }
    }

    @TargetApi(11)
    public static synchronized void e(DownloadTask task) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(task.getStatus());
        sb2.append(";getQueue=");
        sb2.append(f34820c.getQueue().size());
        sb2.append(";exec.getActiveCount()=");
        sb2.append(f34820c.getActiveCount());
        sb2.append(";core=");
        sb2.append(f34820c.getCorePoolSize());
        sb2.append(";getPoolSize()=");
        sb2.append(f34820c.getPoolSize());
        sb2.append("exec.getTaskCount()=");
        sb2.append(f34820c.getTaskCount());
        if (b()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.p(task.getCrc_link_type_val(), 29));
        }
        try {
            f34820c.execute(new com.github.snowdream.android.app.downloader.a(task.getUrl(), task.getCrc_link_type_val(), task));
        } catch (Exception unused) {
        }
    }
}
