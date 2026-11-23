package com.join.mgps.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.aggmoread.sdk.z.a.j.u;
import com.join.android.app.common.utils.g;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.v0;
import com.join.mgps.Util.z;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.dto.VersionDto;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.EService;
import org.apache.http.client.ClientProtocolException;

/* JADX INFO: loaded from: classes3.dex */
@EService
public class UpdateService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NotificationManager f72894b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f72897e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private NotificationCompat.Builder f72900h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private VersionDto f72902j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f72895c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f72896d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72898f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72899g = v0.f50058b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f72901i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f72903k = false;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f72904b;

        a(final String val$url) {
            this.f72904b = val$url;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10 = 0;
            try {
                try {
                    UpdateService.this.f72903k = true;
                    HttpURLConnection httpURLConnectionO = UpdateService.o(this.f72904b);
                    long contentLength = httpURLConnectionO.getContentLength();
                    g1.d("app更新文件大小", contentLength + " ");
                    g1.d("app更新code ", httpURLConnectionO.getResponseCode() + " ");
                    InputStream inputStream = UpdateService.o(this.f72904b).getInputStream();
                    if (inputStream != null) {
                        File file = new File(z.f50164c, "/aia");
                        if (!file.exists() && !file.isDirectory()) {
                            file.mkdir();
                        }
                        UpdateService updateService = UpdateService.this;
                        String str = z.f50164c;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("/aia/");
                        String str2 = this.f72904b;
                        sb2.append(str2.substring(str2.lastIndexOf(e.F0) + 1));
                        updateService.f72895c = new File(str, sb2.toString());
                        if (UpdateService.this.f72895c.exists()) {
                            UpdateService.this.f72895c.delete();
                        }
                        UpdateService.this.f72895c.createNewFile();
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        FileOutputStream fileOutputStream = new FileOutputStream(UpdateService.this.f72895c);
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                        byte[] bArr = new byte[1024];
                        long j10 = 0;
                        while (true) {
                            int i11 = bufferedInputStream.read(bArr);
                            if (i11 == -1 || UpdateService.this.f72896d) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, i10, i11);
                            j10 += (long) i11;
                            int i12 = (int) ((j10 / contentLength) * 100.0d);
                            if (i12 - UpdateService.this.f72898f >= 5) {
                                UpdateService.this.f72898f = i12;
                                UpdateService.this.f72897e.sendMessage(UpdateService.this.f72897e.obtainMessage(3, Integer.valueOf(i12)));
                            }
                            i10 = 0;
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                        bufferedInputStream.close();
                    }
                    if (UpdateService.this.f72896d) {
                        UpdateService.this.f72895c.delete();
                    } else {
                        UpdateService.this.f72897e.sendMessage(UpdateService.this.f72897e.obtainMessage(2, UpdateService.this.f72895c));
                    }
                } catch (ClientProtocolException e10) {
                    UpdateService.this.f72897e.sendMessage(UpdateService.this.f72897e.obtainMessage(4, "下载更新文件失败"));
                    e10.printStackTrace();
                } catch (IOException e11) {
                    UpdateService.this.f72897e.sendMessage(UpdateService.this.f72897e.obtainMessage(4, "下载更新文件失败"));
                    e11.printStackTrace();
                } catch (Exception e12) {
                    UpdateService.this.f72897e.sendMessage(UpdateService.this.f72897e.obtainMessage(4, "下载更新文件失败"));
                    e12.printStackTrace();
                }
                UpdateService.this.f72903k = false;
            } catch (Throwable th) {
                UpdateService.this.f72903k = false;
                throw th;
            }
        }
    }

    class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f72906a;

        public b(Looper looper, Context c10) {
            super(looper);
            this.f72906a = c10;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg != null) {
                UpdateService updateService = UpdateService.this;
                if (updateService.f72901i) {
                    if (msg.what != 2) {
                        return;
                    }
                    Intent intent = new Intent(p5.a.f96194f0);
                    UpdateService.this.f72902j.setFilepath(((File) msg.obj).getAbsolutePath());
                    intent.putExtra("papaUpdateinfo", UpdateService.this.f72902j);
                    UpdateService.this.sendBroadcast(intent);
                    UpdateService.this.stopSelf();
                    return;
                }
                int i10 = msg.what;
                if (i10 == 0) {
                    Toast.makeText(this.f72906a, msg.obj.toString(), 0).show();
                    return;
                }
                if (i10 == 2) {
                    updateService.f72898f = 0;
                    try {
                        UpdateService.this.f72894b.cancel(UpdateService.this.f72899g);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    UpdateService.this.a((File) msg.obj, this.f72906a);
                    UpdateService.this.stopSelf();
                    return;
                }
                if (i10 != 3) {
                    if (i10 != 4) {
                        return;
                    }
                    try {
                        updateService.f72894b.cancel(UpdateService.this.f72899g);
                        return;
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        return;
                    }
                }
                try {
                    updateService.f72900h.setContentText("已下载" + UpdateService.this.f72898f + "%");
                    UpdateService.this.f72900h.setProgress(100, UpdateService.this.f72898f, false);
                    UpdateService.this.f72894b.notify(UpdateService.this.f72899g, UpdateService.this.f72900h.build());
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file, Context context) {
        g.t0(context).z(this, file);
    }

    private void n(final String url) {
        new a(url).start();
    }

    public static HttpURLConnection o(String httpUrl) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(httpUrl).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f A[Catch: Exception -> 0x00a9, TryCatch #0 {Exception -> 0x00a9, blocks: (B:9:0x001b, B:11:0x001f, B:13:0x002f, B:15:0x0056, B:14:0x004f, B:8:0x0018, B:5:0x0004), top: B:29:0x0001, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x002f A[Catch: Exception -> 0x00a9, TryCatch #0 {Exception -> 0x00a9, blocks: (B:9:0x001b, B:11:0x001f, B:13:0x002f, B:15:0x0056, B:14:0x004f, B:8:0x0018, B:5:0x0004), top: B:29:0x0001, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x004f A[Catch: Exception -> 0x00a9, TryCatch #0 {Exception -> 0x00a9, blocks: (B:9:0x001b, B:11:0x001f, B:13:0x002f, B:15:0x0056, B:14:0x004f, B:8:0x0018, B:5:0x0004), top: B:29:0x0001, inners: #1 }] */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        try {
            if (intent != null) {
                try {
                    this.f72901i = intent.getBooleanExtra("downNotInstall", false);
                    this.f72902j = (VersionDto) intent.getSerializableExtra("papaUpdateinfo");
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                if (!this.f72901i) {
                    this.f72894b = (NotificationManager) getSystemService("notification");
                    if (Build.VERSION.SDK_INT >= 26) {
                        k1.d.a();
                        NotificationChannel notificationChannelA = u.a("channel_1", "更新", 2);
                        notificationChannelA.setSound(null, null);
                        notificationChannelA.setImportance(2);
                        this.f72894b.createNotificationChannel(notificationChannelA);
                        this.f72900h = new NotificationCompat.Builder(this, "channel_1");
                    } else {
                        this.f72900h = new NotificationCompat.Builder(this);
                    }
                    this.f72900h.setSmallIcon(R.drawable.icon).setContentText("已下载0%").setContentTitle(getResources().getString(R.string.app_name)).setContentIntent(PendingIntent.getActivity(this, (int) SystemClock.uptimeMillis(), new Intent(this, (Class<?>) MGMainActivity_.class), 134217728)).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.icon));
                    this.f72900h.setOnlyAlertOnce(true);
                    this.f72894b.notify(this.f72899g, this.f72900h.build());
                }
            } else if (!this.f72901i) {
                this.f72894b = (NotificationManager) getSystemService("notification");
                if (Build.VERSION.SDK_INT >= 26) {
                    k1.d.a();
                    NotificationChannel notificationChannelA2 = u.a("channel_1", "更新", 2);
                    notificationChannelA2.setSound(null, null);
                    notificationChannelA2.setImportance(2);
                    this.f72894b.createNotificationChannel(notificationChannelA2);
                    this.f72900h = new NotificationCompat.Builder(this, "channel_1");
                } else {
                    this.f72900h = new NotificationCompat.Builder(this);
                }
                this.f72900h.setSmallIcon(R.drawable.icon).setContentText("已下载0%").setContentTitle(getResources().getString(R.string.app_name)).setContentIntent(PendingIntent.getActivity(this, (int) SystemClock.uptimeMillis(), new Intent(this, (Class<?>) MGMainActivity_.class), 134217728)).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.icon));
                this.f72900h.setOnlyAlertOnce(true);
                this.f72894b.notify(this.f72899g, this.f72900h.build());
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        b bVar = new b(Looper.myLooper(), this);
        this.f72897e = bVar;
        this.f72897e.sendMessage(bVar.obtainMessage(3, 0));
        if (intent != null && !intent.getStringExtra("url").equals("") && !this.f72903k) {
            n(intent.getStringExtra("url"));
        }
        return super.onStartCommand(intent, flags, startId);
    }
}
