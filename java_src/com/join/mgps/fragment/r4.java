package com.join.mgps.fragment;

import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_rank_new)
public class r4 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SlidingTabLayout1 f70696c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RelativeLayout f70697d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ViewPagerCompat f70698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.join.mgps.customview.e0 f70699f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f70700g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f70701h = false;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            r4.this.f70700g = position;
        }
    }

    void M() {
        if (this.f70696c.getChildCount() < 4) {
            this.f70696c.setShouldExpand(true);
        } else {
            this.f70696c.setShouldExpand(false);
        }
    }

    public void N(boolean formNewRank) {
        this.f70701h = formNewRank;
    }

    void O(int i10) {
        ViewPagerCompat viewPagerCompat = this.f70698e;
        if (viewPagerCompat != null) {
            viewPagerCompat.setCurrentItem(i10);
        }
    }

    @AfterViews
    void afterviews() {
        if (this.f70701h) {
            this.f70697d.setVisibility(8);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.join.mgps.activity.k.Z(1001, "1"));
        arrayList.add(com.join.mgps.activity.k.Z(1001, "2"));
        arrayList.add(com.join.mgps.activity.k.Z(1001, "3"));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("  单机榜  ");
        arrayList2.add("模拟器榜");
        arrayList2.add("  网游榜  ");
        com.join.mgps.customview.e0 e0Var = new com.join.mgps.customview.e0(getChildFragmentManager(), arrayList, arrayList2);
        this.f70699f = e0Var;
        e0Var.d(arrayList, arrayList2);
        this.f70699f.notifyDataSetChanged();
        this.f70698e.setAdapter(this.f70699f);
        this.f70698e.setOffscreenPageLimit(3);
        this.f70696c.setViewPager(this.f70698e);
        M();
        this.f70696c.g();
        this.f70696c.setOnPageChangeListener(new a());
        O(this.f70700g);
    }

    public void setCurrentIndex(int currentIndex) {
        this.f70700g = currentIndex;
    }
}
