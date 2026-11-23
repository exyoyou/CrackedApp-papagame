package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.manager.b;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.rpc.impl.d;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.screenshort_bigimag_layout)
public class ScreenShortBigImagActivity extends BaseAppCompatActivity {
    CarImagesBrowseAdapter adapter;

    @ViewById
    ImageView back;

    @ViewById
    LinearLayout bottomLayout;
    Context context;

    @Extra
    String gameId;
    List<ScreenShortListItemBean> listItemBeans;

    @ViewById
    TextView message;

    @ViewById
    TextView nameAndDate;

    @Extra
    int pn;

    @Extra
    int position;

    @ViewById
    TextView positionShow;
    private b tintManager;

    @Extra
    int typeId;

    @ViewById
    ViewPager viewPager;

    public class CarImagesBrowseAdapter extends PagerAdapter {
        int heigjt;
        private int mChildCount;
        private Context mContext;
        private LinkedList<View> mViewCache = new LinkedList<>();
        int with;

        public CarImagesBrowseAdapter(Context context) {
            this.heigjt = q.n(ScreenShortBigImagActivity.this.context).k(ScreenShortBigImagActivity.this);
            this.with = q.n(ScreenShortBigImagActivity.this.context).C(ScreenShortBigImagActivity.this);
            this.mContext = context;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            View view = (View) object;
            container.removeView(view);
            this.mViewCache.add(view);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return ScreenShortBigImagActivity.this.listItemBeans.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object object) {
            int i10 = this.mChildCount;
            if (i10 <= 0) {
                return super.getItemPosition(object);
            }
            this.mChildCount = i10 - 1;
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            View viewRemoveFirst;
            if (this.mViewCache.size() == 0) {
                viewRemoveFirst = new SimpleDraweeView(this.mContext);
                viewRemoveFirst.setBackgroundColor(-15460322);
            } else {
                viewRemoveFirst = this.mViewCache.removeFirst();
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewRemoveFirst;
            container.setFitsSystemWindows(true);
            container.setClipToPadding(true);
            simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            l.i(simpleDraweeView, ScreenShortBigImagActivity.this.listItemBeans.get(position).getPicPath(), s.c.f27288e);
            container.addView(viewRemoveFirst, -1, -1);
            return viewRemoveFirst;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void notifyDataSetChanged() {
            this.mChildCount = getCount();
            super.notifyDataSetChanged();
        }
    }

    @AfterViews
    void afterview() {
        getWindow().addFlags(67108864);
        Bundle bundleExtra = getIntent().getBundleExtra("datas");
        if (bundleExtra != null) {
            this.listItemBeans = (List) bundleExtra.getSerializable("datas");
        }
        if (this.listItemBeans == null) {
            this.listItemBeans = new ArrayList();
        }
        try {
            this.message.setText(this.listItemBeans.get(this.position).getDescribe());
            this.positionShow.setText((this.position + 1) + e.F0 + this.listItemBeans.size());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortBigImagActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (position + 4 > ScreenShortBigImagActivity.this.listItemBeans.size()) {
                    ScreenShortBigImagActivity screenShortBigImagActivity = ScreenShortBigImagActivity.this;
                    screenShortBigImagActivity.loadListData(screenShortBigImagActivity.pn);
                }
                ScreenShortBigImagActivity.this.positionShow.setText((position + 1) + e.F0 + ScreenShortBigImagActivity.this.listItemBeans.size());
                ScreenShortBigImagActivity screenShortBigImagActivity2 = ScreenShortBigImagActivity.this;
                screenShortBigImagActivity2.message.setText(screenShortBigImagActivity2.listItemBeans.get(position).getDescribe());
                ScreenShortBigImagActivity.this.nameAndDate.setText(ScreenShortBigImagActivity.this.listItemBeans.get(position).getNickname() + "\u3000\u3000" + ScreenShortBigImagActivity.this.listItemBeans.get(position).getAddTime());
            }
        });
        CarImagesBrowseAdapter carImagesBrowseAdapter = new CarImagesBrowseAdapter(this);
        this.adapter = carImagesBrowseAdapter;
        this.viewPager.setAdapter(carImagesBrowseAdapter);
        this.viewPager.setCurrentItem(this.position);
    }

    @Click
    void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadListData(int pn) {
        List<ScreenShortListItemBean> data;
        try {
            ResultMainBean<List<ScreenShortListItemBean>> resultMainBeanK = d.O1().k(RequestBeanUtil.getInstance(this.context).getScreenShortListRequest(this.gameId, pn, this.typeId));
            if (resultMainBeanK == null || resultMainBeanK.getFlag() != 1 || (data = resultMainBeanK.getMessages().getData()) == null || data.size() <= 0) {
                return;
            }
            updateUi(data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<ScreenShortListItemBean> itemBeans) {
        if (itemBeans != null && itemBeans.size() > 0) {
            this.pn++;
        }
        this.listItemBeans.addAll(itemBeans);
        this.adapter.notifyDataSetChanged();
    }

    @Click
    void viewPager() {
        if (this.positionShow.getVisibility() == 0) {
            this.positionShow.setVisibility(8);
            this.bottomLayout.setVisibility(8);
            this.back.setVisibility(8);
        } else {
            this.positionShow.setVisibility(0);
            this.bottomLayout.setVisibility(0);
            this.back.setVisibility(0);
        }
    }
}
