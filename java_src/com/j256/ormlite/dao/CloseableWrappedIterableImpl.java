package com.j256.ormlite.dao;

import com.j256.ormlite.misc.IOUtils;

/* JADX INFO: loaded from: classes5.dex */
public class CloseableWrappedIterableImpl<T> implements CloseableWrappedIterable<T> {
    private final CloseableIterable<T> iterable;
    private CloseableIterator<T> iterator;

    public CloseableWrappedIterableImpl(CloseableIterable<T> closeableIterable) {
        this.iterable = closeableIterable;
    }

    @Override // com.j256.ormlite.dao.CloseableWrappedIterable, java.lang.AutoCloseable
    public void close() throws Exception {
        CloseableIterator<T> closeableIterator = this.iterator;
        if (closeableIterator != null) {
            closeableIterator.close();
            this.iterator = null;
        }
    }

    @Override // com.j256.ormlite.dao.CloseableIterable
    public CloseableIterator<T> closeableIterator() {
        IOUtils.closeQuietly(this);
        CloseableIterator<T> closeableIterator = this.iterable.closeableIterator();
        this.iterator = closeableIterator;
        return closeableIterator;
    }

    @Override // java.lang.Iterable
    public CloseableIterator<T> iterator() {
        return closeableIterator();
    }
}
