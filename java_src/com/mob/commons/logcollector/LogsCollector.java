package com.mob.commons.logcollector;

import com.mob.tools.log.LogCollector;
import com.mob.tools.proguard.ProtectedMemberKeeper;
import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class LogsCollector implements LogCollector, ProtectedMemberKeeper, PublicMemberKeeper {
    public LogsCollector() {
        DefaultLogsCollector.get().addSDK(getSDKTag(), getSDKVersion());
    }

    protected abstract String getSDKTag();

    protected abstract int getSDKVersion();

    public final void log(String str, int i10, int i11, String str2, String str3) {
        DefaultLogsCollector.get().log(str, i10, i11, str2, str3);
    }
}
