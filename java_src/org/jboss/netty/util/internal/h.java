package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f95824a = Pattern.compile("^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$");

    private h() {
    }

    public static void a(Throwable th) {
        if (th.getCause() != null) {
            a(th.getCause());
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0 || f95824a.matcher(stackTrace[0].getClassName()).matches()) {
            return;
        }
        ArrayList arrayList = new ArrayList(stackTrace.length);
        arrayList.add(stackTrace[0]);
        for (int i10 = 1; i10 < stackTrace.length; i10++) {
            if (!f95824a.matcher(stackTrace[i10].getClassName()).matches()) {
                arrayList.add(stackTrace[i10]);
            }
        }
        th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
    }
}
