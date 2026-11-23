package io.netty.util.internal;

/* JADX INFO: loaded from: classes.dex */
public interface LongCounter {
    void add(long j10);

    void decrement();

    void increment();

    long value();
}
