package com.j256.ormlite.dao;

import java.sql.SQLException;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public interface ForeignCollection<T> extends Collection<T>, CloseableIterable<T> {
    @Override // java.util.Collection
    boolean add(T t10);

    void closeLastIterator() throws Exception;

    CloseableIterator<T> closeableIterator(int i10);

    Dao<T, ?> getDao();

    CloseableWrappedIterable<T> getWrappedIterable();

    CloseableWrappedIterable<T> getWrappedIterable(int i10);

    boolean isEager();

    CloseableIterator<T> iterator(int i10);

    CloseableIterator<T> iteratorThrow() throws SQLException;

    CloseableIterator<T> iteratorThrow(int i10) throws SQLException;

    int refresh(T t10) throws SQLException;

    int refreshAll() throws SQLException;

    int refreshCollection() throws SQLException;

    int update(T t10) throws SQLException;

    int updateAll() throws SQLException;
}
