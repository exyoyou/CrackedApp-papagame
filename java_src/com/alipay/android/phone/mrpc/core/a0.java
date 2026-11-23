package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes7.dex */
final class a0 extends FutureTask<e> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ e0 f6887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ z f6888c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    a0(z zVar, Callable callable, e0 e0Var) {
        super(callable);
        this.f6888c = zVar;
        this.f6887b = e0Var;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        c0 c0VarD = this.f6887b.d();
        if (c0VarD.a() == null) {
            super.done();
            return;
        }
        try {
            get();
            if (isCancelled() || c0VarD.f6902a) {
                c0VarD.f6902a = true;
                if (isCancelled() && isDone()) {
                    return;
                }
                cancel(false);
            }
        } catch (InterruptedException e10) {
            e10.toString();
        } catch (CancellationException unused) {
            c0VarD.f6902a = true;
        } catch (ExecutionException e11) {
            if (e11.getCause() == null || !(e11.getCause() instanceof a)) {
                e11.toString();
                return;
            }
            a aVar = (a) e11.getCause();
            aVar.a();
            aVar.b();
        } catch (Throwable th) {
            throw new RuntimeException("An error occured while executing http request", th);
        }
    }
}
