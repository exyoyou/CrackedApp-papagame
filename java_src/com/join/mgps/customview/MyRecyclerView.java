package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.join.mgps.Util.g1;
import com.join.mgps.ptr.PtrFrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class MyRecyclerView extends RecyclerView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.mgps.ptr.a f65340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private j f65341c;

    class a extends com.join.mgps.ptr.a {
        a() {
        }

        @Override // com.join.mgps.ptr.a, com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            g1.g("onRefreshBegin----------");
            if (MyRecyclerView.this.f65341c != null) {
                MyRecyclerView.this.f65341c.onRefresh();
            }
        }
    }

    public MyRecyclerView(Context context) {
        super(context);
        this.f65340b = new a();
    }

    public void setPullRefreshEnable(j refreshListener) {
        this.f65341c = refreshListener;
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).setPtrHandler(this.f65340b);
    }

    public void stopRefresh() {
        if (getParent() == null || !(getParent() instanceof PtrFrameLayout)) {
            return;
        }
        ((PtrFrameLayout) getParent()).C();
    }

    public MyRecyclerView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65340b = new a();
    }

    public MyRecyclerView(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65340b = new a();
    }
}
