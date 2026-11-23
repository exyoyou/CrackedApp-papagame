package com.join.mgps.fragment;

import android.graphics.Typeface;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.gson.Gson;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV4DataBean;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_viewpager)
public class k1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SlidingTabLayout f69976c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ViewPager f69977d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @FragmentArg
    String f69978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FragmentArg
    GameMainV4DataBean.EndGameConfigBean f69979f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String[] f69980g = {"难度", "热度"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f69981h;

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
            k1.this.N(position);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int position) {
        int tabCount = this.f69976c.getTabCount();
        int i10 = 0;
        while (i10 < tabCount) {
            TextView textViewJ = this.f69976c.j(i10);
            textViewJ.setTextSize(0, getResources().getDimensionPixelSize(i10 == position ? R.dimen.wdp32 : R.dimen.wdp28));
            textViewJ.setTypeface(Typeface.create(i10 == position ? "sans-serif-medium" : "sans-serif", 0));
            i10++;
        }
    }

    @AfterViews
    void afterviews() {
        GameMainV4DataBean.EndGameConfigBean endGameConfigBean = this.f69979f;
        if (endGameConfigBean != null && endGameConfigBean.getEndgame_challenge_level() != null) {
            this.f69981h = new Gson().toJson(this.f69979f.getEndgame_challenge_level());
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            String[] strArr = this.f69980g;
            if (i10 >= strArr.length) {
                this.f69977d.setOffscreenPageLimit(3);
                this.f69977d.setAdapter(new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList));
                this.f69976c.setViewPager(this.f69977d, this.f69980g);
                this.f69977d.addOnPageChangeListener(new a());
                N(0);
                return;
            }
            arrayList.add(new com.join.mgps.adapter.h0.a(strArr[i10], h1.o0().c(this.f69978e).e(i10 + 2).d(this.f69981h).build()));
            i10++;
        }
    }
}
