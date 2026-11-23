package com.aggmoread.sdk.z.a.u;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.MimeTypeMap;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.byazt.tk.AdBaseConstants;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.mgps.receiver.BootReceiver_;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f4226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DownloadManager f4227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f4229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f4230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f4231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private r f4232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f4233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f4234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f4235j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f4236k;

    class a implements DownloadListener {
        a() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
            u.this.a(str);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (u.this.f4226a.canGoBack()) {
                u.this.f4226a.goBack();
            } else {
                u.this.f4235j.onClose();
            }
        }
    }

    class c implements o.d {
        c() {
        }

        @Override // com.aggmoread.sdk.z.a.u.o.d
        public void a() {
            u.this.a();
            u.this.g();
        }
    }

    class d implements r.a {
        d() {
        }

        @Override // com.aggmoread.sdk.z.a.u.r.a
        public void a() {
            u.this.g();
        }

        @Override // com.aggmoread.sdk.z.a.u.r.a
        public void a(long j10) {
            if (u.this.f4231f != null) {
                u.this.f4231f.setTextSize(18.0f);
                u.this.f4231f.setText("关闭");
            }
            if (j10 <= 600) {
                u.this.g();
            }
        }
    }

    class e extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f4241a;

        e(long j10) {
            this.f4241a = j10;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getLongExtra("extra_download_id", -1L) == this.f4241a) {
                u.this.d();
            }
        }
    }

    public interface f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f4243a = new a();

        static class a implements f {
            a() {
            }

            @Override // com.aggmoread.sdk.z.a.u.u.f
            public boolean canSkip() {
                return false;
            }

            @Override // com.aggmoread.sdk.z.a.u.u.f
            public void onClose() {
            }

            @Override // com.aggmoread.sdk.z.a.u.u.f
            public void onShow() {
            }
        }

        boolean canSkip();

        void onClose();

        void onShow();
    }

    public u(Context context, String str, String str2, f fVar) {
        this.f4233h = "";
        f fVar2 = f.f4243a;
        this.f4236k = context;
        this.f4233h = str;
        this.f4234i = str2;
        this.f4235j = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Uri uriForDownloadedFile = this.f4227b.getUriForDownloadedFile(this.f4228c);
        if (uriForDownloadedFile != null) {
            if (Build.VERSION.SDK_INT < 24) {
                a(uriForDownloadedFile);
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(uriForDownloadedFile, AdBaseConstants.MIME_APK);
            intent.addFlags(1);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            this.f4236k.startActivity(intent);
        }
    }

    private File f() {
        File file = null;
        if (this.f4228c != -1) {
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(this.f4228c);
            query.setFilterByStatus(8);
            Cursor cursorQuery = this.f4227b.query(query);
            if (cursorQuery != null) {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("local_uri"));
                    if (!TextUtils.isEmpty(string)) {
                        file = new File(Uri.parse(string).getPath());
                    }
                }
                cursorQuery.close();
            }
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f4235j.canSkip();
        this.f4231f.setText("×");
        this.f4231f.setTextSize(30.0f);
        this.f4231f.setOnClickListener(new b());
    }

    public View a(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.f4230e = linearLayout;
        linearLayout.setOrientation(1);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.setOrientation(0);
        this.f4230e.setBackgroundColor(Color.parseColor("#dddddd"));
        this.f4230e.addView(linearLayout2);
        this.f4231f = new TextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.f4231f.setPadding(30, 8, 30, 8);
        this.f4231f.setLayoutParams(layoutParams);
        this.f4231f.setTextColor(Color.parseColor("#FFFFFF"));
        linearLayout2.addView(this.f4231f);
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        textView.setLayoutParams(layoutParams2);
        textView.setPadding(0, 0, 30, 0);
        textView.setTextSize(18.0f);
        textView.setText(this.f4233h);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
        textView.setTextColor(Color.parseColor("#FFFFFF"));
        linearLayout2.addView(textView);
        o oVar = new o(context);
        this.f4226a = oVar;
        oVar.a(new c());
        this.f4226a.a(textView);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        this.f4226a.setLayoutParams(layoutParams3);
        this.f4230e.addView(this.f4226a);
        r rVar = new r(new d(), BaseCloudFileManager.ACK_TIMEOUT, 1000L);
        this.f4232g = rVar;
        rVar.start();
        return this.f4230e;
    }

    public void b() {
        BroadcastReceiver broadcastReceiver = this.f4229d;
        if (broadcastReceiver != null) {
            this.f4236k.unregisterReceiver(broadcastReceiver);
        }
        o oVar = this.f4226a;
        if (oVar != null) {
            oVar.loadDataWithBaseURL(null, "", ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
            ((ViewGroup) this.f4226a.getParent()).removeView(this.f4226a);
            this.f4226a.removeAllViews();
            this.f4226a.destroy();
            this.f4226a = null;
        }
    }

    public boolean c() {
        o oVar = this.f4226a;
        if (oVar == null || !oVar.canGoBack()) {
            return false;
        }
        this.f4226a.goBack();
        return true;
    }

    public void e() {
        try {
            if (this.f4234i.startsWith("http:") || this.f4234i.startsWith("https:")) {
                this.f4226a.loadUrl(this.f4234i);
            } else {
                this.f4236k.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f4234i)));
                this.f4235j.onClose();
            }
            this.f4235j.onShow();
        } catch (Exception e10) {
            e10.printStackTrace();
            g();
        }
        this.f4226a.setDownloadListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        r rVar = this.f4232g;
        if (rVar != null) {
            rVar.cancel();
            this.f4232g = null;
        }
    }

    public void b(Activity activity) {
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onStop ");
        a(activity);
    }

    private void a(long j10) {
        IntentFilter intentFilter = new IntentFilter(BootReceiver_.f72259f);
        e eVar = new e(j10);
        this.f4229d = eVar;
        this.f4236k.registerReceiver(eVar, intentFilter, "android.intent.permission.DOWNLOAD_COMPLETE", com.aggmoread.sdk.z.a.m.p.a());
    }

    private void a(Activity activity) {
    }

    public void a(Activity activity, int i10, int i11, Intent intent) {
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "requestCode " + i10 + ", result = " + i11);
        if (i10 == 100861 && i11 == -1) {
            a(activity);
        }
    }

    private void a(Uri uri) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        File fileF = f();
        if (fileF.exists()) {
            intent.setDataAndType(Uri.fromFile(fileF), AdBaseConstants.MIME_APK);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            this.f4236k.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            Uri uri = Uri.parse(str);
            this.f4227b = (DownloadManager) this.f4236k.getSystemService("download");
            DownloadManager.Request request = new DownloadManager.Request(uri);
            request.setAllowedNetworkTypes(3);
            request.setAllowedOverRoaming(false);
            request.setMimeType(MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str)));
            request.setNotificationVisibility(1);
            request.setTitle("download...");
            Toast.makeText(this.f4236k, "正在下载APP", 1).show();
            request.setVisibleInDownloadsUi(true);
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, System.currentTimeMillis() + ".apk");
            long jEnqueue = this.f4227b.enqueue(request);
            this.f4228c = jEnqueue;
            a(jEnqueue);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
