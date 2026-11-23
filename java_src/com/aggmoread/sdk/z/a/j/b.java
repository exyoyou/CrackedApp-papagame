package com.aggmoread.sdk.z.a.j;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import com.aggmoread.sdk.a.adcomm.amsdk.AMCustomBroadReceiver;
import com.byazt.quv.AbsServerManager;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.mgps.receiver.BootReceiver_;
import com.papa91.common.BaseAppConfig;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.a.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final AtomicInteger f3549n = new AtomicInteger(10000);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f3550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.j.c f3552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f3554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.j.a.AbstractC0075a f3555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n f3556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f3557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f3558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f3559j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.m.h f3560k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f3561l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Runnable f3562m;

    class a extends i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f3563b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f3564c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f3565d;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.j.b$a$a, reason: collision with other inner class name */
        class C0076a extends l {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ File f3567b;

            C0076a(File file) {
                this.f3567b = file;
            }

            @Override // com.aggmoread.sdk.z.a.j.l
            public void a(Intent intent, String str, String str2, String str3) {
                com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onCompleted enter , onNotificationClicked = " + str2 + ", downloadId = " + b.this.f3553d);
                b.this.a(this.f3567b, d.f3571c);
                b.this.f3552c.a((long) b.this.f3553d, -2002, "click notification install apk");
            }
        }

        a(String str, String str2, String str3) {
            this.f3563b = str;
            this.f3564c = str2;
            this.f3565d = str3;
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a() {
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onConnectSuccess enter");
            f.a().a(this.f3563b, 1);
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void c() {
            f.a().a(this.f3563b, 2);
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onStartReadBytes enter");
            b.this.f3552c.b();
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a(int i10, String str) {
            f.a().a(this.f3563b, 0);
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onError enter , code = " + i10 + " , message = " + str);
            b.this.f3552c.b((long) b.this.f3553d, i10, str);
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a(File file) {
            if (file != null && file.exists()) {
                f.a().a(this.f3563b, 3);
                b.this.f3557h = file.getAbsolutePath();
                com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onCompleted enter , downloadFile = " + file.getAbsolutePath() + " , downloadId = " + b.this.f3553d);
                b.this.f3552c.b((long) b.this.f3553d);
                com.aggmoread.sdk.z.a.j.e.a(this.f3564c, new C0076a(file));
                b.this.a(this.f3565d, file);
                return;
            }
            f.a().a(this.f3563b, 0);
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onCompleted enter , downloadFile not found");
            b.this.f3552c.a(b.this.f3553d, -2001, "download file not found error");
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.j.b$b, reason: collision with other inner class name */
    class C0077b extends com.aggmoread.sdk.z.a.j.a.AbstractC0075a {
        C0077b(b bVar) {
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            if (bVar.a(bVar.f3550a, b.this.f3551b) || b.this.f3552c == null) {
                return;
            }
            b.this.f3552c.a(b.this.f3553d, -2005, "user cancel install");
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final d f3570b = new d("DOWNLOAD_COMPLETED", 0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final d f3571c = new d("NOTIFICATION_CLICK", 1);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final d f3572d = new d("INSTALLER_BRIDGE", 2);

        private d(String str, int i10) {
            super(str, i10);
        }
    }

    private class e extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f3573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.aggmoread.sdk.z.a.j.c f3574b;

        class a extends l {
            a() {
            }

            @Override // com.aggmoread.sdk.z.a.j.l
            public void a(Intent intent, String str, String str2, String str3) {
                e.this.f3574b.a(b.this.f3553d, -2003, "click notification open apk");
                b.this.a(str3);
                com.aggmoread.sdk.z.a.j.e.a(str);
            }
        }

        public e(String str, com.aggmoread.sdk.z.a.j.c cVar) {
            this.f3573a = str;
            this.f3574b = cVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if (BootReceiver_.f72254a.equals(action) || BootReceiver_.f72257d.equals(action)) {
                    String dataString = intent.getDataString();
                    if (dataString != null && dataString.startsWith("package:")) {
                        dataString = dataString.substring(8);
                    }
                    com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "installedPackageName " + dataString + " ， packageName " + this.f3573a + " , downloadListener = " + this.f3574b);
                    if (TextUtils.isEmpty(this.f3573a) || (dataString != null && dataString.contains(this.f3573a))) {
                        this.f3574b.a(b.this.f3553d);
                        com.aggmoread.sdk.z.a.m.e.a(b.this.f3562m);
                        b.this.f3550a.unregisterReceiver(this);
                        if (b.this.f3559j != null) {
                            b.this.f3559j.g();
                            com.aggmoread.sdk.z.a.j.e.a(b.this.f3558i);
                            com.aggmoread.sdk.z.a.j.e.a(b.this.f3558i, new a());
                        }
                        if (b.this.f3560k == null || TextUtils.isEmpty(this.f3573a)) {
                            return;
                        }
                        b.this.f3560k.a(this.f3573a);
                    }
                }
            }
        }
    }

    public b(Context context, String str, com.aggmoread.sdk.z.a.j.c cVar) {
        com.aggmoread.sdk.z.a.j.c cVar2 = com.aggmoread.sdk.z.a.j.c.f3577a;
        this.f3552c = cVar2;
        this.f3553d = 0;
        this.f3562m = new c();
        this.f3550a = context;
        this.f3561l = str;
        this.f3552c = cVar == null ? cVar2 : cVar;
    }

    public static File b(Context context) {
        File externalCacheDir = context.getApplicationContext().getExternalCacheDir();
        return externalCacheDir != null ? externalCacheDir : context.getApplicationContext().getCacheDir();
    }

    public static File c(Context context) {
        return new File(b(context), "amdownload");
    }

    public void e() {
        if (this.f3560k == null) {
            this.f3560k = com.aggmoread.sdk.z.a.m.h.a(this.f3550a, "appInstallInfo");
        }
        if (TextUtils.isEmpty(this.f3551b) || this.f3560k.b(this.f3551b)) {
            return;
        }
        this.f3560k.b(this.f3551b, this.f3551b + "#" + System.currentTimeMillis() + "#" + this.f3561l);
    }

    public void f() {
        C0077b c0077b = new C0077b(this);
        this.f3555f = c0077b;
        com.aggmoread.sdk.z.a.j.a.a(0, c0077b);
    }

    void g() {
        e eVar = this.f3554e;
        if (eVar != null) {
            try {
                this.f3550a.unregisterReceiver(eVar);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private String a(File file) {
        return com.aggmoread.sdk.z.a.m.c.a(this.f3550a, file.getAbsolutePath()).e();
    }

    private boolean b(String str) {
        g();
        if (this.f3554e == null) {
            this.f3554e = new e(str, this.f3552c);
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(BootReceiver_.f72254a);
            intentFilter.addAction(BootReceiver_.f72257d);
            intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
            this.f3550a.registerReceiver(this.f3554e, intentFilter);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f3552c.a(this.f3553d, -2009, "start listen package error");
            return false;
        }
    }

    public void a(String str) {
        try {
            Intent launchIntentForPackage = this.f3550a.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                this.f3550a.startActivity(launchIntentForPackage);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(String str, String str2, String str3) {
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "areNotificationsEnabled = " + NotificationManagerCompat.from(this.f3550a).areNotificationsEnabled());
        this.f3553d = f3549n.incrementAndGet();
        this.f3551b = str2;
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "downloadApk enter , packageName = " + str2 + ",ulr = " + str);
        File fileC = c(this.f3550a);
        String strA = g.a(str);
        String str4 = strA + ".apk";
        File file = new File(fileC, str4);
        int iA = f.a().a(strA);
        if (iA == 1 || iA == 2) {
            this.f3552c.a();
            Toast.makeText(this.f3550a, "广告正在下载", 0).show();
            return;
        }
        if (iA == 3 && a(str2, file)) {
            this.f3552c.b();
            this.f3552c.b(this.f3553d);
            return;
        }
        if (file.exists()) {
            try {
                com.aggmoread.sdk.z.a.m.c.a(this.f3550a, file.getAbsolutePath()).e();
                if (a(str2, file)) {
                    this.f3552c.b();
                    this.f3552c.b(this.f3553d);
                    return;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f3558i = str;
        Intent intent = new Intent(this.f3550a, (Class<?>) com.aggmoread.sdk.z.a.j.e.a());
        intent.putExtra("apkUrl", str);
        intent.putExtra(BaseAppConfig.KEY_APK_PATH, file.getAbsolutePath());
        intent.putExtra("packageName", str2);
        intent.setAction(AMCustomBroadReceiver.ACTION_NOTIFICATION_CLICK);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f3550a, this.f3553d, intent, 67108864);
        int i10 = com.aggmoread.sdk.z.a.h.a.d().e().f3471c;
        if (i10 == 0) {
            i10 = this.f3550a.getApplicationContext().getApplicationInfo().icon;
        }
        this.f3559j = new k(this.f3550a, this.f3553d, broadcast, strA, TextUtils.isEmpty(str3) ? "" : str3, "正在下载...", i10);
        n nVarA = new n.a(this.f3550a).c(str).a(fileC.getAbsolutePath()).b(str4).a(false).b(3).a(3).a(this.f3559j).a(new a(strA, str, str2)).a();
        this.f3556g = nVarA;
        nVarA.m();
        Toast.makeText(this.f3550a, "开始下载", 0).show();
    }

    private boolean a(Context context) {
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "checkInstallPermission");
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        boolean zCanRequestPackageInstalls = context.getPackageManager().canRequestPackageInstalls();
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "checkInstallPermission hasInstallPermission = " + zCanRequestPackageInstalls);
        return zCanRequestPackageInstalls;
    }

    private boolean a(Context context, Intent intent) {
        return context.getPackageManager().resolveActivity(intent, 0) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context, String str) {
        return com.aggmoread.sdk.z.a.m.d.c(context, str);
    }

    boolean a(File file, d dVar) {
        if (!a(this.f3550a)) {
            this.f3552c.a(-1L, -2010, "no install permission");
        }
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "startInstaller apkFile = " + file.getName() + ", isExist = " + file.exists());
        Context context = this.f3550a;
        Intent intent = new Intent("android.intent.action.VIEW");
        com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "pkg = " + context.getPackageName());
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriA = com.aggmoread.sdk.z.a.j.d.a(context, context.getPackageName() + ".am.download.fp", file);
                com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "localUri = " + uriA);
                intent.setDataAndType(uriA, AdBaseConstants.MIME_APK);
                intent.addFlags(1);
            } else {
                intent.setDataAndType(Uri.fromFile(file), AdBaseConstants.MIME_APK);
            }
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (a(context, intent)) {
                try {
                    com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "installer startActivity intent = " + intent);
                    context.startActivity(intent);
                    f();
                    this.f3552c.c((long) this.f3553d);
                    e();
                    return true;
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "start installer error , message = " + e10.getMessage());
                    this.f3552c.a((long) this.f3553d, -2007, "start installer error");
                    e10.printStackTrace();
                }
            } else {
                this.f3552c.a(this.f3553d, -2008, "installer not found");
                com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "installer not found");
            }
            return false;
        } catch (Exception e11) {
            e11.printStackTrace();
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "startInstaller exception e  = " + e11.getMessage());
            this.f3552c.a((long) this.f3553d, -2006, "installer intent builder error");
            return false;
        }
    }

    public boolean a(String str, File file) {
        k kVar = this.f3559j;
        if (kVar != null && !kVar.b()) {
            try {
                this.f3559j.a(com.aggmoread.sdk.z.a.m.c.a(this.f3550a, file.getAbsolutePath()).b());
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        try {
            if (TextUtils.isEmpty(str)) {
                str = a(file);
            }
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "downComplete willListenPackageName= " + str);
            if (!a(this.f3550a, str)) {
                b(str);
                boolean zA = a(file, d.f3570b);
                com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "isStartInstallerSuccess = " + zA);
                return zA;
            }
            a(str);
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "downComplete clickStartApp");
            return true;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            com.aggmoread.sdk.z.a.d.d("ApiDownloadHelper", "onCompleted enter , package name not found");
            this.f3552c.a(this.f3553d, -2001, "file not found error");
            return false;
        }
    }
}
