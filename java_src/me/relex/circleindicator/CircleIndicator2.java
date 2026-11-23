package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;

/* JADX INFO: loaded from: classes.dex */
public class CircleIndicator2 extends BaseCircleIndicator {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private RecyclerView f94259n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private SnapHelper f94260o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RecyclerView.OnScrollListener f94261p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f94262q;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
            super.onScrolled(recyclerView, i10, i11);
            int iM = CircleIndicator2.this.m(recyclerView.getLayoutManager());
            if (iM == -1) {
                return;
            }
            CircleIndicator2.this.b(iM);
        }
    }

    public CircleIndicator2(Context context) {
        super(context);
        this.f94261p = new a();
        this.f94262q = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        RecyclerView.Adapter adapter = this.f94259n.getAdapter();
        e(adapter == null ? 0 : adapter.getItemCount(), m(this.f94259n.getLayoutManager()));
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void b(int i10) {
        super.b(i10);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void e(int i10, int i11) {
        super.e(i10, i11);
    }

    public RecyclerView.AdapterDataObserver getAdapterDataObserver() {
        return this.f94262q;
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void h(me.relex.circleindicator.b bVar) {
        super.h(bVar);
    }

    public void k(@NonNull RecyclerView recyclerView, @NonNull SnapHelper snapHelper) {
        this.f94259n = recyclerView;
        this.f94260o = snapHelper;
        this.f94251k = -1;
        l();
        recyclerView.removeOnScrollListener(this.f94261p);
        recyclerView.addOnScrollListener(this.f94261p);
    }

    public int m(@Nullable RecyclerView.LayoutManager layoutManager) {
        View viewFindSnapView;
        if (layoutManager == null || (viewFindSnapView = this.f94260o.findSnapView(layoutManager)) == null) {
            return -1;
        }
        return layoutManager.getPosition(viewFindSnapView);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator2.this.f94259n == null) {
                return;
            }
            RecyclerView.Adapter adapter = CircleIndicator2.this.f94259n.getAdapter();
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            if (itemCount == CircleIndicator2.this.getChildCount()) {
                return;
            }
            CircleIndicator2 circleIndicator2 = CircleIndicator2.this;
            if (circleIndicator2.f94251k < itemCount) {
                circleIndicator2.f94251k = circleIndicator2.m(circleIndicator2.f94259n.getLayoutManager());
            } else {
                circleIndicator2.f94251k = -1;
            }
            CircleIndicator2.this.l();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            super.onItemRangeChanged(i10, i11);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            super.onItemRangeInserted(i10, i11);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            super.onItemRangeMoved(i10, i11, i12);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            super.onItemRangeRemoved(i10, i11);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            super.onItemRangeChanged(i10, i11, obj);
            onChanged();
        }
    }

    public CircleIndicator2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f94261p = new a();
        this.f94262q = new b();
    }

    public CircleIndicator2(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f94261p = new a();
        this.f94262q = new b();
    }

    @TargetApi(21)
    public CircleIndicator2(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f94261p = new a();
        this.f94262q = new b();
    }
}
