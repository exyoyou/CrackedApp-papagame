package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.InterceptEventViewPager;
import com.join.mgps.customview.TabPageIndicator;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.EventP;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_papa_standalone_v2)
public class PaPaStandAloneV2Activity extends BaseFragmentActivity {
    static String[] TITLE_PAPA_STANDALONE = {"推荐", "最新", "单机榜"};

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    private Fragment[] fragments = new Fragment[TITLE_PAPA_STANDALONE.length];

    @ViewById
    TabPageIndicator pageIndicator;

    @Extra
    ExtBean parentExtBean;

    @ViewById
    ImageView title_normal_search_img;

    @ViewById
    TextView title_textview;

    @ViewById
    InterceptEventViewPager viewPager;

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
            Object obj = PaPaStandAloneV2Activity.this.fragments[position];
            if (obj instanceof com.join.mgps.callbacks.q) {
                ((com.join.mgps.callbacks.q) obj).onPageVisible(position);
            }
        }
    }

    private class b extends FragmentPagerAdapter {
        public b(FragmentManager fm2) {
            super(fm2);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return PaPaStandAloneV2Activity.TITLE_PAPA_STANDALONE.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return PaPaStandAloneV2Activity.this.newFragment(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return PaPaStandAloneV2Activity.TITLE_PAPA_STANDALONE[position];
        }
    }

    private int getTypeByPosition(int position) {
        if (position == 0) {
            return 1;
        }
        if (position != 1) {
            return position != 2 ? -1 : 3;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$0() {
        this.pageIndicator.onPageSelected(this.viewPager.getCurrentItem());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$1() {
        updateDownloadView();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Fragment newFragment(int position) {
        Fragment fragment = this.fragments[position];
        if (fragment != null) {
            return fragment;
        }
        int typeByPosition = getTypeByPosition(position);
        if (position == 0) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("pageExtBean", new ExtBean().setParent(this.parentExtBean).setChatId(EventP.ChatId.singleGameZoneRecommend.name()));
            com.join.mgps.fragment.q4 q4VarX = com.join.mgps.fragment.q4.X(typeByPosition, bundle);
            this.fragments[position] = q4VarX;
            return q4VarX;
        }
        if (position == 1) {
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("pageExtBean", new ExtBean().setParent(this.parentExtBean).setChatId(EventP.ChatId.singleGameZoneNew.name()));
            com.join.mgps.fragment.q4 q4VarX2 = com.join.mgps.fragment.q4.X(typeByPosition, bundle2);
            this.fragments[position] = q4VarX2;
            return q4VarX2;
        }
        if (position != 2) {
            return null;
        }
        Bundle bundle3 = new Bundle();
        bundle3.putSerializable("pageExtBean", new ExtBean().setParent(this.parentExtBean).setChatId(EventP.ChatId.singleGameZoneRanking.name()));
        k kVarA0 = k.a0(1001, "1", 1, bundle3);
        this.fragments[position] = kVarA0;
        return kVarA0;
    }

    @AfterViews
    void afterViews() {
        this.title_normal_search_img.setVisibility(0);
        this.downloadView.setVisibility(0);
        this.title_textview.setText("单机游戏");
        org.greenrobot.eventbus.c.f().v(this);
        b bVar = new b(getSupportFragmentManager());
        this.viewPager.setIsAsParentViewPager(true);
        this.viewPager.setAdapter(bVar);
        this.viewPager.setOffscreenPageLimit(3);
        this.viewPager.setCurrentItem(0);
        this.pageIndicator.setViewPager(this.viewPager);
        this.pageIndicator.setOnPageChangeListener(new a());
        this.viewPager.postDelayed(new Runnable() { // from class: com.join.mgps.activity.i8
            @Override // java.lang.Runnable
            public final void run() {
                this.f57340b.lambda$afterViews$0();
            }
        }, 500L);
        getDownloadTaskInfo();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        updateDownloadView();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.h8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57286b.lambda$onEventMainThread$1();
            }
        });
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        UtilsMy.N4(this);
        updateDownloadView();
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }
}
