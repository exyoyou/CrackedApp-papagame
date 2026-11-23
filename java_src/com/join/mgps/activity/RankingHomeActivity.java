package com.join.mgps.activity;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.papa.sim.statistic.Where;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
@EActivity(R.layout.rannking_home_activity)
public class RankingHomeActivity extends BaseFragmentActivity {
    private static final String TAG = "RankingHomeActivity";

    @ViewById
    ImageView back_image;
    private k classifyFragment;

    @Extra
    String dimensionId;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();

    @ViewById
    FrameLayout fragment;

    @Extra
    String rankTag;

    @Extra
    int rankType;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @Extra
    String title;

    @ViewById
    TextView title_textview;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterviews() {
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().v(this);
        this.downloadView.setVisibility(0);
        this.title_textview.setText(this.title);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (com.join.mgps.Util.t2.i(this.rankTag)) {
            this.searchImg.setVisibility(8);
            this.classifyFragment = k.Y(this.rankType, "4", this.rankTag, this.dimensionId);
        } else {
            this.searchImg.setVisibility(0);
            this.classifyFragment = k.W(this.rankType, "");
        }
        if (this.classifyFragment != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.add(R.id.fragment, this.classifyFragment);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
    }

    @Click
    void back_image() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                return;
            }
            this.downloadingMap.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.remove(crc_link_type_val);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.put(crc_link_type_val, task);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    return;
                }
                this.downloadingMap.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
            this.downloadedMap.remove(crc_link_type_val);
        }
        if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.w8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58197b.lambda$onEventMainThread$0();
            }
        });
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        com.papa.sim.statistic.t.l(this).y2(Where.rankHome, AccountUtil_.getInstance_(this).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }
}
