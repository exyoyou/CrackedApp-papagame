package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameDiscoverBean;
import com.join.mgps.dto.GameDiscoverMainBean;
import com.join.mgps.dto.GameDiscoverMessageBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.uc.crashsdk.export.LogType;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.discover_layout)
public class GameDiscoverActivity extends BaseFragmentActivity implements com.join.mgps.pref.c {
    private Context context;
    private int currentPn;

    @ViewById
    ImageView download_bg;

    @Extra
    ExtBean extBean;
    private com.join.mgps.fragment.f fragment;

    @ViewById
    FrameLayout frameLayout;

    @ViewById
    RelativeLayout layoutBack;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private com.join.android.app.common.manager.b mTintManager;
    ExtBean pageExtBean = new ExtBean().setChatId(EventP.ChatId.dailyRecommend.name()).setTypeCode(EventP.TypeCode.page.name());
    com.join.mgps.rpc.e rpcClient;
    private int statusHeight;

    public static int getStatusHeight(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i10 = rect.top;
        if (i10 != 0) {
            return i10;
        }
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return i10;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return i10;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return i10;
        } catch (InstantiationException e13) {
            e13.printStackTrace();
            return i10;
        } catch (NoSuchFieldException e14) {
            e14.printStackTrace();
            return i10;
        } catch (NumberFormatException e15) {
            e15.printStackTrace();
            return i10;
        } catch (SecurityException e16) {
            e16.printStackTrace();
            return i10;
        }
    }

    private void setTranslucentStatus() {
        Window window = getWindow();
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.setStatusBarColor(0);
        com.join.android.app.common.manager.b bVar = new com.join.android.app.common.manager.b(this);
        this.mTintManager = bVar;
        bVar.m(true);
    }

    @AfterViews
    void afterViews() {
        try {
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
            this.context = this;
            this.currentPn = 1;
            showLoading();
            getGameDiscover();
        } catch (Exception unused) {
        }
        this.pageExtBean.setParent(this.extBean);
        com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
    }

    @Override // com.join.mgps.pref.c
    public void callBack(Bundle arg) {
        if (arg != null) {
            this.currentPn = arg.getInt("CurrentPn");
            getGameDiscover();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameDiscover() {
        GameDiscoverMessageBean messages;
        List<GameDiscoverBean> data;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showLoadingFailed();
            return;
        }
        try {
            GameDiscoverMainBean gameDiscoverMainBeanR = this.rpcClient.R(getRequestBean(this.currentPn, 10, this.extBean));
            if (gameDiscoverMainBeanR == null || (messages = gameDiscoverMainBeanR.getMessages()) == null || (data = messages.getData()) == null || data.size() <= 0) {
                showLoadingFailed();
            } else {
                showMainUi(data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLoadingFailed();
        }
    }

    public CommonRequestBean getRequestBean(int pn, int pc2, ExtBean extBean) {
        return RequestBeanUtil.getInstance(this.context).getGameDiscoverRequestBean(pn, pc2, extBean);
    }

    public com.join.android.app.common.manager.b getmTintManager() {
        return this.mTintManager;
    }

    @Click
    void layoutBack() {
        finish();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTranslucentStatus();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Click
    void relodingimag() {
        showLoading();
        this.currentPn = 1;
        getGameDiscover();
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        setTranslucentStatus();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        try {
            this.loding_layout.setVisibility(0);
            this.frameLayout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            this.download_bg.setVisibility(0);
            int iApplyDimension = (int) TypedValue.applyDimension(1, 46.0f, getResources().getDisplayMetrics());
            int iApplyDimension2 = (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iApplyDimension, iApplyDimension);
            int statusHeight = getStatusHeight(this) + iApplyDimension2;
            this.statusHeight = statusHeight;
            layoutParams.setMargins(0, statusHeight, 0, 0);
            this.layoutBack.setLayoutParams(layoutParams);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingFailed() {
        try {
            if (this.currentPn == 1) {
                LinearLayout linearLayout = this.loding_layout;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                FrameLayout frameLayout = this.frameLayout;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                LinearLayout linearLayout2 = this.loding_faile;
                if (linearLayout2 != null) {
                    linearLayout2.setVisibility(0);
                }
                ImageView imageView = this.download_bg;
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMainUi(List<GameDiscoverBean> gameDiscoverBeans) {
        try {
            if (this.fragment == null) {
                this.fragment = com.join.mgps.fragment.f.X();
            }
            this.loding_layout.setVisibility(8);
            this.frameLayout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.download_bg.setVisibility(8);
            if (this.currentPn == 1) {
                FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
                this.fragment.c0(gameDiscoverBeans);
                fragmentTransactionBeginTransaction.add(R.id.frameLayout, this.fragment);
                try {
                    fragmentTransactionBeginTransaction.commit();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                this.fragment.c0(gameDiscoverBeans);
            }
            this.fragment.setParentExtBean(this.pageExtBean);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.join.mgps.pref.c
    public void viewCallBack(Bundle arg) {
        this.download_bg.setVisibility(8);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        setTranslucentStatus();
    }
}
