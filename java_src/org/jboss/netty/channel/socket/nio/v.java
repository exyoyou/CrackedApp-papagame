package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.Selector;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f95634a = Runtime.getRuntime().availableProcessors() * 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final long f95635b = 500;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final long f95636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final long f95637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final boolean f95638e;

    static {
        long jF = org.jboss.netty.util.internal.j.f("org.jboss.netty.selectTimeout", f95635b);
        f95636c = jF;
        f95637d = TimeUnit.MILLISECONDS.toNanos(jF);
        f95638e = org.jboss.netty.util.internal.j.d("org.jboss.netty.epollBugWorkaround", false);
        try {
            if (System.getProperty("sun.nio.ch.bugLevel") == null) {
                System.setProperty("sun.nio.ch.bugLevel", "");
            }
        } catch (SecurityException e10) {
            e10.printStackTrace();
        }
    }

    private v() {
    }

    static int a(Selector selector) throws IOException {
        try {
            return selector.select(f95636c);
        } catch (CancelledKeyException e10) {
            e10.printStackTrace();
            return -1;
        }
    }
}
