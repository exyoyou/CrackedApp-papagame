package org.jboss.netty.channel;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public interface j {
    Throwable a();

    j await() throws InterruptedException;

    boolean await(long j10) throws InterruptedException;

    boolean await(long j10, TimeUnit timeUnit) throws InterruptedException;

    j awaitUninterruptibly();

    boolean awaitUninterruptibly(long j10);

    boolean awaitUninterruptibly(long j10, TimeUnit timeUnit);

    void b(k kVar);

    boolean c(long j10, long j11, long j12);

    boolean cancel();

    @Deprecated
    j d() throws Exception;

    void e(k kVar);

    e getChannel();

    boolean isCancelled();

    boolean isDone();

    boolean isSuccess();

    boolean setFailure(Throwable th);

    boolean setSuccess();

    j sync() throws InterruptedException;

    j syncUninterruptibly();
}
