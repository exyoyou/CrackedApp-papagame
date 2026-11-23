package cn.sharesdk.wechat.utils;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class WechatHandlerActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        SSDKLog.b().a("Wechat CallBack Start", new Object[0]);
        setTheme(R.style.Theme.Translucent);
        try {
            int i10 = Build.VERSION.SDK_INT;
            getWindow().addFlags(Integer.MIN_VALUE);
            if (i10 < 35) {
                getWindow().setStatusBarColor(0);
            }
            super.onCreate(bundle);
            l.a().a(this);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        finish();
    }

    public void onGetMessageFromWXReq(WXMediaMessage wXMediaMessage) {
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        SSDKLog.b().a("Wechat CallBack Start", new Object[0]);
        super.onNewIntent(intent);
        setIntent(intent);
        try {
            l.a().a(this);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        finish();
    }

    public void onShowMessageFromWXReq(WXMediaMessage wXMediaMessage) {
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int i10) {
        if (Build.VERSION.SDK_INT == 26) {
            return;
        }
        super.setRequestedOrientation(i10);
    }
}
