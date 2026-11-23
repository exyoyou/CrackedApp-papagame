package io.netty.util.concurrent;

import io.netty.util.concurrent.Future;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PromiseNotificationUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;

/* JADX INFO: loaded from: classes.dex */
public class PromiseNotifier<V, F extends Future<V>> implements GenericFutureListener<F> {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PromiseNotifier.class);
    private final boolean logNotifyFailure;
    private final Promise<? super V>[] promises;

    @SafeVarargs
    public PromiseNotifier(Promise<? super V>... promiseArr) {
        this(true, promiseArr);
    }

    @Override // io.netty.util.concurrent.GenericFutureListener
    public void operationComplete(F f10) throws Exception {
        InternalLogger internalLogger = this.logNotifyFailure ? logger : null;
        int i10 = 0;
        if (f10.isSuccess()) {
            Object obj = f10.get();
            Promise<? super V>[] promiseArr = this.promises;
            int length = promiseArr.length;
            while (i10 < length) {
                PromiseNotificationUtil.trySuccess(promiseArr[i10], obj, internalLogger);
                i10++;
            }
            return;
        }
        if (f10.isCancelled()) {
            Promise<? super V>[] promiseArr2 = this.promises;
            int length2 = promiseArr2.length;
            while (i10 < length2) {
                PromiseNotificationUtil.tryCancel(promiseArr2[i10], internalLogger);
                i10++;
            }
            return;
        }
        Throwable thCause = f10.cause();
        Promise<? super V>[] promiseArr3 = this.promises;
        int length3 = promiseArr3.length;
        while (i10 < length3) {
            PromiseNotificationUtil.tryFailure(promiseArr3[i10], thCause, internalLogger);
            i10++;
        }
    }

    @SafeVarargs
    public PromiseNotifier(boolean z10, Promise<? super V>... promiseArr) {
        ObjectUtil.checkNotNull(promiseArr, "promises");
        for (Promise<? super V> promise : promiseArr) {
            if (promise == null) {
                throw new IllegalArgumentException("promises contains null Promise");
            }
        }
        this.promises = (Promise[]) promiseArr.clone();
        this.logNotifyFailure = z10;
    }
}
