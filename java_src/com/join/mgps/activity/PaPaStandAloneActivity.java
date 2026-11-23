package com.join.mgps.activity;

import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.BaseFragmentActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_papa_standalone)
public class PaPaStandAloneActivity extends BaseFragmentActivity {
    static String[] TITLE_PAPA_STANDALONE = {"推荐", "中文", "破解", "美国榜", "日本榜", "韩国榜"};
    private Fragment[] fragments = new Fragment[TITLE_PAPA_STANDALONE.length];

    @ViewById
    TabPageIndicator pageIndicator;

    @ViewById
    TextView title_textview;

    @ViewById
    InterceptEventViewPager viewPager;

    private class a extends FragmentPagerAdapter {
        public a(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PaPaStandAloneActivity.TITLE_PAPA_STANDALONE.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return PaPaStandAloneActivity.this.newFragment(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return PaPaStandAloneActivity.TITLE_PAPA_STANDALONE[position];
        }
    }

    private int getTypeByPosition(int position) {
        if (position == 0) {
            return 11;
        }
        if (position == 1) {
            return 12;
        }
        if (position == 2) {
            return 13;
        }
        if (position == 3) {
            return 1;
        }
        if (position != 4) {
            return position != 5 ? -1 : 3;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment newFragment(int position) {
        Fragment fragment = this.fragments[position];
        if (fragment != null) {
            return fragment;
        }
        int typeByPosition = getTypeByPosition(position);
        if (position == 0 || position == 1 || position == 2) {
            com.join.mgps.fragment.k4 k4VarB0 = com.join.mgps.fragment.k4.b0(typeByPosition);
            this.fragments[position] = k4VarB0;
            return k4VarB0;
        }
        if (position != 3 && position != 4 && position != 5) {
            return null;
        }
        com.join.mgps.fragment.n4 n4VarO = com.join.mgps.fragment.n4.O(typeByPosition);
        this.fragments[position] = n4VarO;
        return n4VarO;
    }

    @AfterViews
    void afterViews() {
        this.title_textview.setText("悟饭单机");
        a aVar = new a(getSupportFragmentManager());
        this.viewPager.setIsAsParentViewPager(true);
        this.viewPager.setAdapter(aVar);
        this.viewPager.setOffscreenPageLimit(6);
        this.viewPager.setCurrentItem(0);
        if ("2308".equals(MApplication.B) || "750".equals(MApplication.B) || "753".equals(MApplication.B)) {
            TITLE_PAPA_STANDALONE = new String[]{"推荐", "中文", "经典", "美国榜", "日本榜", "韩国榜"};
        }
        this.pageIndicator.setViewPager(this.viewPager);
    }

    @Click
    void back_image() {
        finish();
    }

    public InterceptEventViewPager getViewPager() {
        return this.viewPager;
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
