package com.bytedance.pangle.activity;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.byazt.euv.tt;
import com.bytedance.pangle.plugin.Plugin;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public interface IPluginActivity {
    void _requestPermissions(String[] strArr, int i10);

    void attachBaseContext(Context context);

    String getPluginPkgName();

    void onCreate(Bundle bundle);

    void setPluginProxyActivity(tt ttVar, Plugin plugin);

    void setProxyTheme2Plugin(int i10);
}
