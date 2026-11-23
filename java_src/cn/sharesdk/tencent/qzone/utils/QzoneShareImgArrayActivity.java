package cn.sharesdk.tencent.qzone.utils;

import android.app.PendingIntent;
import android.widget.LinearLayout;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.FakeActivity;

/* JADX INFO: loaded from: classes7.dex */
public class QzoneShareImgArrayActivity extends FakeActivity {
    private String appid;

    /* JADX INFO: renamed from: pa, reason: collision with root package name */
    private PlatformActionListener f2899pa;

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        try {
            LinearLayout linearLayout = new LinearLayout(this.activity);
            linearLayout.setOrientation(1);
            this.activity.setContentView(linearLayout);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        try {
            Class<?> cls = Class.forName("cn.sharesdk.tencent.qq.ReceiveActivity");
            cls.getMethod("setUriScheme", String.class).invoke(null, "tencent" + this.appid);
            cls.getMethod("setPlatformActionListener", PlatformActionListener.class).invoke(null, this.f2899pa);
        } catch (Throwable th2) {
            SSDKLog.b().a("setlistener" + th2, new Object[0]);
        }
        PendingIntent pendingIntent = (PendingIntent) this.activity.getIntent().getParcelableExtra("key_extra_pending_intent");
        if (pendingIntent == null) {
            SSDKLog.b().a("pI null", new Object[0]);
            return;
        }
        try {
            this.activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 0, null, 0, 0, 0);
            finish();
        } catch (Throwable th3) {
            SSDKLog.b().d("startIntentSenderForResult: " + th3, new Object[0]);
            PlatformActionListener platformActionListener = this.f2899pa;
            if (platformActionListener != null) {
                platformActionListener.onError(null, 9, new Throwable("-20 QQ版本过低"));
            }
            finish();
        }
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setSharedCallback(PlatformActionListener platformActionListener) {
        this.f2899pa = platformActionListener;
    }
}
