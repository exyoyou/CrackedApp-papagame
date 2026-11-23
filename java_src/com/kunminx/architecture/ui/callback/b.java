package com.kunminx.architecture.ui.callback;

/* JADX INFO: loaded from: classes3.dex */
public class b<T> extends com.kunminx.architecture.ui.callback.a<T> {

    public static class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f75078a;

        public b<T> a() {
            b<T> bVar = new b<>();
            bVar.f75074b = this.f75078a;
            return bVar;
        }

        public a<T> b(boolean z10) {
            this.f75078a = z10;
            return this;
        }
    }

    public b(T t10) {
        super(t10);
    }

    @Override // androidx.lifecycle.LiveData
    public void postValue(T t10) {
        super.postValue(t10);
    }

    @Override // com.kunminx.architecture.ui.callback.a, androidx.lifecycle.LiveData
    public void setValue(T t10) {
        super.setValue(t10);
    }

    public b() {
    }
}
