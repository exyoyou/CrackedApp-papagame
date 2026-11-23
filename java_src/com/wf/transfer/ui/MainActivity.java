package com.wf.transfer.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.papa91.common.BaseAppConfig;
import com.uc.crashsdk.export.LogType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class MainActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f85819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BroadcastReceiver f85820c = new BroadcastReceiver() { // from class: com.wf.transfer.ui.MainActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                JSONObject jSONObject = new JSONObject(MainActivity.this.f85819b);
                if (jSONObject.has(BaseAppConfig.KEY_ACTIVITY_NAME)) {
                    Intent intent2 = new Intent(MainActivity.this, Class.forName(jSONObject.optString(BaseAppConfig.KEY_ACTIVITY_NAME)));
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent2.putExtra("jsonData", MainActivity.this.f85819b);
                    MainActivity.this.startActivity(intent2);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            MainActivity.this.finish();
        }
    };

    private void b() {
        this.f85819b = getIntent().getStringExtra("jsonData");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.papa.emu.broadcast.source_ready");
        if (Build.VERSION.SDK_INT > 33) {
            registerReceiver(this.f85820c, intentFilter, 2);
        } else {
            registerReceiver(this.f85820c, intentFilter);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(0);
        setContentView(frameLayout);
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        b();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        unregisterReceiver(this.f85820c);
        super.onDestroy();
    }
}
