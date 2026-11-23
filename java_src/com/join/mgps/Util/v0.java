package com.join.mgps.Util;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.Html;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationChannelCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.common.references.CloseableReference;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.HMCloudMainActivity_;

/* JADX INFO: loaded from: classes4.dex */
public class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f50057a = "default";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f50058b = 1234;

    class a extends com.facebook.imagepipeline.datasource.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ NotificationCompat.Builder f50059a;

        a(final NotificationCompat.Builder val$builder) {
            this.f50059a = val$builder;
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<CloseableReference<com.facebook.imagepipeline.image.c>> dataSource) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable final Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f50059a.setSmallIcon(IconCompat.createWithBitmap(bitmap));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static volatile v0 f50060a = new v0();

        private b() {
        }
    }

    public static Notification a(Context context, String iconUrl, int time) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, f50057a);
        builder.setOngoing(false);
        builder.setVisibility(1);
        builder.setSmallIcon(R.drawable.icon);
        builder.setPriority(1);
        builder.setCategory(NotificationCompat.CATEGORY_ALARM);
        builder.setContentTitle("排队成功可进入云游戏");
        builder.setContentText(Html.fromHtml("<font color='#FF0000'>" + time + "秒</font>后将自动放弃，再次进入需重新排队"));
        com.join.android.app.common.utils.l.m(context, iconUrl, new a(builder));
        Intent intent = new Intent(context, (Class<?>) HMCloudMainActivity_.class);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("_scene", 2);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, com.tencent.mm.opensdk.constants.Build.SUPPORT_SEND_MUSIC_VIDEO_MESSAGE));
        return builder.build();
    }

    public static Notification b(Context context, Bitmap gameIcon, int index) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, f50057a);
        builder.setOngoing(false);
        builder.setVisibility(1);
        builder.setSmallIcon(R.drawable.icon);
        builder.setPriority(1);
        builder.setCategory(NotificationCompat.CATEGORY_ALARM);
        builder.setContentTitle("正在排队中");
        builder.setContentText(Html.fromHtml("前方剩余<font color='#FF0000'>" + index + "人</font>请耐心等待o~~"));
        Intent intent = new Intent(context, (Class<?>) HMCloudMainActivity_.class);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("_scene", 1);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728));
        return builder.build();
    }

    public static void c() {
        if (ContextCompat.checkSelfPermission(MApplication.f3182z, "android.permission.POST_NOTIFICATIONS") != 0) {
            return;
        }
        NotificationManagerCompat.from(MApplication.f3182z).cancel(f50058b);
    }

    public static void d() {
        NotificationManagerCompat.from(MApplication.f3182z).createNotificationChannel(new NotificationChannelCompat.Builder(f50057a, 4).setName("CloudGame").build());
    }

    private static v0 e() {
        return b.f50060a;
    }

    public static void f(Notification notification) {
        if (ContextCompat.checkSelfPermission(MApplication.f3182z, "android.permission.POST_NOTIFICATIONS") != 0) {
            return;
        }
        NotificationManagerCompat.from(MApplication.f3182z).notify(f50058b, notification);
    }
}
