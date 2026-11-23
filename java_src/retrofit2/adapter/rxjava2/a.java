package retrofit2.adapter.rxjava2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes10.dex */
final class a<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Observable<Response<T>> f96821b;

    /* JADX INFO: renamed from: retrofit2.adapter.rxjava2.a$a, reason: collision with other inner class name */
    private static class C1245a<R> implements Observer<Response<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Observer<? super R> f96822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f96823c;

        C1245a(Observer<? super R> observer) {
            this.f96822b = observer;
        }

        @Override // io.reactivex.Observer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Response<R> response) {
            if (response.isSuccessful()) {
                this.f96822b.onNext(response.body());
                return;
            }
            this.f96823c = true;
            HttpException httpException = new HttpException(response);
            try {
                this.f96822b.onError(httpException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(httpException, th));
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f96823c) {
                return;
            }
            this.f96822b.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f96823c) {
                this.f96822b.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            RxJavaPlugins.onError(assertionError);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f96822b.onSubscribe(disposable);
        }
    }

    a(Observable<Response<T>> observable) {
        this.f96821b = observable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f96821b.subscribe(new C1245a(observer));
    }
}
