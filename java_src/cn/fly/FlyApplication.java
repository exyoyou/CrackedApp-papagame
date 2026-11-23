package cn.fly;

import android.app.Application;
import cn.fly.tools.proguard.ProtectedMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public class FlyApplication extends Application implements ProtectedMemberKeeper {
    protected String getAppSecret() {
        return null;
    }

    protected String getAppkey() {
        return null;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        FlySDK.init(this, getAppkey(), getAppSecret());
    }
}
