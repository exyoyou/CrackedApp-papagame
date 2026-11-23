package com.join.mgps.activity;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Where;
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
@EActivity(R.layout.classify_and_rank_activity_layout)
public class ClassifyAndRankActivity extends BaseFragmentActivity {

    @Extra
    int currentIndex;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @ViewById
    RelativeLayout fragment;

    @Extra
    int intentFrom;

    @Extra
    boolean isFormNewRank;

    @Extra
    ExtBean parentExtBean;

    @Extra
    String title;

    @ViewById
    ImageView title_normal_search_img;

    @ViewById
    TextView title_textview;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterviews() {
        this.title_normal_search_img.setVisibility(0);
        this.downloadView.setVisibility(0);
        if (com.join.mgps.Util.t2.i(this.title)) {
            this.title_textview.setText(this.title);
        }
        com.join.mgps.Util.j0.a().d(this);
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        int i10 = this.intentFrom;
        if (i10 == 1) {
            this.title_textview.setText("分类");
            fragmentTransactionBeginTransaction.add(R.id.fragment, new com.join.mgps.fragment.j());
        } else if (i10 == 2) {
            this.title_textview.setText("排行");
            com.join.mgps.fragment.v4 v4Var = new com.join.mgps.fragment.v4();
            Bundle bundle = new Bundle();
            bundle.putInt("table", this.currentIndex);
            bundle.putSerializable("parentExtBean", this.parentExtBean);
            v4Var.setArguments(bundle);
            fragmentTransactionBeginTransaction.add(R.id.fragment, v4Var);
        } else if (i10 == 3) {
            this.title_textview.setText("排行");
            fragmentTransactionBeginTransaction.add(R.id.fragment, new com.join.mgps.fragment.x3());
        }
        fragmentTransactionBeginTransaction.commit();
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
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57146b.lambda$onEventMainThread$0();
            }
        });
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        updateDownloadView();
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        com.papa.sim.statistic.t.l(this).y2(Where.classGame, AccountUtil_.getInstance_(this).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }
}
