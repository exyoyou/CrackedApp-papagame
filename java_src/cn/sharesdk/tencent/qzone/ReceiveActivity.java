package cn.sharesdk.tencent.qzone;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.MobUIShell;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;

/* JADX INFO: loaded from: classes7.dex */
public class ReceiveActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f2897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PlatformActionListener f2898b;

    public static void a(String str) {
        f2897a = str;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        SSDKLog.b().a("Qzone CallBack Start", new Object[0]);
        super.onCreate(bundle);
        try {
            Intent intent = getIntent();
            String scheme = intent.getScheme();
            if (scheme == null || !scheme.startsWith(f2897a)) {
                return;
            }
            finish();
            Bundle bundleUrlToBundle = ResHelper.urlToBundle(intent.getDataString());
            String strValueOf = String.valueOf(bundleUrlToBundle.get("result"));
            String strValueOf2 = String.valueOf(bundleUrlToBundle.get("action"));
            if ("shareToQQ".equals(strValueOf2) || "shareToQzone".equals(strValueOf2)) {
                if ("complete".equals(strValueOf)) {
                    if (f2898b != null) {
                        f2898b.onComplete(null, 9, new Hashon().fromJson(String.valueOf(bundleUrlToBundle.get(GrantCredentialsPermissionActivity.f89267i))));
                    }
                } else if (!"error".equals(strValueOf)) {
                    PlatformActionListener platformActionListener = f2898b;
                    if (platformActionListener != null) {
                        platformActionListener.onCancel(null, 9);
                    }
                } else if (f2898b != null) {
                    f2898b.onError(null, 9, new Throwable(String.valueOf(bundleUrlToBundle.get(GrantCredentialsPermissionActivity.f89267i))));
                }
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setClass(this, MobUIShell.class);
            intent2.setFlags(335544320);
            startActivity(intent2);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            PlatformActionListener platformActionListener2 = f2898b;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(null, 9, th);
            }
        }
    }

    public static void a(PlatformActionListener platformActionListener) {
        f2898b = platformActionListener;
    }
}
