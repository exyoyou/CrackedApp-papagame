package retrofit2.adapter.rxjava2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes10.dex */
final class b<T> extends Observable<Response<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Call<T> f96824b;

    private static final class a<T> implements Disposable, Callback<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Call<?> f96825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Observer<? super Response<T>> f96826c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private volatile boolean f96827d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f96828e = false;

        a(Call<?> call, Observer<? super Response<T>> observer) {
            this.f96825b = call;
            this.f96826c = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f96827d = true;
            this.f96825b.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f96827d;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<T> call, Throwable th) {
            if (call.isCanceled()) {
                return;
            }
            try {
                this.f96826c.onError(th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(new CompositeException(th, th2));
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<T> call, Response<T> response) {
            if (this.f96827d) {
                return;
            }
            try {
                this.f96826c.onNext(response);
                if (this.f96827d) {
                    return;
                }
                this.f96828e = true;
                this.f96826c.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                if (this.f96828e) {
                    RxJavaPlugins.onError(th);
                    return;
                }
                if (this.f96827d) {
                    return;
                }
                try {
                    this.f96826c.onError(th);
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RxJavaPlugins.onError(new CompositeException(th, th2));
                }
            }
        }
    }

    b(Call<T> call) {
        this.f96824b = call;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Response<T>> observer) {
        Call<T> callClone = this.f96824b.clone();
        a aVar = new a(callClone, observer);
        observer.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        callClone.enqueue(aVar);
    }
}
