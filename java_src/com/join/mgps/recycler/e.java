package com.join.mgps.recycler;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.Util.h1;

/* JADX INFO: loaded from: classes3.dex */
public class e implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f72307c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f72308d = "e";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinearLayoutManager f72309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RecyclerView f72310b;

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final boolean f72311b = true;

        public a() {
        }
    }

    public e(LinearLayoutManager layoutManager, RecyclerView recyclerView) {
        this.f72309a = layoutManager;
        this.f72310b = recyclerView;
    }

    @Override // com.join.mgps.recycler.c
    public int a() {
        h1.f(f72308d, "getFirstVisiblePosition, findFirstVisibleItemPosition " + this.f72309a.findFirstVisibleItemPosition());
        return this.f72309a.findFirstVisibleItemPosition();
    }

    @Override // com.join.mgps.recycler.c
    public int b() {
        return this.f72309a.findLastVisibleItemPosition();
    }

    @Override // com.join.mgps.recycler.c
    public View getChildAt(int position) {
        String str = f72308d;
        h1.f(str, "getChildAt, mRecyclerView.getChildCount " + this.f72310b.getChildCount());
        h1.f(str, "getChildAt, mLayoutManager.getChildCount " + this.f72309a.getChildCount());
        View childAt = this.f72309a.getChildAt(position);
        h1.f(str, "mRecyclerView getChildAt, position " + position + ", view " + childAt);
        h1.f(str, "mLayoutManager getChildAt, position " + position + ", view " + this.f72309a.getChildAt(position));
        return childAt;
    }

    @Override // com.join.mgps.recycler.c
    public int getChildCount() {
        int childCount = this.f72310b.getChildCount();
        String str = f72308d;
        h1.f(str, "getChildCount, mRecyclerView " + childCount);
        h1.f(str, "getChildCount, mLayoutManager " + this.f72309a.getChildCount());
        return childCount;
    }

    @Override // com.join.mgps.recycler.c
    public int indexOfChild(View view) {
        int iIndexOfChild = this.f72310b.indexOfChild(view);
        h1.f(f72308d, "indexOfChild, " + iIndexOfChild);
        return iIndexOfChild;
    }
}
