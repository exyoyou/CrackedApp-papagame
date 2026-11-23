package com.j256.ormlite.dao;

import java.util.Spliterator;

/* JADX INFO: loaded from: classes5.dex */
public interface CloseableSpliterator<T> extends Spliterator<T>, AutoCloseable {
    void closeQuietly();
}
