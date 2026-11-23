package cn.sharesdk.tencent.qq;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.MobUIShell;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;

/* JADX INFO: loaded from: classes7.dex */
public class ReceiveActivity extends Activity {
    private static PlatformActionListener listener;
    private static String uriScheme;

    public static void setPlatformActionListener(PlatformActionListener platformActionListener) {
        listener = platformActionListener;
    }

    public static void setUriScheme(String str) {
        uriScheme = str;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        SSDKLog.b().a("QQ CallBack Start", new Object[0]);
        super.onCreate(bundle);
        try {
            Intent intent = getIntent();
            String scheme = intent.getScheme();
            finish();
            if (scheme == null || !scheme.startsWith(uriScheme)) {
                return;
            }
            Bundle bundleUrlToBundle = ResHelper.urlToBundle(intent.getDataString());
            String strValueOf = String.valueOf(bundleUrlToBundle.get("result"));
            String strValueOf2 = String.valueOf(bundleUrlToBundle.get("action"));
            if ("shareToQQ".equals(strValueOf2) || "shareToQzone".equals(strValueOf2)) {
                if ("complete".equals(strValueOf)) {
                    if (listener != null) {
                        listener.onComplete(null, 9, new Hashon().fromJson(String.valueOf(bundleUrlToBundle.get(GrantCredentialsPermissionActivity.f89267i))));
                    }
                } else if (!"error".equals(strValueOf)) {
                    PlatformActionListener platformActionListener = listener;
                    if (platformActionListener != null) {
                        platformActionListener.onCancel(null, 9);
                    }
                } else if (listener != null) {
                    listener.onError(null, 9, new Throwable(String.valueOf(bundleUrlToBundle.get(GrantCredentialsPermissionActivity.f89267i))));
                }
            }
            if (Build.VERSION.SDK_INT <= 22) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setClass(this, MobUIShell.class);
                intent2.setFlags(335544320);
                startActivity(intent2);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            PlatformActionListener platformActionListener2 = listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(null, 9, th);
            }
        }
    }
}
