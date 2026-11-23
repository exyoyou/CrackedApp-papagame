package com.xuanyu.stickyheader;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f90169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f90170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f90171c;

    View a(RecyclerView recyclerView, Context context) {
        Class<?> cls = this.f90169a.getClass();
        View viewB = j.b(recyclerView, cls);
        if (viewB == null) {
            viewB = d(context);
            j.e(recyclerView, cls, viewB);
        }
        this.f90171c = viewB;
        return viewB;
    }

    public T b() {
        return this.f90169a;
    }

    public View c() {
        return this.f90170b;
    }

    public abstract View d(Context context);

    /* JADX WARN: Multi-variable type inference failed */
    void e() {
        View view = this.f90171c;
        if (view instanceof b) {
            ((b) view).b(b());
        } else {
            f(view, b());
        }
    }

    public abstract void f(View stickyView, T data);

    void g(T data) {
        this.f90169a = data;
    }

    public void h(View recyclerViewItemView) {
        this.f90170b = recyclerViewItemView;
    }
}
