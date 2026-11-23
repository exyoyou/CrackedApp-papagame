package com.xuanyu.stickyheader;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakHashMap<RecyclerView, i<?>> f90175a = new WeakHashMap<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f90176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RecyclerView f90177c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f90178d;

        a(final ViewGroup val$stickyHeaderLayout, final RecyclerView val$recyclerView, final int val$offset) {
            this.f90176b = val$stickyHeaderLayout;
            this.f90177c = val$recyclerView;
            this.f90178d = val$offset;
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar = new i(this.f90177c, this.f90176b, this.f90176b.getTop());
            iVar.s(this.f90178d);
            f.f90175a.put(this.f90177c, iVar);
            this.f90177c.addOnScrollListener(iVar);
        }
    }

    public static <T> void b(RecyclerView recyclerView, int headerViewTop, ViewGroup stickyHeaderLayout) {
        if (f90175a.get(recyclerView) == null) {
            i<?> iVar = new i<>(recyclerView, stickyHeaderLayout, headerViewTop);
            f90175a.put(recyclerView, iVar);
            recyclerView.addOnScrollListener(iVar);
        }
    }

    public static <T> void c(final RecyclerView recyclerView, final ViewGroup stickyHeaderLayout, final int offset) {
        if (f90175a.get(recyclerView) == null) {
            stickyHeaderLayout.post(new a(stickyHeaderLayout, recyclerView, offset));
        }
    }

    public static <T> com.xuanyu.stickyheader.a<T> d(e<T> eVar, int i10) {
        T item = eVar.getItem(i10);
        if (item == null || !eVar.a(i10)) {
            return null;
        }
        j.c(item.getClass());
        Class clsA = j.a(item.getClass());
        if (clsA == null) {
            return null;
        }
        com.xuanyu.stickyheader.a<T> aVar = (com.xuanyu.stickyheader.a<T>) g.a(clsA);
        if (aVar != null) {
            aVar.g(item);
        }
        return aVar;
    }

    public static void e(boolean on, RecyclerView recyclerView) {
        i<?> iVar = f90175a.get(recyclerView);
        if (iVar == null) {
            return;
        }
        iVar.x(on);
    }
}
