package com.wufun.union.ad;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes8.dex */
public class AdStubActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j8.a f88152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f88153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f88154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ServiceConnection f88155e;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                AdStubActivity.this.finish();
                return;
            }
            Messenger messenger = new Messenger(iBinder);
            Message message = new Message();
            message.what = 3;
            AdStubActivity adStubActivity = AdStubActivity.this;
            message.obj = adStubActivity;
            message.setData(adStubActivity.f88154d);
            try {
                messenger.send(message);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    void b() {
        ServiceConnection serviceConnection = this.f88155e;
        if (serviceConnection == null) {
            return;
        }
        unbindService(serviceConnection);
    }

    void bindService() {
        this.f88155e = new a();
        Intent intent = new Intent("com.wufun.union.ad.action.AdService");
        intent.setPackage(getPackageName());
        bindService(intent, this.f88155e, 1);
    }

    void c() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f88153c.getWindowInsetsController().hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
        } else {
            this.f88153c.setSystemUiVisibility(4871);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j8.a aVarInflate = j8.a.inflate(getLayoutInflater());
        this.f88152b = aVarInflate;
        setContentView(aVarInflate.getRoot());
        this.f88153c = this.f88152b.f92095c;
        c();
        if (getIntent() == null || getIntent().getExtras() == null) {
            finish();
        } else {
            this.f88154d = getIntent().getExtras();
            bindService();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        b();
    }
}
