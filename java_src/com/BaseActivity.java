package com;

import android.R;
import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.db.DatabaseHelper;
import com.join.mgps.Util.b1;
import com.join.mgps.Util.u;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes7.dex */
public class BaseActivity extends BaseFragmentActivity {
    BroadcasExt broadcasExt;
    private Handler hideHandler;
    private Runnable hideRunnable;
    private com.join.android.app.common.dialog.e loading;
    protected com.join.android.app.common.manager.b mTintManager;
    protected com.join.mgps.wrapper.SystemUiHider.a uiHider;
    private DatabaseHelper databaseHelper = null;
    private long lastClickTime = 0;
    private boolean fullScreenFlag = false;
    private Handler mHandler = new Handler();
    int fullScreenCfg = 0;

    class BroadcasExt extends BroadcastReceiver {
        BroadcasExt() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BaseActivity.this.finish();
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseActivity.this.uiHider.b();
        }
    }

    class b implements com.join.mgps.wrapper.SystemUiHider.a.b {
        b() {
        }

        @Override // com.join.mgps.wrapper.SystemUiHider.a.b
        public void onVisibilityChange(boolean visible) {
            if (visible) {
                BaseActivity.this.hideUiDelayed();
            }
        }
    }

    private void clearHiderListener() {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            aVar.d(null);
        }
        Handler handler = this.hideHandler;
        if (handler != null) {
            handler.removeCallbacks(this.hideRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$0() {
        u.e(this);
    }

    @TargetApi(19)
    private void setTranslucentStatus(boolean on) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (on) {
            attributes.flags |= 67108864;
        } else {
            attributes.flags &= -67108865;
        }
        window.setAttributes(attributes);
    }

    private void updateHider() {
        int i10;
        try {
            boolean z10 = this.fullScreenFlag;
            if (z10) {
                if (z10) {
                    i10 = 6;
                } else {
                    i10 = com.join.mgps.wrapper.a.f73400b < 11 ? 3 : 1;
                }
                this.fullScreenCfg = i10;
            } else {
                this.fullScreenCfg = 0;
            }
            if (this.fullScreenCfg != 0) {
                this.hideHandler = new Handler();
                this.hideRunnable = new a();
                com.join.mgps.wrapper.SystemUiHider.a aVarA = com.join.mgps.wrapper.SystemUiHider.a.a(this, findViewById(R.id.content), this.fullScreenCfg);
                this.uiHider = aVarA;
                aVarA.e();
                this.uiHider.d(new b());
            }
            com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
            if (aVar == null || !aVar.c()) {
                return;
            }
            this.uiHider.b();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void createDB(String dbName) {
        q5.e.d(this).b(dbName);
    }

    public void dismissLoading() {
        com.join.android.app.common.dialog.e eVar = this.loading;
        if (eVar == null) {
            return;
        }
        try {
            eVar.dismiss();
        } catch (Exception unused) {
        }
    }

    public DatabaseHelper getHelper() {
        if (this.databaseHelper == null) {
            this.databaseHelper = q5.e.d(this).c();
        }
        return this.databaseHelper;
    }

    protected void hideUiDelayed() {
        this.hideHandler.removeCallbacks(this.hideRunnable);
        if (this.fullScreenCfg != 0) {
            this.hideHandler.postDelayed(this.hideRunnable, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.broadcasExt = new BroadcasExt();
        IntentFilter intentFilter = new IntentFilter();
        org.androidannotations.api.c.n(this).i(this);
        intentFilter.addAction(p5.a.f96233z);
        registerReceiver(this.broadcasExt, intentFilter);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.broadcasExt);
        org.androidannotations.api.c.n(this).p(this);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        clearHiderListener();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!new PrefDef_(this).firstShowUserPermiss().d().booleanValue()) {
            b1.a(this);
        }
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3231b.lambda$onResume$0();
            }
        }, 500L);
        org.androidannotations.api.c.n(this).s(this);
        updateHider();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        dismissLoading();
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            if (hasFocus && this.fullScreenFlag) {
                aVar.b();
            } else {
                aVar.f();
            }
        }
        super.onWindowFocusChanged(hasFocus);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
    }

    public void setSystemUiHide(boolean hide) {
        this.fullScreenFlag = hide;
        updateHider();
        com.join.mgps.wrapper.SystemUiHider.a aVar = this.uiHider;
        if (aVar != null) {
            if (!this.fullScreenFlag) {
                aVar.f();
            } else if (aVar.c()) {
                this.uiHider.b();
            }
        }
    }

    public void showLoading() {
        if (this.loading == null) {
            this.loading = new com.join.android.app.common.dialog.e(this);
        }
        this.loading.show();
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
    }
}
