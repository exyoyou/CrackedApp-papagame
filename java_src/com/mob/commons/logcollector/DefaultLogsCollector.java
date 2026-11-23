package com.mob.commons.logcollector;

import com.mob.tools.log.LogCollector;
import com.mob.tools.log.NLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class DefaultLogsCollector implements LogCollector, PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static DefaultLogsCollector f75459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<String, Integer> f75460b = new HashMap<>();

    private DefaultLogsCollector() {
    }

    public static synchronized DefaultLogsCollector get() {
        if (f75459a == null) {
            f75459a = new DefaultLogsCollector();
        }
        return f75459a;
    }

    public void addSDK(String str, int i10) {
        synchronized (this.f75460b) {
            this.f75460b.put(str, Integer.valueOf(i10));
        }
    }

    public final void log(String str, int i10, int i11, String str2, String str3) {
        Integer num = this.f75460b.get(str);
        if (num == null) {
            num = -1;
        }
        NLog.getInstance(str, num.intValue(), str).log(i10, str3, new Object[0]);
    }
}
