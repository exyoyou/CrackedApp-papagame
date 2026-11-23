package com.join.mgps.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FriendActivity;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_friend_msg)
public class z2 extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    TextView f71544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f71545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    View f71546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ViewPager f71547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<Fragment> f71548g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PagerAdapter f71549h;

    class a extends FragmentPagerAdapter {
        a(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return z2.this.f71548g.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i10) {
            return z2.this.f71548g.get(i10);
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            z2.this.f71544c.setSelected(i10 == 0);
            z2.this.f71545d.setSelected(i10 == 1);
            if (i10 == 1 && z2.this.f71548g.size() > 1 && (z2.this.f71548g.get(1) instanceof d3)) {
                ((d3) z2.this.f71548g.get(1)).V();
                if (com.wufan.friend.chat.c.u().r() != null) {
                    com.wufan.friend.chat.c.u().r().setLikedCount(0);
                }
                View view = z2.this.f71546e;
                if (view != null) {
                    view.setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(View view) {
        this.f71547f.setCurrentItem(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(View view) {
        this.f71547f.setCurrentItem(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U() {
        List<Fragment> list = this.f71548g;
        if (list != null) {
            ((h3) list.get(0)).refresh();
            ((d3) this.f71548g.get(1)).refresh();
            if (this.f71547f.getCurrentItem() == 1 && this.f71548g.size() > 1 && (this.f71548g.get(1) instanceof d3)) {
                ((d3) this.f71548g.get(1)).V();
                if (com.wufan.friend.chat.c.u().r() != null) {
                    com.wufan.friend.chat.c.u().r().setLikedCount(0);
                }
                View view = this.f71546e;
                if (view != null) {
                    view.setVisibility(8);
                }
            }
            if (this.f71546e != null) {
                if (com.wufan.friend.chat.c.u().r() == null || com.wufan.friend.chat.c.u().r().getLikedCount() <= 0) {
                    this.f71546e.setVisibility(8);
                } else {
                    this.f71546e.setVisibility(0);
                }
            }
        }
    }

    @AfterViews
    void afterViews() {
        this.f71544c.setSelected(true);
        this.f71548g.add(new i3());
        this.f71548g.add(new e3());
        a aVar = new a(getChildFragmentManager());
        this.f71549h = aVar;
        this.f71547f.setAdapter(aVar);
        this.f71547f.addOnPageChangeListener(new b());
        this.f71547f.setOffscreenPageLimit(1);
        this.f71547f.setCurrentItem(0);
        this.f71544c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.w2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f71427b.R(view);
            }
        });
        this.f71545d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.x2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f71457b.S(view);
            }
        });
        if (com.wufan.friend.chat.c.u().r() == null || com.wufan.friend.chat.c.u().r().getLikedCount() <= 0) {
            this.f71546e.setVisibility(8);
        } else {
            this.f71546e.setVisibility(0);
        }
    }

    @Click
    void close() {
        if (getContext() instanceof FriendActivity) {
            ((FriendActivity) getContext()).pop();
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.fragment.y2
            @Override // java.lang.Runnable
            public final void run() {
                this.f71504b.U();
            }
        }, 500L);
    }
}
