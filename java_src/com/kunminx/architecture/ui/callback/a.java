package com.kunminx.architecture.ui.callback;

import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class a<T> extends LiveData<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f75072c = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f75073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f75074b;

    /* JADX INFO: renamed from: com.kunminx.architecture.ui.callback.a$a, reason: collision with other inner class name */
    class C0782a implements Observer<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Observer<? super T> f75075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75076b;

        public C0782a(Observer<? super T> observer, int i10) {
            this.f75075a = observer;
            this.f75076b = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.f75075a, ((C0782a) obj).f75075a);
        }

        public int hashCode() {
            return Objects.hash(this.f75075a);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(T t10) {
            if (a.this.f75073a.get() > this.f75076b) {
                if (t10 != null || a.this.f75074b) {
                    this.f75075a.onChanged(t10);
                }
            }
        }
    }

    public a(T t10) {
        super(t10);
        this.f75073a = new AtomicInteger(-1);
    }

    private a<T>.C0782a c(@NonNull Observer<? super T> observer, int i10) {
        return new C0782a(observer, i10);
    }

    public void b() {
        super.setValue(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<T> observer) {
        super.observe(lifecycleOwner, c(observer, -1));
    }

    public void e(@NonNull Observer<? super T> observer) {
        super.observeForever(c(observer, -1));
    }

    @Override // androidx.lifecycle.LiveData
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        super.observe(lifecycleOwner, c(observer, this.f75073a.get()));
    }

    @Override // androidx.lifecycle.LiveData
    public void observeForever(@NonNull Observer<? super T> observer) {
        super.observeForever(c(observer, this.f75073a.get()));
    }

    @Override // androidx.lifecycle.LiveData
    public void removeObserver(@NonNull Observer<? super T> observer) {
        if (observer.getClass().isAssignableFrom(C0782a.class)) {
            super.removeObserver(observer);
        } else {
            super.removeObserver(c(observer, -1));
        }
    }

    @Override // androidx.lifecycle.LiveData
    protected void setValue(T t10) {
        this.f75073a.getAndIncrement();
        super.setValue(t10);
    }

    public a() {
        this.f75073a = new AtomicInteger(-1);
    }
}
