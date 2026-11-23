package com.join.mgps.recycler;

import android.app.Activity;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes3.dex */
public class f {
    public static LoadingFooter.State a(RecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && (adapter instanceof a)) {
            a aVar = (a) adapter;
            if (aVar.getFooterViewsCount() > 0) {
                return ((LoadingFooter) aVar.c()).getState();
            }
        }
        return LoadingFooter.State.Normal;
    }

    public static void b(Activity instance, RecyclerView recyclerView, int pageSize, LoadingFooter.State state, View.OnClickListener errorListener) {
        RecyclerView.Adapter adapter;
        if (instance == null || instance.isFinishing() || (adapter = recyclerView.getAdapter()) == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.e().getItemCount() < pageSize) {
            return;
        }
        if (aVar.getFooterViewsCount() > 0) {
            LoadingFooter loadingFooter = (LoadingFooter) aVar.c();
            loadingFooter.setState(state);
            if (state == LoadingFooter.State.NetWorkError) {
                loadingFooter.setOnClickListener(errorListener);
            }
            recyclerView.scrollToPosition(aVar.getItemCount() - 1);
            return;
        }
        LoadingFooter loadingFooter2 = new LoadingFooter(instance);
        loadingFooter2.setState(state);
        if (state == LoadingFooter.State.NetWorkError) {
            loadingFooter2.setOnClickListener(errorListener);
        }
        aVar.a(loadingFooter2);
        recyclerView.scrollToPosition(aVar.getItemCount() - 1);
    }

    public static void c(RecyclerView recyclerView, LoadingFooter.State state) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter == null || !(adapter instanceof a)) {
            return;
        }
        a aVar = (a) adapter;
        if (aVar.getFooterViewsCount() > 0) {
            ((LoadingFooter) aVar.c()).setState(state);
        }
    }
}
