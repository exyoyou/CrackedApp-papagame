package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.MViewpagerV4;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionDataBeanInfo;
import com.join.mgps.dto.CollectionModuleBean;
import com.join.mgps.dto.CollectionModuleDataBean;
import com.join.mgps.dto.CollectionModuleMessageBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.fragment.CollectionThreeSubFragment_;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.collection_three_fragment_layout)
public class CollectionModuleThreeActivity extends BaseFragmentActivity {

    @Extra
    String collection_id;
    private Context context;

    @Extra
    ExtBean extBean;
    private FragmentManager fragmentManager;
    private int game_count;

    @ViewById
    ImageView img_iconback;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private ArrayList<Fragment> mBottomPages;

    @ViewById
    MViewpagerV4 mBottomVIewPager;
    private com.join.mgps.customview.e0 mPagerAdapter;
    private int pn = 1;

    @ViewById
    RelativeLayout relateLayoutRight;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;
    private List<String> stringList;

    @ViewById
    TextView textViewPosition;

    @ViewById
    TextView textViewTime;

    @ViewById
    TextView textViewTitle;

    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float v10, int i11) {
            CollectionModuleThreeActivity collectionModuleThreeActivity = CollectionModuleThreeActivity.this;
            collectionModuleThreeActivity.textViewTitle.setText((CharSequence) collectionModuleThreeActivity.stringList.get(i10));
            CollectionModuleThreeActivity.this.textViewPosition.setText((i10 + 1) + net.lingala.zip4j.util.e.F0 + CollectionModuleThreeActivity.this.game_count);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        try {
            this.context = this;
            this.fragmentManager = getSupportFragmentManager();
            this.stringList = new ArrayList();
            ArrayList<Fragment> arrayList = new ArrayList<>();
            this.mBottomPages = arrayList;
            this.mPagerAdapter = new com.join.mgps.customview.e0(this.fragmentManager, arrayList, this.stringList);
            showLoding();
            String str = this.collection_id;
            if (str != null) {
                getCollectionData(str);
            } else {
                showLodingFailed();
            }
            this.mBottomVIewPager.setIntercept(false);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCollectionData(String collection_id) {
        CollectionModuleMessageBean messages;
        List<CollectionModuleDataBean> data;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showLodingFailed();
            return;
        }
        try {
            CollectionModuleBean collectionModuleBeanS1 = this.rpcClient.s1(getRequestBean(collection_id, this.pn));
            if (collectionModuleBeanS1 == null || (messages = collectionModuleBeanS1.getMessages()) == null || (data = messages.getData()) == null || data.size() <= 0 || data.get(0) == null || data.get(0).getInfo() == null || data.get(0).getInfo().size() <= 0 || data.get(0).getInfo().get(0) == null || data.get(0).getInfo().get(0).size() <= 0) {
                showLodingFailed();
            } else {
                this.game_count = data.get(0).getInfo().get(0).size();
                updateUI(collectionModuleBeanS1.getMessages().getData().get(0).getInfo().get(0));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    public CommonRequestBean getRequestBean(String collection_id, int Page) {
        return RequestBeanUtil.getInstance(this.context).getCollectionRequestBean(collection_id, Page, 100, "", "", this.extBean);
    }

    @Click
    void img_iconback() {
        finish();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getCollectionData(this.collection_id);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.mBottomVIewPager.setVisibility(8);
        this.relateLayoutRight.setVisibility(8);
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.mBottomVIewPager.setVisibility(8);
        this.relateLayoutRight.setVisibility(8);
        this.loding_faile.setVisibility(0);
        this.loding_layout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<CollectionDataBeanInfo> collectionDataBeanInfos) {
        this.mBottomVIewPager.setVisibility(0);
        this.relateLayoutRight.setVisibility(0);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        if (this.game_count > 0) {
            for (int i10 = 0; i10 < this.game_count; i10++) {
                CollectionDataBeanInfo collectionDataBeanInfo = collectionDataBeanInfos.get(i10);
                this.stringList.add(collectionDataBeanInfo.getMain().getCollection_title());
                CollectionThreeSubFragment_ collectionThreeSubFragment_ = new CollectionThreeSubFragment_();
                collectionThreeSubFragment_.O(collectionDataBeanInfo);
                try {
                    for (CollectionBeanSub collectionBeanSub : collectionDataBeanInfo.getSub()) {
                        ExtBean extBean = this.extBean;
                        if (extBean == null || !extBean.isKeepOrginFrom() || TextUtils.isEmpty(this.extBean.getOrginFrom())) {
                            ExtBean extBean2 = this.extBean;
                            if (extBean2 == null || extBean2.get_from_type() != 134) {
                                collectionBeanSub.set_from(111);
                                collectionBeanSub.set_from_type(121);
                            } else {
                                collectionBeanSub.set_from(13401);
                                collectionBeanSub.set_from_type(13401);
                            }
                        } else {
                            try {
                                collectionBeanSub.set_from(Integer.parseInt(this.extBean.getOrginFrom()));
                                collectionBeanSub.set_from_type(Integer.parseInt(this.extBean.getOrginFrom()));
                            } catch (Exception unused) {
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.mBottomPages.add(collectionThreeSubFragment_);
            }
            this.mPagerAdapter.d(this.mBottomPages, this.stringList);
            this.mPagerAdapter.notifyDataSetChanged();
            this.mBottomVIewPager.setAdapter(this.mPagerAdapter);
            this.mBottomVIewPager.setOffscreenPageLimit(4);
            this.mBottomVIewPager.setOnPageChangeListener(new a());
        }
    }
}
