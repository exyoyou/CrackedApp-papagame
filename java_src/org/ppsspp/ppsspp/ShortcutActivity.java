package org.ppsspp.ppsspp;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.papa91.arc.util.StoreUtils;
import java.io.File;

/* JADX INFO: loaded from: classes10.dex */
public class ShortcutActivity extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95917c = "PPSSPP";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m.c f95918b = new b();

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            AlertDialog.Builder builder = new AlertDialog.Builder(ShortcutActivity.this);
            builder.setMessage(ShortcutActivity.this.getResources().getString(R.string.bad_disc_message));
            builder.setTitle(ShortcutActivity.this.getResources().getString(R.string.bad_disc_title));
            builder.create().show();
            Looper.loop();
        }
    }

    class b implements m.c {
        b() {
        }

        @Override // org.ppsspp.ppsspp.m.c
        public void a(File file) {
            ShortcutActivity.this.b(file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        Intent intent = new Intent(this, (Class<?>) PpssppActivity.class);
        Uri uriFromFile = Uri.fromFile(new File(str));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Shortcut URI: ");
        sb2.append(uriFromFile.toString());
        intent.setData(uriFromFile);
        intent.putExtra(PpssppActivity.SHORTCUT_EXTRA_KEY, str);
        PpssppActivity.CheckABIAndLoadLibrary();
        String strQueryGameName = queryGameName(str);
        if (strQueryGameName.equals("")) {
            c();
            return;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.NAME", strQueryGameName);
        intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.ic_launcher));
        setResult(-1, intent2);
        finish();
    }

    private void c() {
        new a().start();
        try {
            Thread.sleep(BaseCloudFileManager.ACK_TIMEOUT);
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
        System.exit(-1);
    }

    public static native String queryGameName(String str);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new m(this, new File(StoreUtils.getExternalStorageDirectory(this)), this.f95918b).g();
    }
}
