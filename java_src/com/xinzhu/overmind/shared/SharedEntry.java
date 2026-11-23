package com.xinzhu.overmind.shared;

import android.content.Context;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import com.join.mgps.va.overmind.VApp;
import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes8.dex */
public final class SharedEntry extends VApp {
    @Override // com.join.mgps.va.overmind.VApp, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.va.overmind.VApp
    public boolean isMindProcess() {
        return Overmind.get().isMonitorProcess() || Overmind.get().isServerProcess() || Overmind.get().isVirtualProcess();
    }

    @Override // com.join.mgps.va.overmind.VApp, com.papa91.arc.MApplication, android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        if (isMindProcess()) {
            return;
        }
        super.onConfigurationChanged(configuration);
    }
}
