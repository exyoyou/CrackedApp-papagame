package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.update_feature_activity)
public class UpdateFeatureActivity extends BaseActivity {

    @Extra
    CommonAdBean commonAdBean;
    private Context context;

    @ViewById
    RecyclerView indicator;
    private c indicatorAdapte;
    private Handler mHandler;

    @ViewById
    ViewPager viewPager;
    private List<String> picList = new ArrayList();
    private List<View> pageList = new ArrayList();
    private List<Boolean> indicatorList = new ArrayList();
    Runnable autoPlayRunnable = new Runnable() { // from class: com.join.mgps.activity.z9
        @Override // java.lang.Runnable
        public final void run() {
            this.f58291b.lambda$new$0();
        }
    };

    class a extends PagerAdapter {
        a() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(@NonNull ViewGroup container, int position, @NonNull Object object) {
            container.removeView((View) UpdateFeatureActivity.this.pageList.get(position));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return UpdateFeatureActivity.this.pageList.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @NonNull
        public Object instantiateItem(@NonNull ViewGroup container, int position) {
            View view = (View) UpdateFeatureActivity.this.pageList.get(position);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(R.id.pic);
            if (position < UpdateFeatureActivity.this.picList.size()) {
                com.join.android.app.common.utils.l.q(simpleDraweeView, (String) UpdateFeatureActivity.this.picList.get(position), com.facebook.drawee.drawable.s.c.f27288e);
            }
            container.addView(view);
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object object) {
            return view == object;
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (position < UpdateFeatureActivity.this.pageList.size() - 2 || positionOffset < 0.5d) {
                return;
            }
            UpdateFeatureActivity.this.finish();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (position == UpdateFeatureActivity.this.pageList.size() - 1) {
                return;
            }
            if (UpdateFeatureActivity.this.indicatorList != null) {
                int i10 = 0;
                while (i10 < UpdateFeatureActivity.this.indicatorList.size()) {
                    UpdateFeatureActivity.this.indicatorList.set(i10, Boolean.valueOf(i10 == position % UpdateFeatureActivity.this.indicatorList.size()));
                    if (UpdateFeatureActivity.this.indicatorAdapte != null) {
                        UpdateFeatureActivity.this.indicatorAdapte.notifyDataSetChanged();
                    }
                    i10++;
                }
            }
            if (UpdateFeatureActivity.this.mHandler != null) {
                UpdateFeatureActivity.this.mHandler.removeCallbacksAndMessages(null);
                UpdateFeatureActivity.this.mHandler.postDelayed(UpdateFeatureActivity.this.autoPlayRunnable, BaseCloudFileManager.ACK_TIMEOUT);
            }
        }
    }

    class c extends BaseQuickAdapter<Boolean, com.join.mgps.base.b> {
        public c() {
            super(R.layout.item_update_feature_indicator, UpdateFeatureActivity.this.indicatorList);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, Boolean item) {
            helper.setGone(R.id.viewUnselected, !item.booleanValue()).setGone(R.id.viewSelected, item.booleanValue());
        }
    }

    private void initIndicator() {
        this.indicator.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        c cVar = new c();
        this.indicatorAdapte = cVar;
        this.indicator.setAdapter(cVar);
    }

    private void initViewpager() {
        int i10 = 0;
        while (i10 < this.picList.size()) {
            this.pageList.add(LayoutInflater.from(this).inflate(R.layout.layout_page_update_feature, (ViewGroup) null));
            this.indicatorList.add(Boolean.valueOf(i10 == 0));
            i10++;
        }
        this.pageList.add(LayoutInflater.from(this).inflate(R.layout.layout_page_update_feature, (ViewGroup) null));
        this.viewPager.setAdapter(new a());
        this.viewPager.setOffscreenPageLimit(4);
        this.viewPager.addOnPageChangeListener(new b());
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mHandler.postDelayed(this.autoPlayRunnable, BaseCloudFileManager.ACK_TIMEOUT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        List<View> list;
        if (this.viewPager == null || (list = this.pageList) == null || list.size() <= 0) {
            return;
        }
        this.viewPager.setCurrentItem((this.viewPager.getCurrentItem() + 1) % this.pageList.size());
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.mHandler = new Handler();
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        CommonAdBean commonAdBean = this.commonAdBean;
        if (commonAdBean == null || commonAdBean.getAd_info_list() == null || this.commonAdBean.getAd_info_list().size() <= 0) {
            finish();
        }
        Iterator<CommonGameInfoBean> it2 = this.commonAdBean.getAd_info_list().iterator();
        while (it2.hasNext()) {
            this.picList.add(it2.next().getBig_pic());
        }
        initViewpager();
        initIndicator();
    }

    @Override // android.app.Activity
    public void finish() {
        setResult(10005);
        super.finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }
}
