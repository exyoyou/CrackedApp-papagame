package com.join.mgps.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MGMainClassifyFragment;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.customview.SlidingTabLayout2;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_classify_rank)
public class k extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.join.mgps.customview.e0 f69927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ViewPager f69928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    SlidingTabLayout2 f69929e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f69932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f69933i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ArrayList<Fragment> f69930f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<String> f69931g = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f69934j = 0;

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
            k kVar = k.this;
            kVar.f69934j = position;
            kVar.P(position);
        }
    }

    @Click
    void O() {
        com.papa.sim.statistic.t.l(this.f69933i).y2(Where.battle, AccountUtil_.getInstance_(getActivity()).getUid());
        SearchHintActivity_.intent(this.f69933i).start();
    }

    void P(int index) {
        if (getActivity() != null && (getActivity() instanceof MGMainActivity_)) {
            ((MGMainActivity_) getActivity()).setClassifyPrimaryIndex(index);
        }
    }

    public void Q(int currentIndex) {
        com.join.mgps.customview.e0 e0Var;
        ViewPager viewPager;
        if (currentIndex < 0 || (e0Var = this.f69927c) == null || currentIndex >= e0Var.getCount() || (viewPager = this.f69928d) == null || viewPager.getCurrentItem() == currentIndex) {
            return;
        }
        this.f69928d.setCurrentItem(currentIndex);
    }

    @AfterViews
    void afterViews() {
        Context context = getContext();
        this.f69933i = context;
        this.f69932h = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
        this.f69930f.add(new j());
        this.f69930f.add(new s4());
        this.f69930f.add(new x3());
        this.f69931g.add("分类");
        this.f69931g.add("排行");
        this.f69931g.add("专题");
        com.join.mgps.customview.e0 e0Var = new com.join.mgps.customview.e0(getChildFragmentManager(), this.f69930f, this.f69931g);
        this.f69927c = e0Var;
        this.f69928d.setAdapter(e0Var);
        this.f69928d.setOffscreenPageLimit(2);
        this.f69929e.setCustomTabView(R.layout.tab_indicator, android.R.id.text1);
        this.f69929e.setSelectedIndicatorColors(-882134);
        this.f69929e.setDistributeEvenly(true);
        this.f69929e.setMarginWidth(com.join.mgps.Util.i0.a(getContext(), 5.0f));
        this.f69929e.setViewPager(this.f69928d);
        this.f69929e.setOnPageChangeListener(new a());
        initData();
        try {
            Bundle arguments = getArguments();
            if (arguments != null) {
                int i10 = arguments.getInt(MGMainClassifyFragment.J);
                if (i10 == 6) {
                    this.f69934j = 2;
                }
                if (i10 == 0) {
                    int i11 = arguments.getInt("classfyShowType");
                    if (i11 == 1) {
                        this.f69934j = 1;
                    } else if (i11 == 2) {
                        this.f69934j = 0;
                    } else if (i11 == 3) {
                        this.f69934j = 2;
                    }
                } else if (i10 == 1) {
                    this.f69934j = 0;
                } else if (i10 == 6) {
                    this.f69934j = 2;
                } else {
                    this.f69934j = 1;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Q(this.f69934j);
        P(this.f69934j);
    }

    void initData() {
        if (getActivity() != null && (getActivity() instanceof MGMainActivity_)) {
            this.f69934j = ((MGMainActivity_) getActivity()).getClassifyPrimaryIndex();
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }
}
