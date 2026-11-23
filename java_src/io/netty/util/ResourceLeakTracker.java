package io.netty.util;

/* JADX INFO: loaded from: classes.dex */
public interface ResourceLeakTracker<T> {
    boolean close(T t10);

    void record();

    void record(Object obj);
}
