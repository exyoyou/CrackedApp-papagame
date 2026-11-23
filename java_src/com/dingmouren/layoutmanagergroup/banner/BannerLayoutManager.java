package com.dingmouren.layoutmanagergroup.banner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class BannerLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f26111w = "BannerLayoutManager";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private LinearSnapHelper f26112n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private RecyclerView f26113o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f26114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f26115q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f26116r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private c f26117s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f26118t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f26119u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f26120v;

    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return BannerLayoutManager.this.f26120v / displayMetrics.densityDpi;
        }
    }

    public interface b {
        void a(View view, int i10);
    }

    private static class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<BannerLayoutManager> f26122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f26123b;

        public c(BannerLayoutManager bannerLayoutManager) {
            this.f26122a = new WeakReference<>(bannerLayoutManager);
        }

        public void a(boolean z10) {
            this.f26123b = z10;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message == null || !this.f26123b) {
                return;
            }
            int i10 = message.what;
            BannerLayoutManager bannerLayoutManager = this.f26122a.get();
            if (bannerLayoutManager != null) {
                bannerLayoutManager.e().smoothScrollToPosition(i10);
            }
        }
    }

    public BannerLayoutManager(Context context, RecyclerView recyclerView, int i10) {
        super(context);
        this.f26116r = 0;
        this.f26118t = 1000L;
        this.f26120v = 150.0f;
        this.f26112n = new LinearSnapHelper();
        this.f26115q = i10;
        this.f26117s = new c(this);
        this.f26113o = recyclerView;
        setOrientation(0);
        this.f26119u = 0;
    }

    public RecyclerView e() {
        return this.f26113o;
    }

    public void f(b bVar) {
        this.f26114p = bVar;
    }

    public void g(long j10) {
        this.f26118t = j10;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public void h(float f10) {
        this.f26120v = f10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f26112n.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        this.f26117s.a(true);
        Message messageObtain = Message.obtain();
        messageObtain.what = this.f26116r + 1;
        this.f26117s.sendMessageDelayed(messageObtain, this.f26118t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        super.onScrollStateChanged(i10);
        if (i10 != 0) {
            if (i10 == 1) {
                this.f26117s.a(false);
                return;
            }
            return;
        }
        LinearSnapHelper linearSnapHelper = this.f26112n;
        if (linearSnapHelper != null) {
            View viewFindSnapView = linearSnapHelper.findSnapView(this);
            int position = getPosition(viewFindSnapView);
            this.f26116r = position;
            b bVar = this.f26114p;
            if (bVar != null) {
                bVar.a(viewFindSnapView, position % this.f26115q);
            }
            this.f26117s.a(true);
            Message messageObtain = Message.obtain();
            int i11 = this.f26116r + 1;
            this.f26116r = i11;
            messageObtain.what = i11;
            this.f26117s.sendMessageDelayed(messageObtain, this.f26118t);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }

    public BannerLayoutManager(Context context, RecyclerView recyclerView, int i10, int i11) {
        super(context);
        this.f26116r = 0;
        this.f26118t = 1000L;
        this.f26120v = 150.0f;
        this.f26112n = new LinearSnapHelper();
        this.f26115q = i10;
        this.f26117s = new c(this);
        this.f26113o = recyclerView;
        setOrientation(i11);
        this.f26119u = i11;
    }
}
