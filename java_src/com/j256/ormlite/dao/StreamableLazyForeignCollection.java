package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.IOUtils;
import java.util.Spliterators;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* JADX INFO: loaded from: classes5.dex */
public class StreamableLazyForeignCollection<T, ID> extends LazyForeignCollection<T, ID> {
    private static final long serialVersionUID = 1288122099601287859L;

    public StreamableLazyForeignCollection(Dao<T, ID> dao, Object obj, Object obj2, FieldType fieldType, String str, boolean z10) {
        super(dao, obj, obj2, fieldType, str, z10);
    }

    @Override // java.util.Collection
    public Stream<T> stream() {
        final CloseableIterator<T> closeableIterator = closeableIterator();
        try {
            return h.a(StreamSupport.stream(Spliterators.spliteratorUnknownSize(closeableIterator, 0), false).onClose(new Runnable() { // from class: com.j256.ormlite.dao.StreamableLazyForeignCollection.1
                @Override // java.lang.Runnable
                public void run() {
                    IOUtils.closeQuietly(closeableIterator);
                }
            }));
        } catch (Error | RuntimeException e10) {
            closeableIterator.closeQuietly();
            throw e10;
        }
    }

    @Override // java.util.Collection, java.lang.Iterable
    public CloseableSpliterator<T> spliterator() {
        CloseableIterator<T> closeableIterator = closeableIterator();
        try {
            return new CloseableSpliteratorImpl(closeableIterator);
        } catch (Error | RuntimeException e10) {
            closeableIterator.closeQuietly();
            throw e10;
        }
    }
}
