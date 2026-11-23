package com.join.mgps.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.dto.CommonGameInfoBean;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_viewpager_list)
public class n1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    ViewPager f70283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f70284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f70285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FragmentArg
    String f70286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @FragmentArg
    String f70287g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String[] f70288h = {"推荐", "热门挑战", "难度挑战"};

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
            n1.this.P(position);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentUtil.getInstance().intentActivity(getContext(), commonGameInfoBean.getIntentDataBean());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(int position) {
        int tabCount = this.f70284d.getTabCount();
        int i10 = 0;
        while (i10 < tabCount) {
            TextView textViewJ = this.f70284d.j(i10);
            textViewJ.setTextSize(0, getResources().getDimensionPixelSize(i10 == position ? R.dimen.wdp32 : R.dimen.wdp28));
            textViewJ.setTypeface(null, i10 == position ? 1 : 0);
            i10++;
        }
    }

    public void Q() {
        final CommonGameInfoBean endGameAd;
        try {
            if (getActivity() == null || !(getActivity() instanceof EndGameActivity_) || (endGameAd = ((EndGameActivity_) getActivity()).getEndGameAd()) == null) {
                this.f70285e.setVisibility(8);
                return;
            }
            com.join.android.app.common.utils.l.h(this.f70285e, endGameAd.getBig_pic());
            this.f70285e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70180b.O(endGameAd, view);
                }
            });
            this.f70285e.setVisibility(0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterviews() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.join.mgps.adapter.h0.a(this.f70288h[0], h1.o0().c(this.f70286f).e(1).d("").b(this.f70287g).build()));
        arrayList.add(new com.join.mgps.adapter.h0.a(this.f70288h[1], h1.o0().c(this.f70286f).e(3).d("").b(this.f70287g).build()));
        arrayList.add(new com.join.mgps.adapter.h0.a(this.f70288h[2], h1.o0().c(this.f70286f).e(2).d("").b(this.f70287g).build()));
        this.f70283c.setOffscreenPageLimit(3);
        this.f70283c.setAdapter(new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList));
        this.f70284d.setViewPager(this.f70283c, this.f70288h);
        this.f70283c.addOnPageChangeListener(new a());
        P(0);
        Q();
    }
}
