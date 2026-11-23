package retrofit2.adapter.rxjava2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes10.dex */
final class e<T> extends Observable<d<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Observable<Response<T>> f96834b;

    private static class a<R> implements Observer<Response<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Observer<? super d<R>> f96835b;

        a(Observer<? super d<R>> observer) {
            this.f96835b = observer;
        }

        @Override // io.reactivex.Observer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Response<R> response) {
            this.f96835b.onNext(d.e(response));
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f96835b.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            try {
                this.f96835b.onNext(d.b(th));
                this.f96835b.onComplete();
            } catch (Throwable th2) {
                try {
                    this.f96835b.onError(th2);
                } catch (Throwable th3) {
                    Exceptions.throwIfFatal(th3);
                    RxJavaPlugins.onError(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f96835b.onSubscribe(disposable);
        }
    }

    e(Observable<Response<T>> observable) {
        this.f96834b = observable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super d<T>> observer) {
        this.f96834b.subscribe(new a(observer));
    }
}
