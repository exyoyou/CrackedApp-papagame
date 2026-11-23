package com.join.mgps.activity.recomend;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Point;
import android.os.Handler;
import android.provider.Settings;
import android.text.Html;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p2;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.v1;
import com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.DownloadSpeedupCfgBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.o;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.game_download_recomd_activity)
public class GamedownloadRecomdActivity extends BaseAppCompatActivity {
    protected int activityCloseEnterAnimation;
    protected int activityCloseExitAnimation;
    DetailRecyclerViewChileAdapter adapter;

    @ViewById
    AppBarLayout appbar;
    DownloadSpeedupCfgBean cfgBean;

    @ViewById
    ImageView close;

    @ViewById
    View close2;

    @ViewById
    ImageView close3;
    Context context;

    @ViewById
    TextView downNumber;
    DownloadTask downloadTask;

    @Extra
    String gameName;
    String gamedataJson;
    private String gameid;

    @ViewById
    SimpleDraweeView icon;
    BarHideEnableObserver mBarHideEnableObserver;

    @ViewById
    View main;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    TextView seetext;

    @ViewById
    View speedLayout;

    @ViewById
    TextView tip;

    @ViewById
    TextView title;

    @ViewById
    View xx;
    List<CommonMultiItemBean> gamedatas = new ArrayList();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;
    private ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.downloadAndDownload.name());
    private boolean isExploring = false;
    private ContentObserver mNavigationBarObserver = new ContentObserver(new Handler()) { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity.4
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            Settings.Global.getInt(GamedownloadRecomdActivity.this.getContentResolver(), "navigationbar_is_min", 0);
        }
    };

    private class BarHideEnableObserver extends ContentObserver {
        BarHideEnableObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
        }
    }

    public static boolean checkDeviceHasNavigationBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        boolean z10 = false;
        boolean z11 = identifier > 0 ? resources.getBoolean(identifier) : false;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            if (!"1".equals(str)) {
                z10 = "0".equals(str) ? true : z11;
            }
            return z10;
        } catch (Exception unused) {
            return z11;
        }
    }

    private int getNavigationBarHeight() {
        Resources resources = getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void initData() {
        try {
            registerContentResolver();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        DownloadCenterTuijianMain downloadCenterTuijianMain = (DownloadCenterTuijianMain) JsonMapper.getInstance().fromJson(this.gamedataJson, DownloadCenterTuijianMain.class);
        if (downloadCenterTuijianMain == null) {
            finish();
            return;
        }
        this.gameid = downloadCenterTuijianMain.getGameid();
        Ext ext = new Ext();
        ext.setPosition("0");
        ext.setGameId(downloadCenterTuijianMain.getGameid());
        t.l(this.context).R1(Event.showGuessYouLike, ext);
        List<CommonMultiItemBean> list = this.gamedatas;
        if (list != null) {
            list.clear();
        }
        if (downloadCenterTuijianMain.getCollectionList() != null && downloadCenterTuijianMain.getCollectionList().size() > 0) {
            for (GamedownRecomendItemBean gamedownRecomendItemBean : downloadCenterTuijianMain.getCollectionList()) {
                gamedownRecomendItemBean.getExtBean().itemWithParent(this.pageExtBean).setScenesCode(gamedownRecomendItemBean.getRec_context().getTid());
                this.gamedatas.add(new CommonMultiItemBean(1, gamedownRecomendItemBean));
            }
        }
        try {
            DownloadTask downloadTaskG = q5.f.M().G(this.gameid);
            this.downloadTask = downloadTaskG;
            if (downloadTaskG == null || new PrefDef_(this.context).downloadSpeedUpGameSize().d().intValue() > this.downloadTask.getActual_size() || ((!TextUtils.isEmpty(this.downloadTask.getFileType()) && this.downloadTask.getFileType().equals(Dtype.chajian.name())) || this.downloadTask.isDisableShowSpeedUpPrompt() || !UtilsMy.d0(this.context, this.downloadTask.getCrc_link_type_val()))) {
                this.speedLayout.setVisibility(8);
                this.close2.setVisibility(8);
                this.close3.setVisibility(0);
            } else {
                UtilsMy.Z3(this.context, this.downloadTask);
                int iNextInt = new Random().nextInt(10) + 85;
                if (this.cfgBean != null) {
                    this.tip.setText(Html.fromHtml(this.cfgBean.getTip_text() + "<font color=#5286FA><big>" + iNextInt + "</big></font>%"), TextView.BufferType.SPANNABLE);
                }
                int iIntValue = this.prefDef.downloadSpeedUpCountAD().d().intValue();
                int iIntValue2 = this.prefDef.downloadSpeedUpCountCurrentAD().d().intValue();
                this.downNumber.setText(Html.fromHtml("今日可加速： <strong><font color=#6193FE>" + (iIntValue - iIntValue2) + "</font></strong> 次"), TextView.BufferType.SPANNABLE);
                t.l(this).R1(Event.AccelerationPopup, new Ext());
                this.close3.setVisibility(8);
            }
            this.icon.setImageURI(this.downloadTask.getPortraitURL());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        this.recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        if (d2.x() && downloadCenterTuijianMain.getJumpInfo() != null && (downloadCenterTuijianMain.getJumpInfo() instanceof CommonGameInfoBean)) {
            try {
                CommonMultiItemBean commonMultiItemBean = new CommonMultiItemBean(2, downloadCenterTuijianMain.getJumpInfo());
                downloadCenterTuijianMain.getJumpInfo().getExtBean().itemWithParent(this.pageExtBean);
                List<CommonMultiItemBean> list2 = this.gamedatas;
                list2.add(Math.min(list2.size(), 1), commonMultiItemBean);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        DetailRecyclerViewChileAdapter detailRecyclerViewChileAdapter = new DetailRecyclerViewChileAdapter(this, this.gamedatas, 0);
        this.adapter = detailRecyclerViewChileAdapter;
        detailRecyclerViewChileAdapter.setGameId(this.gameid);
        this.recyclerView.setAdapter(this.adapter);
        this.mHandler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.recomend.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f57970b.lambda$initData$0();
            }
        }, 100L);
    }

    private void registerNavigationBarObserver() {
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_is_min"), true, this.mNavigationBarObserver);
    }

    private void updateProgressPartly() {
    }

    @AfterViews
    void afterview() {
        String strD = this.prefDef.recomDataJson().d();
        this.gamedataJson = strD;
        if (t2.h(strD)) {
            finish();
        }
        this.context = this;
        try {
            String strD2 = this.prefDef.downloadSpeedupCfg().d();
            if (!TextUtils.isEmpty(strD2)) {
                DownloadSpeedupCfgBean downloadSpeedupCfgBean = (DownloadSpeedupCfgBean) JsonMapper.getInstance().fromJson(strD2, DownloadSpeedupCfgBean.class);
                this.cfgBean = downloadSpeedupCfgBean;
                this.seetext.setText(downloadSpeedupCfgBean.getBtn_text());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.recyclerView.setFocusable(false);
        initData();
        final int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp383);
        this.appbar.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity.1
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                List<CommonMultiItemBean> list;
                if (GamedownloadRecomdActivity.this.recyclerView.getY() != 0.0f && GamedownloadRecomdActivity.this.recyclerView.getY() < GamedownloadRecomdActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp800) && (list = GamedownloadRecomdActivity.this.gamedatas) != null && list.size() > 6) {
                    GamedownloadRecomdActivity gamedownloadRecomdActivity = GamedownloadRecomdActivity.this;
                    gamedownloadRecomdActivity.adapter.sendPoint((GamedownRecomendItemBean) gamedownloadRecomdActivity.gamedatas.get(4).getData());
                    GamedownloadRecomdActivity gamedownloadRecomdActivity2 = GamedownloadRecomdActivity.this;
                    gamedownloadRecomdActivity2.adapter.sendPoint((GamedownRecomendItemBean) gamedownloadRecomdActivity2.gamedatas.get(5).getData());
                }
                if (GamedownloadRecomdActivity.this.speedLayout.getVisibility() != 0) {
                    GamedownloadRecomdActivity.this.close3.setVisibility(0);
                    GamedownloadRecomdActivity.this.close2.setVisibility(8);
                    GamedownloadRecomdActivity.this.close.setVisibility(8);
                } else if (Math.abs(i10) > dimensionPixelOffset) {
                    GamedownloadRecomdActivity.this.close2.setVisibility(8);
                    GamedownloadRecomdActivity.this.close.setVisibility(0);
                } else {
                    GamedownloadRecomdActivity.this.close2.setVisibility(0);
                    GamedownloadRecomdActivity.this.close.setVisibility(8);
                }
            }
        });
        try {
            TypedArray typedArrayObtainStyledAttributes = getTheme().obtainStyledAttributes(new int[]{android.R.attr.windowAnimationStyle});
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = getTheme().obtainStyledAttributes(resourceId, new int[]{android.R.attr.activityCloseEnterAnimation, android.R.attr.activityCloseExitAnimation});
            this.activityCloseEnterAnimation = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
            this.activityCloseExitAnimation = typedArrayObtainStyledAttributes2.getResourceId(1, 0);
            typedArrayObtainStyledAttributes2.recycle();
        } catch (Resources.NotFoundException e11) {
            e11.printStackTrace();
        }
        this.recyclerView.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity.2
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                aVar.f64117a = (int) GamedownloadRecomdActivity.this.getResources().getDimension(R.dimen.wdp6);
                aVar.f64118b = (int) GamedownloadRecomdActivity.this.getResources().getDimension(R.dimen.wdp6);
                aVar.f64120d = (int) GamedownloadRecomdActivity.this.getResources().getDimension(R.dimen.wdp12);
                return aVar;
            }
        });
        t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.recomend.GamedownloadRecomdActivity.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    GamedownloadRecomdActivity.this.lambda$initData$0();
                }
                GamedownloadRecomdActivity.this.SCROLLING = newState != 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                int[] iArrM = h.m(recyclerView);
                GamedownloadRecomdActivity.this.firstVisiblePosition = iArrM[0];
                GamedownloadRecomdActivity.this.lastVisibleIndex = iArrM[1];
            }
        });
    }

    @Click
    void close() {
        finish();
    }

    @Click
    void close2() {
        finish();
    }

    @Click
    void close3() {
        finish();
    }

    @Click
    void downloadAcc() {
        try {
            t.l(this).R1(Event.DownloadAcceleration, new Ext());
            org.greenrobot.eventbus.c.f().q(new o(this.downloadTask, 14));
            String crc_link_type_val = this.downloadTask.getCrc_link_type_val();
            if (UtilsMy.y2(this, this.downloadTask, true)) {
                a3.b(this).d("已接入专属通道，加速成功！");
            }
            q5.f.M().G(crc_link_type_val);
            UtilsMy.H4(this, crc_link_type_val);
            UtilsMy.H2(this, crc_link_type_val);
            this.speedLayout.setVisibility(8);
            this.close3.setVisibility(0);
            this.close2.setVisibility(8);
            this.close.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: expListPoint, reason: merged with bridge method [inline-methods] */
    public void lambda$initData$0() {
        try {
            if (!this.isExploring) {
                this.isExploring = true;
                int i10 = this.firstVisiblePosition;
                if (i10 >= 0) {
                    while (i10 <= this.lastVisibleIndex) {
                        CommonMultiItemBean itemData = this.adapter.getItemData(i10);
                        if (itemData != null) {
                            if (itemData.getData() instanceof GamedownRecomendItemBean) {
                                GamedownRecomendItemBean gamedownRecomendItemBean = (GamedownRecomendItemBean) itemData.getData();
                                if (gamedownRecomendItemBean != null && !gamedownRecomendItemBean.getExposure()) {
                                    t.l(this).R1(Event.commonExp, gamedownRecomendItemBean.getExtBean().buildScene().toExt());
                                    gamedownRecomendItemBean.setExposure(true);
                                }
                            } else if (itemData.getData() instanceof CommonGameInfoBean) {
                                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) itemData.getData();
                                if (!commonGameInfoBean.getExposure()) {
                                    t.l(this).R1(Event.commonExp, commonGameInfoBean.getExtBean().buildScene().toExt());
                                    commonGameInfoBean.setExposure(true);
                                }
                            }
                        }
                        i10++;
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExploring = false;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        try {
            overridePendingTransition(this.activityCloseEnterAnimation, this.activityCloseExitAnimation);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public boolean isNavigationBarShow() {
        Point point;
        Point point2;
        try {
            try {
                return Settings.Global.getInt(getContentResolver(), "navigationbar_hide_bar_enabled") != 1;
            } catch (Settings.SettingNotFoundException unused) {
                if (v1.e()) {
                    return v1.a(this) && !v1.f(this);
                }
                if (v1.g() && Settings.Global.getInt(getContentResolver(), "force_fsg_nav_bar", 0) != 0) {
                    return false;
                }
                Display defaultDisplay = getWindowManager().getDefaultDisplay();
                point = new Point();
                point2 = new Point();
                defaultDisplay.getSize(point);
                defaultDisplay.getRealSize(point2);
                if (point2.y != point.y) {
                    return true;
                }
                return false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Display defaultDisplay2 = getWindowManager().getDefaultDisplay();
            point = new Point();
            point2 = new Point();
            defaultDisplay2.getSize(point);
            defaultDisplay2.getRealSize(point2);
            if (point2.y != point.y) {
                return true;
            }
            return false;
        }
    }

    @Click
    void main() {
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            getContentResolver().unregisterContentObserver(this.mBarHideEnableObserver);
            getContentResolver().unregisterContentObserver(this.mNavigationBarObserver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.gamedataJson = this.prefDef.recomDataJson().d();
        initData();
    }

    void registerContentResolver() {
        this.mBarHideEnableObserver = new BarHideEnableObserver(new Handler());
        getContentResolver().registerContentObserver(Settings.Global.getUriFor("navigationbar_hide_bar_enabled"), true, this.mBarHideEnableObserver);
        registerNavigationBarObserver();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        getWindow().setGravity(80);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        getWindow().setAttributes(attributes);
        p2.r(this, 16777215, true);
    }
}
