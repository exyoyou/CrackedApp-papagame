package com.join.mgps.activity;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.TabPageIndicator;
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
@EActivity(R.layout.large_singe_game_layout)
public class LargeSingePlayerGameActivity extends FragmentActivity {
    private static final String TAG = "LargeSingePlayerGameActivity";

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private FragmentPagerAdapter fragPagerAdapter;

    @ViewById
    TabPageIndicator pageIndicator;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;

    @Extra
    int toLargeGameOrGameOL;

    @ViewById
    ViewPager viewPager;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterViews() {
        try {
            getDownloadTaskInfo();
            org.greenrobot.eventbus.c.f().v(this);
            initUi();
            com.join.mgps.adapter.i8 i8Var = new com.join.mgps.adapter.i8(getSupportFragmentManager(), this.toLargeGameOrGameOL);
            this.fragPagerAdapter = i8Var;
            this.viewPager.setAdapter(i8Var);
            this.viewPager.setOffscreenPageLimit(5);
            this.pageIndicator.setViewPager(this.viewPager, 0);
            if (this.toLargeGameOrGameOL == 0) {
                this.viewPager.setCurrentItem(0);
            } else {
                this.viewPager.setCurrentItem(0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
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
            if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.remove(crc_link_type_val);
                        }
                        if (this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.put(crc_link_type_val, task);
                        }
                        if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                }
            } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.remove(crc_link_type_val);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
            }
        } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
        updateDownloadView();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initUi() {
        this.searchImg.setVisibility(0);
        this.downloadView.setVisibility(0);
        if (this.toLargeGameOrGameOL == 0) {
            this.title_textview.setText("大型单机");
        } else {
            this.title_textview.setText("最新网游");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        try {
            changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
            DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.d6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f57079b.lambda$onEventMainThread$0();
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this).start();
        if (this.toLargeGameOrGameOL == 0) {
            com.papa.sim.statistic.t.l(this).y2(Where.largeGame, AccountUtil_.getInstance_(this).getUid());
        } else {
            com.papa.sim.statistic.t.l(this).y2(Where.gameOl, AccountUtil_.getInstance_(this).getUid());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        try {
            this.downloadView.setDownloadGameNum();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
