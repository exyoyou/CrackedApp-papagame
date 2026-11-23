package com.join.mgps.activity.gamedetail;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.BaseAppCompatActivity;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.GameDetailCommentListFragment;
import com.join.kotlin.discount.GameDetailFragment;
import com.join.kotlin.discount.model.bean.GameDetailBean;
import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.request.GameDetailRequest;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.b3;
import com.join.mgps.activity.s2;
import com.join.mgps.adapter.h0;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.VolcanoOther;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import me.relex.photodraweeview.d;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.gamedetail_video_main_activity)
public class GamedetailVideoMainActivity extends BaseAppCompatActivity {
    private static final String BUNDLE_FRAGMENTS_KEY = "android:support:fragments";
    private static final String OPTION_VIEW = "view";
    public static boolean hasInAnim;

    @Extra
    boolean autodown;

    @ViewById
    ImageView backImg;
    private Context context;

    @Extra
    ExtBean extBean;

    @ViewById
    FrameLayout fragment;

    @Extra
    int from;

    @Extra
    String gameId;

    @Extra
    boolean isShowComment;

    @ViewById
    View iv_back;

    @ViewById
    ConstraintLayout layout_new;

    @ViewById
    RelativeLayout layout_old;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;

    @ViewById
    View mainCover;

    @ViewById
    View main_content;
    private GamedetialModleFourBean modleFourBeanShow;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View setNetwork;

    @ViewById
    View statuHVIew;
    private int statubarH;

    @ViewById
    TabLayout tablayout;
    private com.join.android.app.common.manager.b tintManager;

    @ViewById
    ViewPager viewPager;

    @ViewById
    ViewPager2 viewpager;
    private ArrayList<String> tabTitles = new ArrayList<>();
    private ArrayList<Fragment> fragments = new ArrayList<>();
    private boolean detailTabDarkColor = false;
    ExtBean pageExtbean = new ExtBean();
    GameDetailVideoFragment fragmentVideo = null;
    BaseGameDetailFragment fragmentDetial = null;
    boolean showCover = false;
    int xoffW = 200;
    boolean isFromVideo = false;

    private void backCheck() {
        BaseGameDetailFragment baseGameDetailFragment;
        if (!this.isFromVideo || (baseGameDetailFragment = this.fragmentDetial) == null) {
            return;
        }
        baseGameDetailFragment.backpressedTofinishActivity();
    }

    private int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshTab() {
        int selectedTabPosition = this.tablayout.getSelectedTabPosition();
        if (selectedTabPosition != 0 || this.detailTabDarkColor) {
            this.backImg.setImageResource(R.drawable.back_icon);
        } else {
            this.backImg.setImageResource(R.drawable.back_icon_discover);
        }
        for (int i10 = 0; i10 < this.tablayout.getTabCount(); i10++) {
            TabLayout.g gVarD = this.tablayout.D(i10);
            if (gVarD != null && gVarD.g() != null) {
                TextView textView = (TextView) gVarD.g().findViewById(R.id.tv_tab);
                TextView textView2 = (TextView) gVarD.g().findViewById(R.id.tv_num);
                if (gVarD.o()) {
                    textView.setTypeface(Typeface.create("sans-serif-medium", 0));
                    textView.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? -16777216 : -1);
                    textView2.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? -16777216 : -1);
                } else {
                    textView.setTypeface(Typeface.DEFAULT);
                    textView.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#919191") : -1);
                    textView2.setTextColor((selectedTabPosition != 0 || this.detailTabDarkColor) ? Color.parseColor("#919191") : -1);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPoint(String detialType) {
        String from;
        String location;
        String dataFlag;
        String keyword;
        String where;
        String str;
        String recPosition;
        ExtBean extBean = this.extBean;
        if (extBean != null) {
            from = extBean.getFrom();
            location = this.extBean.getLocation();
            try {
                if (!TextUtils.isEmpty(from)) {
                    this.extBean.set_from_type(Integer.parseInt(from));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            dataFlag = this.extBean.getDataFlag();
            keyword = this.extBean.getKeyword();
            where = this.extBean.getWhere();
        } else {
            from = "";
            location = from;
            dataFlag = location;
            keyword = dataFlag;
            where = keyword;
        }
        ExtBean extBean2 = this.extBean;
        if (extBean2 == null || extBean2.get_from_type() == 0) {
            str = from;
            recPosition = location;
        } else {
            str = this.extBean.get_from_type() + "";
            recPosition = this.extBean.getRecPosition();
        }
        String reMarks = ("112".equals(str) || "147".equals(str)) ? this.extBean.getReMarks() : "";
        ExtBean extBean3 = this.extBean;
        if (extBean3 != null) {
            this.pageExtbean.setParent(extBean3);
            this.pageExtbean.setFrom(str);
            this.pageExtbean.setPapaPage("detail");
            this.pageExtbean.setTypeCode("page");
            this.pageExtbean.setChatId("detail");
            this.pageExtbean.setGameId(this.gameId);
            this.pageExtbean.setResourceId(this.gameId);
        } else {
            this.pageExtbean.setFrom(str);
            this.pageExtbean.setPapaPage("detail");
            this.pageExtbean.setChatId("detail");
            this.pageExtbean.setGameId(this.gameId);
        }
        t.l(this.context).x2(this.gameId, AccountUtil_.getInstance_(this.context).getUid(), str, detialType, recPosition, detialType, reMarks, dataFlag, keyword, where, this.pageExtbean.copy().buildScene().toExt());
    }

    public static void startTActivity(Activity activity, View transitionView, String gameId, boolean autodown, ExtBean extBean) {
        Intent intent = new Intent(activity, (Class<?>) GamedetailVideoMainActivity_.class);
        intent.putExtra(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, true);
        intent.putExtra("gameId", gameId);
        intent.putExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, autodown);
        intent.putExtra("extBean", extBean);
        activity.startActivity(intent);
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.statubarH = getStatusBarHeight(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statuHVIew.getLayoutParams();
        layoutParams.height = this.statubarH;
        this.statuHVIew.setLayoutParams(layoutParams);
        this.xoffW = getResources().getDimensionPixelOffset(R.dimen.wdp250);
        getDetialData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 600)
    public void animFinish() {
        hasInAnim = false;
    }

    public void autoPlayVideo(StandardVideoView topvideo_view) {
        if ((this.viewPager.getCurrentItem() == 1 || this.viewPager.getVisibility() == 8) && topvideo_view != null && topvideo_view.i()) {
            topvideo_view.startPlayLogic();
        }
    }

    @Click
    void backImg() {
        finish();
    }

    protected boolean clearFragmentsTag() {
        return true;
    }

    public void clickBack() {
        backCheck();
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        GameDetailVideoFragment gameDetailVideoFragment = this.fragmentVideo;
        if (gameDetailVideoFragment != null) {
            gameDetailVideoFragment.clearVideo();
        }
        super.finish();
    }

    public ExtBean getDetailPageExtBean() {
        return this.pageExtbean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDetialData() {
        if (!m.j(this.context)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.context);
            requestModel.setArgs(new GameDetailRequest(this.gameId, String.valueOf(accountData.getUid()), f.M().B()));
            ResponseModel<GameDetailDataBean> responseModelBody = i.P0().N0().n(requestModel.makeSign()).execute().body();
            if (responseModelBody != null && responseModelBody.getCode() == 200) {
                GameDetailDataBean data = responseModelBody.getData();
                if (data.getWf_data() != null) {
                    updateUi(data.getWf_data());
                    return;
                } else if (data.getDiscount_data() != null) {
                    updateNewUi(data.getDiscount_data());
                    return;
                }
            }
            showLodingFailed();
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    public GamedetialModleFourBean getModleFourBeanShow() {
        return this.modleFourBeanShow;
    }

    public BaseGameDetailFragment getModleFourFragment() {
        return this.fragmentDetial;
    }

    public int getTabBottom() {
        return this.tablayout.getBottom();
    }

    public int getViewpagerCurrentPage() {
        return this.viewPager.getCurrentItem();
    }

    public boolean gethideOrshowCover() {
        return this.showCover;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = d.S1)
    public void hideLoadingDelay() {
        this.iv_back.setVisibility(8);
        this.main_content.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.mainCover.setVisibility(8);
    }

    @Click
    void iv_back() {
        backCheck();
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        GameDetailVideoFragment gameDetailVideoFragment = this.fragmentVideo;
        if (gameDetailVideoFragment != null) {
            gameDetailVideoFragment.clearVideo();
        }
        GameDetailVideoFragment gameDetailVideoFragment2 = this.fragmentVideo;
        if (gameDetailVideoFragment2 != null) {
            gameDetailVideoFragment2.onDestroy();
        }
        backCheck();
        BaseGameDetailFragment baseGameDetailFragment = this.fragmentDetial;
        if (baseGameDetailFragment == null || !baseGameDetailFragment.onBackPressedMy()) {
            super.onBackPressed();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        if (savedInstanceState != null && clearFragmentsTag()) {
            savedInstanceState.remove(BUNDLE_FRAGMENTS_KEY);
        }
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return super.onKeyDown(keyCode, event);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (outState == null || !clearFragmentsTag()) {
            return;
        }
        outState.remove(BUNDLE_FRAGMENTS_KEY);
    }

    @Click
    void relodingimag() {
        showLoding();
        getDetialData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1250)
    public void scroolToposition() {
        this.viewPager.scrollTo(this.xoffW, 0);
    }

    public void selectTab(int position) {
        this.viewpager.setCurrentItem(position);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    public void setTabIsDarkColor(boolean isDark) {
        this.detailTabDarkColor = isDark;
        refreshTab();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void shakeAnim() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                Float f10 = (Float) animation.getAnimatedValue();
                GamedetailVideoMainActivity.this.viewPager.scrollTo((int) (f10.floatValue() * GamedetailVideoMainActivity.this.xoffW), 0);
                if (f10.floatValue() == 1.0f) {
                    new PrefDef_(GamedetailVideoMainActivity.this.context).firstIntentgamedetialVideo().g(Boolean.FALSE);
                }
            }
        });
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.start();
    }

    public void shakeAnimback() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                Float f10 = (Float) animation.getAnimatedValue();
                GamedetailVideoMainActivity.this.viewPager.scrollTo((int) (f10.floatValue() * GamedetailVideoMainActivity.this.xoffW), 0);
                f10.floatValue();
            }
        });
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.start();
        animFinish();
        this.prefDef.firstIntentgamedetialVideo().g(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.loding_layout.setVisibility(8);
        try {
            GamedetialModleFourBean gamedetialModleFourBean = this.modleFourBeanShow;
            if (gamedetialModleFourBean == null || t2.h(gamedetialModleFourBean.getCrc_sign_id())) {
                this.loding_faile.setVisibility(0);
                if (m.j(this.context)) {
                    this.setNetwork.setVisibility(8);
                } else {
                    this.setNetwork.setVisibility(0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNewUi(GameDetailBean newGameBean) {
        sendPoint("0");
        this.layout_old.setVisibility(8);
        this.layout_new.setVisibility(0);
        hideLoadingDelay();
        this.tabTitles.clear();
        this.tabTitles.add("详情");
        this.tabTitles.add("评价");
        for (String str : this.tabTitles) {
            TabLayout.g gVarU = this.tablayout.I().u(R.layout.layout_custom_tab_game_detail);
            TextView textView = (TextView) gVarU.g().findViewById(R.id.tv_tab);
            TextView textView2 = (TextView) gVarU.g().findViewById(R.id.tv_num);
            textView.setText(str);
            textView2.setTextColor(-1);
            textView2.setVisibility(8);
            this.tablayout.i(gVarU);
        }
        this.tablayout.h(new TabLayout.d() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.2
            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabReselected(TabLayout.g tab) {
                GamedetailVideoMainActivity.this.refreshTab();
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabSelected(TabLayout.g tab) {
                GamedetailVideoMainActivity.this.refreshTab();
                GamedetailVideoMainActivity.this.viewpager.setCurrentItem(tab.k());
            }

            @Override // com.google.android.material.tabs.TabLayout.c
            public void onTabUnselected(TabLayout.g tab) {
            }
        });
        this.fragments.clear();
        int i10 = 0;
        while (i10 < this.tabTitles.size()) {
            Bundle bundle = new Bundle();
            bundle.putString("type", this.tabTitles.get(i10));
            bundle.putString("gameId", this.gameId);
            bundle.putString("parentExtBean", JsonMapper.getInstance().toJson(this.pageExtbean));
            Fragment gameDetailFragment = i10 == 0 ? new GameDetailFragment() : i10 == 1 ? new GameDetailCommentListFragment() : new GameDetailFragment();
            gameDetailFragment.setArguments(bundle);
            this.fragments.add(gameDetailFragment);
            i10++;
        }
        this.viewpager.setAdapter(new FragmentStateAdapter(this) { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.3
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            @NonNull
            public Fragment createFragment(int position) {
                return (Fragment) GamedetailVideoMainActivity.this.fragments.get(position);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return GamedetailVideoMainActivity.this.fragments.size();
            }
        });
        this.viewpager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.4
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                super.onPageScrolled(position, positionOffset, positionOffsetPixels);
                GamedetailVideoMainActivity.this.tablayout.setScrollPosition(position, positionOffset, true, false);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                if (GamedetailVideoMainActivity.this.tablayout.D(position) != null) {
                    GamedetailVideoMainActivity.this.tablayout.D(position).r();
                }
            }
        });
        this.viewpager.setCurrentItem(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(GamedetialModleFourBean modleFourBean) {
        this.modleFourBeanShow = modleFourBean;
        this.layout_old.setVisibility(0);
        this.layout_new.setVisibility(8);
        final boolean zF = d2.f(modleFourBean.getTag_info());
        ExtBean extBean = this.extBean;
        if (extBean != null) {
            this.modleFourBeanShow.set_from_type(extBean.get_from_type());
            this.modleFourBeanShow.setRecPosition(this.extBean.getRecPosition());
            if (t2.i(this.extBean.getVolcanoOther())) {
                this.modleFourBeanShow.setPosition_path((VolcanoOther) JsonMapper.getInstance().fromJson(this.extBean.getVolcanoOther(), VolcanoOther.class));
            }
        }
        GamedetailViewbean video_and_cover = modleFourBean.getVideo_and_cover();
        if (video_and_cover != null && t2.i(video_and_cover.getVideo_url()) && this.from == 2) {
            this.iv_back.setVisibility(8);
            this.main_content.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            this.viewPager.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            boolean zBooleanValue = this.prefDef.firstIntentgamedetialVideo().d().booleanValue();
            if (zBooleanValue) {
                this.showCover = true;
                hasInAnim = true;
            }
            this.fragmentVideo = new GameDetailVideoFragment_();
            boolean booleanExtra = getIntent().getBooleanExtra(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, false);
            if (booleanExtra) {
                this.gameId = getIntent().getStringExtra("gameId");
                this.autodown = getIntent().getBooleanExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, false);
                this.extBean = (ExtBean) getIntent().getSerializableExtra("extBean");
            }
            sendPoint("1");
            Bundle bundle = new Bundle();
            bundle.putSerializable("videoDatas", video_and_cover);
            bundle.putSerializable("extBean", this.pageExtbean);
            bundle.putString("gameId", this.gameId);
            this.fragmentVideo.setArguments(bundle);
            arrayList.add(new h0.a("视频", this.fragmentVideo));
            if (modleFourBean.getBt_game_switch() == 1) {
                s2 s2VarN0 = s2.n0(this.gameId, this.pageExtbean, this.autodown, booleanExtra, this.isShowComment);
                this.fragmentDetial = s2VarN0;
                arrayList.add(new h0.a("详情", s2VarN0));
            } else {
                b3 b3VarR0 = b3.r0(this.gameId, this.pageExtbean, this.autodown, booleanExtra, this.isShowComment);
                this.fragmentDetial = b3VarR0;
                arrayList.add(new h0.a("详情", b3VarR0));
            }
            this.viewPager.setAdapter(new h0(getSupportFragmentManager(), arrayList));
            this.viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity.1
                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrollStateChanged(int i10) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i10, float v10, int i11) {
                }

                @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
                public void onPageSelected(int i10) {
                    if (i10 == 0) {
                        BaseGameDetailFragment baseGameDetailFragment = GamedetailVideoMainActivity.this.fragmentDetial;
                        if (baseGameDetailFragment != null) {
                            baseGameDetailFragment.pauseVideo();
                        }
                        GamedetailVideoMainActivity.this.fragmentVideo.resumVideo();
                        GamedetailVideoMainActivity.this.sendPoint("1");
                        return;
                    }
                    if (i10 == 1) {
                        GamedetailVideoMainActivity.this.fragmentVideo.pauseVideo();
                        BaseGameDetailFragment baseGameDetailFragment2 = GamedetailVideoMainActivity.this.fragmentDetial;
                        if (baseGameDetailFragment2 != null) {
                            baseGameDetailFragment2.resumVideo();
                            GamedetailVideoMainActivity.this.fragmentDetial.hideCover();
                        }
                        t.l(GamedetailVideoMainActivity.this.context).R1(Event.video_visitGamePage, new Ext().setGameId(GamedetailVideoMainActivity.this.gameId));
                        GamedetailVideoMainActivity.hasInAnim = false;
                        GamedetailVideoMainActivity.this.sendPoint(zF ? "3" : "0");
                    }
                }
            });
            if (zBooleanValue) {
                this.showCover = true;
                hasInAnim = true;
                shakeAnim();
            }
        } else {
            this.main_content.setVisibility(0);
            this.mainCover.setVisibility(0);
            this.iv_back.setVisibility(0);
            hideLoadingDelay();
            this.fragment.setVisibility(0);
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            boolean booleanExtra2 = getIntent().getBooleanExtra(EndGameDetailActivity_.IS_FROM_VIDEO_EXTRA, false);
            this.isFromVideo = booleanExtra2;
            if (booleanExtra2) {
                this.gameId = getIntent().getStringExtra("gameId");
                this.autodown = getIntent().getBooleanExtra(GamedetailVideoMainActivity_.AUTODOWN_EXTRA, false);
                this.extBean = (ExtBean) getIntent().getSerializableExtra("extBean");
            }
            if (modleFourBean.getBt_game_switch() == 1) {
                sendPoint("2");
                s2 s2VarN1 = s2.n0(this.gameId, this.pageExtbean, this.autodown, this.isFromVideo, this.isShowComment);
                this.fragmentDetial = s2VarN1;
                fragmentTransactionBeginTransaction.add(R.id.fragment, s2VarN1);
            } else {
                sendPoint(zF ? "3" : "0");
                b3 b3VarR1 = b3.r0(this.gameId, this.pageExtbean, this.autodown, this.isFromVideo, this.isShowComment);
                this.fragmentDetial = b3VarR1;
                fragmentTransactionBeginTransaction.add(R.id.fragment, b3VarR1);
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
        if (this.modleFourBeanShow.getTag_info() != null) {
            Iterator<TipBean> it2 = this.modleFourBeanShow.getTag_info().iterator();
            while (it2.hasNext()) {
                if (TextUtils.equals(it2.next().getId(), "242")) {
                    try {
                        Ext ext = new Ext();
                        ext.setResultCode("discount_game");
                        ext.setScenesCode(getClass().getSimpleName());
                        Data data = new Data();
                        data.setGameId(this.modleFourBeanShow.getGame_id());
                        t.l(this.context).Y(Event.expGameAdPage, ext, data);
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
            }
        }
    }
}
