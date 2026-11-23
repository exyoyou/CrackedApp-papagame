package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.TabPageIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_voucher_codesbox)
public class VoucherCodesBoxActivity extends FragmentActivity {
    private static final String[] TITLES = {"游戏礼包", "代金券"};

    @Extra
    int Uid;
    private FragmentPagerAdapter fragPagerAdapter;
    private Fragment[] fragments = new Fragment[2];

    @Extra
    int index;

    @ViewById
    TabPageIndicator pageIndicator;

    @ViewById
    TextView textTopRight;

    @ViewById
    TextView title_textview;

    @ViewById
    ViewPager viewPager;

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
            if (position == 1) {
                VoucherCodesBoxActivity.this.textTopRight.setVisibility(0);
            } else {
                VoucherCodesBoxActivity.this.textTopRight.setVisibility(8);
            }
        }
    }

    private class b extends FragmentPagerAdapter {
        public b(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return VoucherCodesBoxActivity.TITLES.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return VoucherCodesBoxActivity.this.newInstance(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return VoucherCodesBoxActivity.TITLES[position];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment newInstance(int position) {
        Fragment pVar = this.fragments[position];
        if (pVar != null) {
            return pVar;
        }
        if (position == 0) {
            pVar = new com.join.mgps.fragment.p();
            Bundle bundle = new Bundle();
            bundle.putInt("uid", this.Uid);
            pVar.setArguments(bundle);
        } else if (position == 1) {
            pVar = new com.join.mgps.fragment.f6();
        }
        this.fragments[position] = pVar;
        return pVar;
    }

    @AfterViews
    void afterViews() {
        this.title_textview.setText("游戏礼包/代金券");
        this.textTopRight.setText("使用说明");
        this.textTopRight.setVisibility(8);
        b bVar = new b(getSupportFragmentManager());
        this.fragPagerAdapter = bVar;
        this.viewPager.setAdapter(bVar);
        this.viewPager.setOffscreenPageLimit(2);
        this.pageIndicator.setViewPager(this.viewPager, 0);
        this.pageIndicator.setOnPageChangeListener(new a());
        this.viewPager.setCurrentItem(this.index);
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void textTopRight() {
        com.join.mgps.fragment.f6 f6Var;
        Fragment fragment = this.fragments[1];
        if (fragment == null || (f6Var = (com.join.mgps.fragment.f6) fragment) == null || f6Var.a0() == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(f6Var.a0().getLink().getLink_type_val());
        intentDateBean.setObject(f6Var.a0().getTitle());
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }
}
