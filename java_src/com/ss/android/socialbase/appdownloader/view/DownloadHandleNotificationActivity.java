package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.byazt.x.c;
import com.byazt.z.DownloadHandlerService;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadHandleNotificationActivity extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f82436c = {"android.permission.POST_NOTIFICATIONS"};
    private DownloadHandlerService tt = new DownloadHandlerService();

    private void c() {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                requestPermissions(f82436c, 1000);
            }
        } catch (Throwable th) {
            c.tt("DownloadNotificationJumpActivity", "requestNotificationPermissionError:".concat(String.valueOf(th)));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if ("android.ss.intent.action.DOWNLOAD_REQUEST_PERMISSION".equals(intent.getAction())) {
            c();
        } else {
            this.tt.onStartCommand(intent, 0, 0);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 != 1000 || iArr == null || iArr.length <= 0 || iArr[0] != 0) {
            c.tt("DownloadNotificationJumpActivity", "onRequestPermissionsResultNotification Permission denied");
        }
    }
}
