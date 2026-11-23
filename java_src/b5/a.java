package b5;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public interface a<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
