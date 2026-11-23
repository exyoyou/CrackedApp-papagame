package com.sigmob.sdk.downloader;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.aggmoread.sdk.z.a.j.u;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes3.dex */
public class h extends com.sigmob.sdk.downloader.core.listener.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Notification.Builder f80789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NotificationManager f80790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RemoteViews f80791c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f80792e;

    public h(Context context) {
        this.f80792e = context.getApplicationContext();
        this.f80791c = new RemoteViews(context.getPackageName(), ResourceUtil.getLayoutId(context, "sig_download_notification_layout"));
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    protected void c(f task) {
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), "下载暂停");
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), "继续");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    protected void d(f task) {
    }

    public void a(PendingIntent intent) {
        this.f80791c.setOnClickPendingIntent(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), intent);
    }

    public void b(PendingIntent intent) {
        this.f80789a.setContentIntent(intent);
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    protected void a(f task) {
        if (!task.m().renameTo(task.n())) {
            SigmobLog.e("download temp file renameTo failed");
        }
        SigmobLog.d("FileDownloaderNotificationListener completed ");
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_speed"), "下载完成,立即安装");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 4);
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), 8);
        this.f80789a.setOngoing(false);
        this.f80789a.setAutoCancel(true);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    protected void b(f task) {
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), "准备下载");
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), "暂停");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    public void a(f task, int blockCount, long currentOffset, long totalLength) {
        StringBuilder sb2;
        String str;
        RemoteViews remoteViews = this.f80791c;
        int id2 = ResourceUtil.getId(this.f80792e, "sig_download_notification_speed");
        if (currentOffset > 1048576) {
            sb2 = new StringBuilder();
            sb2.append((currentOffset / 1024) / 1024);
            str = "M/";
        } else {
            sb2 = new StringBuilder();
            sb2.append(currentOffset / 1024);
            str = "KB/";
        }
        sb2.append(str);
        sb2.append((totalLength / 1024) / 1024);
        sb2.append("M");
        remoteViews.setTextViewText(id2, sb2.toString());
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), "正在下载");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    public void a(f task, long currentOffset, long totalLength) {
        StringBuilder sb2;
        String str;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("progress ");
        sb3.append(currentOffset);
        RemoteViews remoteViews = this.f80791c;
        int id2 = ResourceUtil.getId(this.f80792e, "sig_download_notification_speed");
        if (currentOffset > 1048576) {
            sb2 = new StringBuilder();
            sb2.append((currentOffset / 1024) / 1024);
            str = "M/";
        } else {
            sb2 = new StringBuilder();
            sb2.append(currentOffset / 1024);
            str = "KB/";
        }
        sb2.append(str);
        sb2.append((totalLength / 1024) / 1024);
        sb2.append("M");
        remoteViews.setTextViewText(id2, sb2.toString());
        if (totalLength > 0) {
            this.f80791c.setProgressBar(ResourceUtil.getId(this.f80792e, "sig_download_notification_progressBar"), 100, (int) ((currentOffset * 100) / totalLength), false);
        }
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    @Override // com.sigmob.sdk.downloader.core.listener.assist.a.InterfaceC1029a
    public void a(f task, com.sigmob.sdk.downloader.core.cause.b cause) {
    }

    @Override // com.sigmob.sdk.downloader.core.listener.c
    protected void a(f task, Exception e10) {
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), "下载失败");
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), "重试");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80790b.notify(task.c(), this.f80789a.build());
    }

    public void a(String icon_url, String title, String description) {
        Notification.Builder builder;
        this.f80790b = (NotificationManager) this.f80792e.getSystemService("notification");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f80790b.createNotificationChannel(u.a("sig_filedownloader_notification", "sig_filedownloader", 1));
        }
        if (i10 >= 26) {
            p.a();
            builder = o.a(this.f80792e, "sig_filedownloader_notification");
        } else {
            builder = new Notification.Builder(this.f80792e);
        }
        this.f80789a = builder;
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_title"), title);
        if (!TextUtils.isEmpty(icon_url)) {
            try {
                com.sigmob.sdk.base.common.h.a().getBitmap(icon_url, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.downloader.h.1
                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoadFailed() {
                    }

                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoaded(Bitmap bitmap) {
                        h.this.f80791c.setImageViewBitmap(ResourceUtil.getId(h.this.f80792e, "sig_download_notification_icon"), bitmap);
                    }
                });
            } catch (Throwable unused) {
            }
        }
        this.f80791c.setProgressBar(ResourceUtil.getId(this.f80792e, "sig_download_notification_progress"), 100, 0, false);
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_speed"), "0M/0M");
        this.f80791c.setTextViewText(ResourceUtil.getId(this.f80792e, "sig_download_notification_status"), "等待开始");
        this.f80791c.setViewVisibility(ResourceUtil.getId(this.f80792e, "sig_download_notification_button"), 0);
        this.f80789a.setDefaults(4).setOngoing(true).setSmallIcon(this.f80792e.getApplicationInfo().icon).setPriority(0);
        if (Build.VERSION.SDK_INT >= 24) {
            this.f80789a.setCustomContentView(this.f80791c);
        } else {
            this.f80789a.setContent(this.f80791c);
        }
    }
}
