package retrofit2.adapter.rxjava2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes10.dex */
final class c<T> extends Observable<Response<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Call<T> f96829b;

    private static final class a implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Call<?> f96830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f96831c;

        a(Call<?> call) {
            this.f96830b = call;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f96831c = true;
            this.f96830b.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f96831c;
        }
    }

    c(Call<T> call) {
        this.f96829b = call;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Response<T>> observer) {
        boolean z10;
        Call<T> callClone = this.f96829b.clone();
        a aVar = new a(callClone);
        observer.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        try {
            Response<T> responseExecute = callClone.execute();
            if (!aVar.isDisposed()) {
                observer.onNext(responseExecute);
            }
            if (aVar.isDisposed()) {
                return;
            }
            try {
                observer.onComplete();
            } catch (Throwable th) {
                th = th;
                z10 = true;
                Exceptions.throwIfFatal(th);
                if (z10) {
                    RxJavaPlugins.onError(th);
                    return;
                }
                if (aVar.isDisposed()) {
                    return;
                }
                try {
                    observer.onError(th);
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RxJavaPlugins.onError(new CompositeException(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
            z10 = false;
        }
    }
}
