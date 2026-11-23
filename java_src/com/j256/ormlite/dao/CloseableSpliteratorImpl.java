package com.j256.ormlite.dao;

import com.j256.ormlite.misc.IOUtils;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes5.dex */
public class CloseableSpliteratorImpl<T> implements CloseableSpliterator<T> {
    private final Spliterator<T> delegate;
    private final CloseableIterator<? extends T> iterator;

    public CloseableSpliteratorImpl(CloseableIterator<? extends T> closeableIterator) {
        this.delegate = Spliterators.spliteratorUnknownSize(closeableIterator, 0);
        this.iterator = closeableIterator;
    }

    @Override // java.util.Spliterator
    public int characteristics() {
        return this.delegate.characteristics();
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        this.iterator.close();
    }

    @Override // com.j256.ormlite.dao.CloseableSpliterator
    public void closeQuietly() {
        IOUtils.closeQuietly(this);
    }

    @Override // java.util.Spliterator
    public long estimateSize() {
        return this.delegate.estimateSize();
    }

    @Override // java.util.Spliterator
    public boolean tryAdvance(Consumer<? super T> consumer) {
        return this.delegate.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator
    public Spliterator<T> trySplit() {
        return this.delegate.trySplit();
    }
}
