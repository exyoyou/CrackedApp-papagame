package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f83025b = "c";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f83026c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    f<com.tbruyelle.rxpermissions2.f> f83027a;

    class a implements f<com.tbruyelle.rxpermissions2.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.tbruyelle.rxpermissions2.f f83028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FragmentManager f83029b;

        a(FragmentManager fragmentManager) {
            this.f83029b = fragmentManager;
        }

        @Override // com.tbruyelle.rxpermissions2.c.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public synchronized com.tbruyelle.rxpermissions2.f get() {
            if (this.f83028a == null) {
                this.f83028a = c.this.i(this.f83029b);
            }
            return this.f83028a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> implements ObservableTransformer<T, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f83031a;

        class a implements Function<List<com.tbruyelle.rxpermissions2.b>, ObservableSource<Boolean>> {
            a() {
            }

            @Override // io.reactivex.functions.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ObservableSource<Boolean> apply(List<com.tbruyelle.rxpermissions2.b> list) {
                if (list.isEmpty()) {
                    return Observable.empty();
                }
                Iterator<com.tbruyelle.rxpermissions2.b> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (!it2.next().f83019b) {
                        return Observable.just(Boolean.FALSE);
                    }
                }
                return Observable.just(Boolean.TRUE);
            }
        }

        b(String[] strArr) {
            this.f83031a = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<Boolean> apply(Observable<T> observable) {
            return c.this.p(observable, this.f83031a).buffer(this.f83031a.length).flatMap(new a());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.tbruyelle.rxpermissions2.c$c, reason: collision with other inner class name */
    class C1045c<T> implements ObservableTransformer<T, com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f83034a;

        C1045c(String[] strArr) {
            this.f83034a = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<com.tbruyelle.rxpermissions2.b> apply(Observable<T> observable) {
            return c.this.p(observable, this.f83034a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class d<T> implements ObservableTransformer<T, com.tbruyelle.rxpermissions2.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String[] f83036a;

        class a implements Function<List<com.tbruyelle.rxpermissions2.b>, ObservableSource<com.tbruyelle.rxpermissions2.b>> {
            a() {
            }

            @Override // io.reactivex.functions.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ObservableSource<com.tbruyelle.rxpermissions2.b> apply(List<com.tbruyelle.rxpermissions2.b> list) {
                return list.isEmpty() ? Observable.empty() : Observable.just(new com.tbruyelle.rxpermissions2.b(list));
            }
        }

        d(String[] strArr) {
            this.f83036a = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<com.tbruyelle.rxpermissions2.b> apply(Observable<T> observable) {
            return c.this.p(observable, this.f83036a).buffer(this.f83036a.length).flatMap(new a());
        }
    }

    class e implements Function<Object, Observable<com.tbruyelle.rxpermissions2.b>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String[] f83039b;

        e(String[] strArr) {
            this.f83039b = strArr;
        }

        @Override // io.reactivex.functions.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Observable<com.tbruyelle.rxpermissions2.b> apply(Object obj) {
            return c.this.t(this.f83039b);
        }
    }

    @FunctionalInterface
    public interface f<V> {
        V get();
    }

    public c(@NonNull FragmentActivity fragmentActivity) {
        this.f83027a = h(fragmentActivity.getSupportFragmentManager());
    }

    private com.tbruyelle.rxpermissions2.f g(@NonNull FragmentManager fragmentManager) {
        return (com.tbruyelle.rxpermissions2.f) fragmentManager.findFragmentByTag(f83025b);
    }

    @NonNull
    private f<com.tbruyelle.rxpermissions2.f> h(@NonNull FragmentManager fragmentManager) {
        return new a(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.tbruyelle.rxpermissions2.f i(@NonNull FragmentManager fragmentManager) {
        com.tbruyelle.rxpermissions2.f fVarG = g(fragmentManager);
        if (!(fVarG == null)) {
            return fVarG;
        }
        com.tbruyelle.rxpermissions2.f fVar = new com.tbruyelle.rxpermissions2.f();
        fragmentManager.beginTransaction().add(fVar, f83025b).commitNow();
        return fVar;
    }

    private Observable<?> n(Observable<?> observable, Observable<?> observable2) {
        return observable == null ? Observable.just(f83026c) : Observable.merge(observable, observable2);
    }

    private Observable<?> o(String... strArr) {
        for (String str : strArr) {
            if (!this.f83027a.get().M(str)) {
                return Observable.empty();
            }
        }
        return Observable.just(f83026c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<com.tbruyelle.rxpermissions2.b> p(Observable<?> observable, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
        }
        return n(observable, o(strArr)).flatMap(new e(strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public Observable<com.tbruyelle.rxpermissions2.b> t(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f83027a.get().Q("Requesting permission " + str);
            if (j(str)) {
                arrayList.add(Observable.just(new com.tbruyelle.rxpermissions2.b(str, true, false)));
            } else if (l(str)) {
                arrayList.add(Observable.just(new com.tbruyelle.rxpermissions2.b(str, false, false)));
            } else {
                PublishSubject<com.tbruyelle.rxpermissions2.b> publishSubjectN = this.f83027a.get().N(str);
                if (publishSubjectN == null) {
                    arrayList2.add(str);
                    publishSubjectN = PublishSubject.create();
                    this.f83027a.get().T(str, publishSubjectN);
                }
                arrayList.add(publishSubjectN);
            }
        }
        if (!arrayList2.isEmpty()) {
            u((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return Observable.concat(Observable.fromIterable(arrayList));
    }

    @TargetApi(23)
    private boolean x(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (!j(str) && !activity.shouldShowRequestPermissionRationale(str)) {
                return false;
            }
        }
        return true;
    }

    public <T> ObservableTransformer<T, Boolean> d(String... strArr) {
        return new b(strArr);
    }

    public <T> ObservableTransformer<T, com.tbruyelle.rxpermissions2.b> e(String... strArr) {
        return new C1045c(strArr);
    }

    public <T> ObservableTransformer<T, com.tbruyelle.rxpermissions2.b> f(String... strArr) {
        return new d(strArr);
    }

    public boolean j(String str) {
        return !k() || this.f83027a.get().O(str);
    }

    boolean k() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public boolean l(String str) {
        return k() && this.f83027a.get().P(str);
    }

    void m(String[] strArr, int[] iArr) {
        this.f83027a.get().R(strArr, iArr, new boolean[strArr.length]);
    }

    public Observable<Boolean> q(String... strArr) {
        return Observable.just(f83026c).compose(d(strArr));
    }

    public Observable<com.tbruyelle.rxpermissions2.b> r(String... strArr) {
        return Observable.just(f83026c).compose(e(strArr));
    }

    public Observable<com.tbruyelle.rxpermissions2.b> s(String... strArr) {
        return Observable.just(f83026c).compose(f(strArr));
    }

    @TargetApi(23)
    void u(String[] strArr) {
        this.f83027a.get().Q("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f83027a.get().requestPermissions(strArr);
    }

    public void v(boolean z10) {
        this.f83027a.get().S(z10);
    }

    public Observable<Boolean> w(Activity activity, String... strArr) {
        return !k() ? Observable.just(Boolean.FALSE) : Observable.just(Boolean.valueOf(x(activity, strArr)));
    }

    public c(@NonNull Fragment fragment) {
        this.f83027a = h(fragment.getChildFragmentManager());
    }
}
