package com.beizi.ad;

import android.app.DownloadManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.lance.a.i;
import com.beizi.ad.lance.a.j;
import com.beizi.ad.lance.a.n;
import com.beizi.fusion.tool.ab;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.join.mgps.receiver.BootReceiver_;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class DownloadService extends Service {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static com.beizi.ad.internal.e.b.a f8492f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f8493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DownloadManager f8495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f8496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f8497e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, ApkBean> f8498g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HashMap<String, Boolean> f8499h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashMap<Long, String> f8500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ApkBean f8501j;

    private class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            super.onChange(z10);
            int[] iArr = {0, 0, 0};
            Cursor cursorQuery = null;
            try {
                cursorQuery = DownloadService.this.f8495c.query(new DownloadManager.Query().setFilterById(DownloadService.this.f8493a));
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    int i10 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                    n.a(com.sigmob.sdk.base.services.f.f79694d, "onChange status：" + i10);
                    if (i10 == 1) {
                        DownloadService downloadService = DownloadService.this;
                        downloadService.c(downloadService.f8501j);
                    }
                    iArr[0] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("bytes_so_far"));
                    iArr[1] = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("total_size"));
                    iArr[2] = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                    n.a(com.sigmob.sdk.base.services.f.f79694d, "progress：" + iArr[0] + net.lingala.zip4j.util.e.F0 + iArr[1] + "");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                n.a(com.sigmob.sdk.base.services.f.f79694d, "onReceived...download finish...begin install！");
                long longExtra = intent.getLongExtra("extra_download_id", -1L);
                if (DownloadService.this.f8500i != null && DownloadService.this.f8498g != null) {
                    String str = (String) DownloadService.this.f8500i.get(Long.valueOf(longExtra));
                    if (DownloadService.this.f8499h != null) {
                        DownloadService.this.f8499h.put(str, Boolean.FALSE);
                    }
                    ApkBean apkBean = (ApkBean) DownloadService.this.f8498g.get(str);
                    if (apkBean != null) {
                        if (apkBean.getmFollowTrackExt() != null) {
                            k.a(apkBean.getmFollowTrackExt().c());
                        }
                        if (Build.VERSION.SDK_INT < 26) {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        } else if (context.getPackageManager().canRequestPackageInstalls()) {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        } else {
                            DownloadService.this.a(context, Long.valueOf(longExtra), apkBean);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void a(String str) {
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        n.a(com.sigmob.sdk.base.services.f.f79694d, "DownloadService onCreate()");
        this.f8495c = (DownloadManager) getSystemService("download");
        this.f8496d = new a(new Handler());
        this.f8497e = new b();
        this.f8498g = new HashMap<>();
        this.f8499h = new HashMap<>();
        this.f8500i = new HashMap<>();
        a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        n.a(com.sigmob.sdk.base.services.f.f79694d, "DownloadService onDestroy()");
        b();
        c();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        Bundle bundleExtra;
        if (intent == null) {
            return 2;
        }
        n.a(com.sigmob.sdk.base.services.f.f79694d, "DownloadService onStartCommand()");
        if (intent != null) {
            try {
                if (intent.getExtras() != null && (bundleExtra = intent.getBundleExtra("data")) != null && bundleExtra.containsKey("apkBean")) {
                    this.f8501j = (ApkBean) bundleExtra.getSerializable("apkBean");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        a(this.f8501j);
        return 2;
    }

    private void b() {
        getContentResolver().unregisterContentObserver(this.f8496d);
        unregisterReceiver(this.f8497e);
        n.a(com.sigmob.sdk.base.services.f.f79694d, "unregister()");
    }

    private void c() {
        com.beizi.ad.internal.e.b.a aVar = f8492f;
        if (aVar != null) {
            aVar.a();
        }
        if (this.f8499h != null) {
            this.f8499h = null;
        }
        if (this.f8498g != null) {
            this.f8498g = null;
        }
        if (this.f8500i != null) {
            this.f8500i = null;
        }
        n.a(com.sigmob.sdk.base.services.f.f79694d, "releaseResources()");
    }

    private void d(ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        n.a(com.sigmob.sdk.base.services.f.f79694d, "BEGIN_INSTALL!");
        if (apkBean.getmFollowTrackExt() != null) {
            k.a(apkBean.getmFollowTrackExt().d());
        }
        if (!TextUtils.isEmpty(apkBean.getPkgName()) && apkBean.isSendLocalBroadcast()) {
            a(apkBean.getPkgName());
        }
    }

    private void e(ApkBean apkBean) {
        try {
            if (!TextUtils.isEmpty(apkBean.getPkgName()) && apkBean.isSendLocalBroadcast()) {
                ab abVarA = ab.a(this);
                Intent intent = new Intent("com.beizi.fusion.download.receiver");
                intent.putExtra("pkName", apkBean.getPkgName());
                abVarA.a(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a() {
        getContentResolver().registerContentObserver(Uri.parse("content://downloads/my_downloads"), true, this.f8496d);
        if (Build.VERSION.SDK_INT >= 31) {
            registerReceiver(this.f8497e, new IntentFilter(BootReceiver_.f72259f), 2);
        } else {
            registerReceiver(this.f8497e, new IntentFilter(BootReceiver_.f72259f));
        }
    }

    private synchronized void b(ApkBean apkBean) {
        Uri uriForFile;
        e(apkBean);
        HashMap<String, Boolean> map = this.f8499h;
        if (map != null && map.get(apkBean.getPkgName()) != null && this.f8499h.get(apkBean.getPkgName()).booleanValue()) {
            n.a(com.sigmob.sdk.base.services.f.f79694d, "downloading..." + apkBean.getPkgName() + "...please not repeat click");
            return;
        }
        File file = new File(apkBean.getDownloadPath(), apkBean.getPkgName() + ".zip");
        if (file.exists()) {
            file.delete();
            n.a(com.sigmob.sdk.base.services.f.f79694d, "apkCacheFile......remove:" + file.exists());
        }
        File file2 = new File(apkBean.getDownloadPath(), apkBean.getApkName());
        if (file2.exists()) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.setAction("android.intent.action.VIEW");
                if (Build.VERSION.SDK_INT < 24) {
                    uriForFile = Uri.fromFile(file2);
                } else {
                    uriForFile = FileProvider.getUriForFile(this, apkBean.getAuthorities(), file2);
                    intent.addFlags(3);
                }
                if (uriForFile != null) {
                    intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                    startActivity(intent);
                    d(apkBean);
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("apkFile.exists():");
                sb2.append(e10);
            }
        }
        try {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(apkBean.getApkUrl()));
            request.setTitle(apkBean.getApkTittleName());
            request.setDescription(apkBean.getApkDesc());
            request.setNotificationVisibility(1);
            request.setDestinationUri(Uri.fromFile(file));
            request.setMimeType(AdBaseConstants.MIME_APK);
            this.f8493a = this.f8495c.enqueue(request);
            n.b(com.sigmob.sdk.base.services.f.f79694d, "mReqId:" + this.f8493a);
            HashMap<Long, String> map2 = this.f8500i;
            if (map2 != null) {
                map2.put(Long.valueOf(this.f8493a), apkBean.getPkgName());
            }
            HashMap<String, Boolean> map3 = this.f8499h;
            if (map3 != null) {
                map3.put(apkBean.getPkgName(), Boolean.TRUE);
            }
            Toast.makeText(this, "已开始下载…", 0).show();
            n.a(com.sigmob.sdk.base.services.f.f79694d, "BEGIN_DOWNLOAD!");
            if (apkBean.getmFollowTrackExt() != null) {
                k.a(apkBean.getmFollowTrackExt().b());
            }
        } catch (Exception e11) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("DownloadManager download fail:");
            sb3.append(e11);
            try {
                if (!TextUtils.isEmpty(apkBean.getApkUrl()) && apkBean.getApkUrl().contains("http")) {
                    HashMap<String, Boolean> map4 = this.f8499h;
                    if (map4 != null) {
                        map4.put(apkBean.getPkgName(), Boolean.TRUE);
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(apkBean.getApkUrl()));
                    intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                    startActivity(intent2);
                }
            } catch (Exception e12) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("skip browser fail:");
                sb4.append(e12);
            }
        }
    }

    private void a(ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        HashMap<String, ApkBean> map = this.f8498g;
        if (map != null) {
            map.put(apkBean.getPkgName(), apkBean);
        }
        HashMap<String, Boolean> map2 = this.f8499h;
        if (map2 != null && map2.get(apkBean.getPkgName()) == null) {
            n.a(com.sigmob.sdk.base.services.f.f79694d, "not have package status...");
            this.f8499h.put(apkBean.getPkgName(), Boolean.FALSE);
        }
        if (TextUtils.isEmpty(apkBean.getAuthorities())) {
            this.f8494b = getPackageName() + ".fileprovider";
        } else {
            this.f8494b = apkBean.getAuthorities();
        }
        i.a(apkBean.getDownloadPath());
        b(apkBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final ApkBean apkBean) {
        if (apkBean == null) {
            return;
        }
        n.a(com.sigmob.sdk.base.services.f.f79694d, "--appUpdate downloadApk start--");
        com.beizi.ad.internal.e.b.a aVarA = com.beizi.ad.internal.e.b.a();
        f8492f = aVarA;
        aVarA.a(new com.beizi.ad.internal.e.b.InterfaceC0219b() { // from class: com.beizi.ad.DownloadService.1
            @Override // com.beizi.ad.internal.e.b.InterfaceC0219b
            public void a(long j10, long j11) {
            }

            @Override // com.beizi.ad.internal.e.b.InterfaceC0219b
            public void b(File file) {
                n.a(com.sigmob.sdk.base.services.f.f79694d, "--appUpdate downloadApk onSuccess--");
                if (DownloadService.this.f8499h != null) {
                    DownloadService.this.f8499h.put(apkBean.getPkgName(), Boolean.FALSE);
                }
                DownloadService.this.a(DownloadService.this.getApplicationContext(), -1L, apkBean);
            }

            @Override // com.beizi.ad.internal.e.b.InterfaceC0219b
            public boolean a(File file) {
                return true;
            }

            @Override // com.beizi.ad.internal.e.b.InterfaceC0219b
            public void a(int i10) {
                n.a(com.sigmob.sdk.base.services.f.f79694d, "--appUpdate downloadApk onFail--");
                try {
                    String apkUrl = apkBean.getApkUrl();
                    if (TextUtils.isEmpty(apkUrl) || !apkUrl.contains("http")) {
                        return;
                    }
                    if (DownloadService.this.f8499h != null) {
                        DownloadService.this.f8499h.put(apkBean.getPkgName(), Boolean.TRUE);
                    }
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(apkUrl));
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    DownloadService.this.startActivity(intent);
                } catch (Exception e10) {
                    n.a(com.sigmob.sdk.base.services.f.f79694d, "skip browser fail:" + e10);
                }
            }
        });
        f8492f.a(new com.beizi.ad.internal.e.b.d(apkBean.getApkUrl(), apkBean.getDownloadPath(), apkBean.getApkName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Long l10, ApkBean apkBean) {
        Uri uriForFile;
        try {
            File file = new File(apkBean.getDownloadPath(), apkBean.getPkgName() + ".zip");
            if (file.exists()) {
                String fileMD5 = apkBean.getFileMD5();
                String strA = j.a(file.getAbsolutePath());
                if (TextUtils.isEmpty(fileMD5) || fileMD5.equals(strA)) {
                    if (file.exists()) {
                        File file2 = new File(apkBean.getDownloadPath(), apkBean.getApkName());
                        file.renameTo(file2);
                        n.a(com.sigmob.sdk.base.services.f.f79694d, "apkFile......raName:" + file2.exists());
                    }
                    Intent intent = new Intent();
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent.setAction("android.intent.action.VIEW");
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 < 23) {
                        uriForFile = this.f8495c.getUriForDownloadedFile(l10.longValue());
                        if (uriForFile != null) {
                            uriForFile = Uri.parse(uriForFile.toString().replace(".zip", ".apk"));
                            n.a(com.sigmob.sdk.base.services.f.f79694d, "uri......" + uriForFile);
                        }
                    } else if (i10 < 24) {
                        File fileA = a(context, l10.longValue());
                        if (fileA != null) {
                            uriForFile = Uri.fromFile(fileA);
                            if (uriForFile != null) {
                                uriForFile = Uri.parse(uriForFile.toString().replace(".zip", ".apk"));
                                n.a(com.sigmob.sdk.base.services.f.f79694d, "uri......" + uriForFile);
                            }
                        } else {
                            uriForFile = null;
                        }
                    } else {
                        uriForFile = FileProvider.getUriForFile(context, this.f8494b, new File(apkBean.getDownloadPath(), apkBean.getApkName()));
                        intent.addFlags(3);
                    }
                    if (uriForFile != null) {
                        intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
                        context.startActivity(intent);
                        d(apkBean);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static File a(Context context, long j10) {
        Cursor cursorQuery;
        String path;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        File file = null;
        if (j10 != -1) {
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(j10);
            query.setFilterByStatus(8);
            if (downloadManager != null && (cursorQuery = downloadManager.query(query)) != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
                    if (!TextUtils.isEmpty(string) && (path = Uri.parse(string).getPath()) != null) {
                        file = new File(path);
                    }
                }
                cursorQuery.close();
            }
        }
        return file;
    }
}
