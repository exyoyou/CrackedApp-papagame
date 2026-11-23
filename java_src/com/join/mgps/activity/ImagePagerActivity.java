package com.join.mgps.activity;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.component.photoviewer.HackyViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;

/* JADX INFO: loaded from: classes4.dex */
public class ImagePagerActivity extends FragmentActivity {
    public static final String EXTRA_IMAGE_INDEX = "image_index";
    public static final String EXTRA_IMAGE_URLS = "image_urls";
    private static final String STATE_POSITION = "STATE_POSITION";
    private CirclePageIndicator indicator;
    private HackyViewPager mPager;
    private int pagerPosition;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int arg0) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int arg0, float arg1, int arg2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int arg0) {
            ImagePagerActivity.this.indicator.setCurrentItem(arg0);
        }
    }

    private class b extends FragmentStatePagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String[] f54037a;

        public b(FragmentManager fm2, String[] fileList) {
            super(fm2);
            this.f54037a = fileList;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            String[] strArr = this.f54037a;
            if (strArr == null) {
                return 0;
            }
            return strArr.length;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int position) {
            return com.join.android.app.component.photoviewer.a.R(this.f54037a[position]);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.image_viewpager);
        this.pagerPosition = getIntent().getIntExtra("image_index", 0);
        String[] stringArrayExtra = getIntent().getStringArrayExtra("image_urls");
        this.mPager = (HackyViewPager) findViewById(R.id.pager);
        this.mPager.setAdapter(new b(getSupportFragmentManager(), stringArrayExtra));
        CirclePageIndicator circlePageIndicator = (CirclePageIndicator) findViewById(R.id.indicator);
        this.indicator = circlePageIndicator;
        circlePageIndicator.setViewPager(this.mPager);
        this.mPager.setOnPageChangeListener(new a());
        if (savedInstanceState != null) {
            this.pagerPosition = savedInstanceState.getInt(STATE_POSITION);
        }
        this.mPager.setCurrentItem(this.pagerPosition);
        this.indicator.setCurrentItem(this.pagerPosition);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        outState.putInt(STATE_POSITION, this.mPager.getCurrentItem());
    }
}
