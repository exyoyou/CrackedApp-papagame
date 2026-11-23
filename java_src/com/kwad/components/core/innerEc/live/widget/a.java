package com.kwad.components.core.innerEc.live.widget;

import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class a<T> extends Observable {
    private T XZ;
    private final CopyOnWriteArrayList<Observer> Ya = new CopyOnWriteArrayList<>();
    private boolean Yb = false;
    private Throwable Yc = null;

    private a(T t10) {
        this.XZ = t10;
    }

    public static <T> a<T> h(T t10) {
        return new a<>(null);
    }

    @Override // java.util.Observable
    public final void addObserver(Observer observer) {
        if (!this.Yb && this.Yc == null) {
            this.Ya.add(observer);
            super.addObserver(observer);
            observer.update(this, this.XZ);
        }
    }

    public final void onNext(T t10) {
        if (this.Yb || this.Yc != null) {
            return;
        }
        this.XZ = t10;
        setChanged();
        notifyObservers(t10);
    }
}
