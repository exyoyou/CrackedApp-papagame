package com.aggmoread.sdk.a.adcomm.amsdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.aggmoread.sdk.z.a.u.c;
import com.aggmoread.sdk.z.a.u.u;
import com.kuaishou.weapon.p0.g;

/* JADX INFO: loaded from: classes7.dex */
public class AmCustomWebviewActivity extends Activity {
    private static c.a webViewStateListener = c.a.f4080a;
    private int DOWNLOAD_REQUEST_PERMISSION_CODE = 1001110;
    private boolean canSkip = true;
    private u webImpl;

    private void initView() {
        setContentView(this.webImpl.a((Context) this));
    }

    private void loadUrl() {
        u uVar = this.webImpl;
        if (uVar != null) {
            uVar.e();
        }
    }

    public static void setWebViewStateListener(c.a aVar) {
        if (aVar == null) {
            aVar = c.a.f4080a;
        }
        webViewStateListener = aVar;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && this.canSkip) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        u uVar = this.webImpl;
        if (uVar != null) {
            uVar.a(this, i10, i11, intent);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.webImpl = new u(this, getIntent().getStringExtra("title"), getIntent().getStringExtra("mClickUrl"), new u.f() { // from class: com.aggmoread.sdk.a.adcomm.amsdk.AmCustomWebviewActivity.1
            @Override // com.aggmoread.sdk.z.a.u.u.f
            public boolean canSkip() {
                AmCustomWebviewActivity.this.canSkip = false;
                return false;
            }

            @Override // com.aggmoread.sdk.z.a.u.u.f
            public void onClose() {
                AmCustomWebviewActivity.this.finish();
            }

            @Override // com.aggmoread.sdk.z.a.u.u.f
            public void onShow() {
                AmCustomWebviewActivity.webViewStateListener.onShow();
            }
        });
        initView();
        if (Build.VERSION.SDK_INT >= 29 || ContextCompat.checkSelfPermission(this, g.f74786j) == 0) {
            loadUrl();
        } else {
            ActivityCompat.requestPermissions(this, new String[]{g.f74786j}, this.DOWNLOAD_REQUEST_PERMISSION_CODE);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        u uVar = this.webImpl;
        if (uVar != null) {
            uVar.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            u uVar = this.webImpl;
            if (uVar != null && uVar.c()) {
                return true;
            }
            setResult(0, new Intent());
            finish();
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        u uVar = this.webImpl;
        if (uVar != null && uVar.c()) {
            return true;
        }
        setResult(0, new Intent());
        finish();
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (iArr.length <= 0 || i10 != this.DOWNLOAD_REQUEST_PERMISSION_CODE) {
            super.onRequestPermissionsResult(i10, strArr, iArr);
        } else if (iArr[0] == 0) {
            loadUrl();
        } else {
            finish();
            webViewStateListener.onShow();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        u uVar = this.webImpl;
        if (uVar != null) {
            uVar.b(this);
        }
    }
}
