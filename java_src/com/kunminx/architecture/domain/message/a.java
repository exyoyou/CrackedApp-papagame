package com.kunminx.architecture.domain.message;

/* JADX INFO: loaded from: classes3.dex */
public class a<T> extends b<T> {

    /* JADX INFO: renamed from: com.kunminx.architecture.domain.message.a$a, reason: collision with other inner class name */
    public static class C0781a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f75071a;

        public a<T> a() {
            a<T> aVar = new a<>();
            ((com.kunminx.architecture.ui.callback.a) aVar).f75074b = this.f75071a;
            return aVar;
        }

        public C0781a<T> b(boolean z10) {
            this.f75071a = z10;
            return this;
        }
    }

    public a(T t10) {
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

    public a() {
    }
}
