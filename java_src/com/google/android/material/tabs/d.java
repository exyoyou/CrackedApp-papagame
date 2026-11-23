package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final TabLayout f32060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ViewPager2 f32061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f32062c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f32063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f32064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private RecyclerView.Adapter<?> f32065f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f32066g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private c f32067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private TabLayout.d f32068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private RecyclerView.AdapterDataObserver f32069j;

    private class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            d.this.d();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            d.this.d();
        }
    }

    public interface b {
        void a(@NonNull TabLayout.g gVar, int i10);
    }

    private static class c extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private final WeakReference<TabLayout> f32071a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f32072b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f32073c;

        c(TabLayout tabLayout) {
            this.f32071a = new WeakReference<>(tabLayout);
            a();
        }

        void a() {
            this.f32073c = 0;
            this.f32072b = 0;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i10) {
            this.f32072b = this.f32073c;
            this.f32073c = i10;
            TabLayout tabLayout = this.f32071a.get();
            if (tabLayout != null) {
                tabLayout.Z(this.f32073c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.f32071a.get();
            if (tabLayout != null) {
                int i12 = this.f32073c;
                tabLayout.U(i10, f10, i12 != 2 || this.f32072b == 1, (i12 == 2 && this.f32072b == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.f32071a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f32073c;
            tabLayout.S(tabLayout.D(i10), i11 == 0 || (i11 == 2 && this.f32072b == 0));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.tabs.d$d, reason: collision with other inner class name */
    private static class C0608d implements TabLayout.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewPager2 f32074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f32075b;

        C0608d(ViewPager2 viewPager2, boolean z10) {
            this.f32074a = viewPager2;
            this.f32075b = z10;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(@NonNull TabLayout.g gVar) {
            this.f32074a.setCurrentItem(gVar.k(), this.f32075b);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g gVar) {
        }
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull b bVar) {
        this(tabLayout, viewPager2, true, bVar);
    }

    public void a() {
        if (this.f32066g) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter<?> adapter = this.f32061b.getAdapter();
        this.f32065f = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.f32066g = true;
        c cVar = new c(this.f32060a);
        this.f32067h = cVar;
        this.f32061b.registerOnPageChangeCallback(cVar);
        C0608d c0608d = new C0608d(this.f32061b, this.f32063d);
        this.f32068i = c0608d;
        this.f32060a.h(c0608d);
        if (this.f32062c) {
            a aVar = new a();
            this.f32069j = aVar;
            this.f32065f.registerAdapterDataObserver(aVar);
        }
        d();
        this.f32060a.setScrollPosition(this.f32061b.getCurrentItem(), 0.0f, true);
    }

    public void b() {
        RecyclerView.Adapter<?> adapter;
        if (this.f32062c && (adapter = this.f32065f) != null) {
            adapter.unregisterAdapterDataObserver(this.f32069j);
            this.f32069j = null;
        }
        this.f32060a.N(this.f32068i);
        this.f32061b.unregisterOnPageChangeCallback(this.f32067h);
        this.f32068i = null;
        this.f32067h = null;
        this.f32065f = null;
        this.f32066g = false;
    }

    public boolean c() {
        return this.f32066g;
    }

    void d() {
        this.f32060a.L();
        RecyclerView.Adapter<?> adapter = this.f32065f;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                TabLayout.g gVarI = this.f32060a.I();
                this.f32064e.a(gVarI, i10);
                this.f32060a.l(gVarI, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.f32061b.getCurrentItem(), this.f32060a.getTabCount() - 1);
                if (iMin != this.f32060a.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f32060a;
                    tabLayout.R(tabLayout.D(iMin));
                }
            }
        }
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, @NonNull b bVar) {
        this(tabLayout, viewPager2, z10, true, bVar);
    }

    public d(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, boolean z11, @NonNull b bVar) {
        this.f32060a = tabLayout;
        this.f32061b = viewPager2;
        this.f32062c = z10;
        this.f32063d = z11;
        this.f32064e = bVar;
    }
}
