package com.join.mgps.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_papa_standalone_oversea)
public class n4 extends Fragment {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f70311i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f70312j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f70313k = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f70314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f70315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f70316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    InterceptEventViewPager f70317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    k4 f70318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    k4 f70319h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            n4.this.f70317f.setCurrentItem(0);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            n4.this.f70317f.setCurrentItem(1);
        }
    }

    class c implements InterceptEventViewPager.c {
        c() {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageScrollStateChanged(int state) {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // com.join.mgps.customview.InterceptEventViewPager.c
        public void onPageSelected(int position) {
            if (position == 0) {
                n4.this.f70315d.setTextColor(Color.parseColor("#F47500"));
                n4.this.f70316e.setTextColor(Color.parseColor("#4A4A4A"));
            } else {
                if (position != 1) {
                    return;
                }
                n4.this.f70316e.setTextColor(Color.parseColor("#F47500"));
                n4.this.f70315d.setTextColor(Color.parseColor("#4A4A4A"));
            }
        }
    }

    private class d extends FragmentPagerAdapter {
        public d(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return n4.this.P(position);
        }
    }

    public static n4 O(int type) {
        o4 o4Var = new o4();
        Bundle bundle = new Bundle();
        bundle.putInt("type", type);
        o4Var.setArguments(bundle);
        return o4Var;
    }

    int M() {
        int i10 = this.f70314c;
        if (i10 == 1) {
            return 14;
        }
        return i10 == 2 ? 16 : 18;
    }

    int N() {
        int i10 = this.f70314c;
        if (i10 == 1) {
            return 15;
        }
        return i10 == 2 ? 17 : 19;
    }

    Fragment P(int position) {
        if (position == 0) {
            if (this.f70318g == null) {
                this.f70318g = k4.b0(M());
            }
            return this.f70318g;
        }
        if (position != 1) {
            return null;
        }
        if (this.f70319h == null) {
            this.f70319h = k4.b0(N());
        }
        return this.f70319h;
    }

    @AfterViews
    void afterViews() {
        this.f70315d.setOnClickListener(new a());
        this.f70316e.setOnClickListener(new b());
        d dVar = new d(getChildFragmentManager());
        this.f70317f.setViewPagerCallback(new c());
        this.f70317f.setIsAsParentViewPager(true);
        this.f70317f.setAdapter(dVar);
        this.f70317f.setOffscreenPageLimit(2);
        this.f70317f.setCurrentItem(0);
        this.f70315d.setTextColor(Color.parseColor("#F47500"));
        this.f70316e.setTextColor(Color.parseColor("#4A4A4A"));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.f70314c = getArguments().getInt("type");
    }
}
