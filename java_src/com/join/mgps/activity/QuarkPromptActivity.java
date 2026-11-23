package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadArgs;
import com.join.mgps.dto.DownloadScanEvent;
import com.join.mgps.dto.WebDiskCfg;
import com.join.mgps.dto.WebDiskInfo;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa91.arc.ext.ToastManager;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_quark_prompt)
public class QuarkPromptActivity extends BaseDialogActivity {

    @Extra
    DownloadArgs args;
    WebDiskCfg cfg;

    @ViewById
    View container;
    private e downTipAdapter;
    DownloadTask gameDownloadTask;

    @Extra
    String gameId;
    private CollectionBeanSub gameInfo;

    @Pref
    PrefDef_ prefDef;
    DownloadTask quarkTask;

    @ViewById
    RecyclerView rv_tip_list;

    @ViewById
    TextView tvDownloadNormal;

    @ViewById
    TextView tvDownloadQuark;

    @ViewById
    TextView tv_count_desc;

    @ViewById
    TextView tv_count_down;

    @ViewById
    TextView tv_count_pre;

    @ViewById
    TextView tv_file_name;

    @ViewById
    TextView tv_file_time;
    WebDiskInfo webDiskInfo;
    boolean firstShowInstall = true;
    boolean firstSpeedDownQkExp = true;
    boolean fromDetail = false;
    boolean quarkInstalled = false;
    int todayLeftTimes = 10;
    Handler handler = new Handler(new a());
    boolean isEmu = false;
    boolean isOm = false;

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            if (msg.what != 1) {
                return false;
            }
            QuarkPromptActivity quarkPromptActivity = QuarkPromptActivity.this;
            int i10 = quarkPromptActivity.todayLeftTimes - 1;
            quarkPromptActivity.todayLeftTimes = i10;
            if (i10 <= 0) {
                quarkPromptActivity.tv_count_down.setText("00:00:00");
                return false;
            }
            quarkPromptActivity.formatTime();
            QuarkPromptActivity.this.handler.sendEmptyMessageDelayed(1, 1000L);
            return false;
        }
    }

    class b extends com.join.mgps.base.decoration.b {
        b() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64120d = (int) QuarkPromptActivity.this.getResources().getDimension(R.dimen.wdp50);
            aVar.f64116f = 0;
            return aVar;
        }
    }

    class c implements Consumer<com.tbruyelle.rxpermissions2.b> {

        class a implements Runnable {
            a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                QuarkPromptActivity quarkPromptActivity = QuarkPromptActivity.this;
                if (quarkPromptActivity.webDiskInfo != null) {
                    int iIntValue = quarkPromptActivity.prefDef.quark_click_count().d().intValue();
                    WebDiskCfg webDiskCfg = QuarkPromptActivity.this.cfg;
                    if (webDiskCfg != null && iIntValue < webDiskCfg.getClick_count()) {
                        QuarkPromptActivity.this.prefDef.quark_click_count().g(Integer.valueOf(iIntValue + 1));
                    }
                    if (QuarkPromptActivity.this.gameInfo != null) {
                        if (QuarkPromptActivity.this.isEmu) {
                            IntentUtil.getInstance().startQuarkBrowser(QuarkPromptActivity.this, com.join.mgps.Util.d2.p(), QuarkPromptActivity.this.webDiskInfo.getWb_url(), QuarkPromptActivity.this.gameInfo.getGame_name(), QuarkPromptActivity.this.gameInfo.getIco_remote());
                        } else {
                            IntentUtil.getInstance().startQuarkBrowser(QuarkPromptActivity.this, com.join.mgps.Util.d2.s(), QuarkPromptActivity.this.webDiskInfo.getWb_url(), QuarkPromptActivity.this.gameInfo.getGame_name(), QuarkPromptActivity.this.gameInfo.getIco_remote());
                        }
                    }
                    if (QuarkPromptActivity.this.gameDownloadTask != null) {
                        DownloadScanEvent downloadScanEvent = new DownloadScanEvent();
                        downloadScanEvent.setPkg(QuarkPromptActivity.this.gameDownloadTask.getPackageName());
                        downloadScanEvent.setTask(QuarkPromptActivity.this.gameDownloadTask);
                        downloadScanEvent.setStatus(0);
                        ((CommonService_.n0) CommonService_.P2(QuarkPromptActivity.this).extra("downloadByQuark", downloadScanEvent)).a();
                    }
                }
            }
        }

        c() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            QuarkPromptActivity quarkPromptActivity = QuarkPromptActivity.this;
            com.join.mgps.Util.d2.u(quarkPromptActivity, Event.clickSpeedDownQkButton, quarkPromptActivity.gameId, quarkPromptActivity.fromDetail ? "detail" : "list");
            QuarkPromptActivity quarkPromptActivity2 = QuarkPromptActivity.this;
            com.join.mgps.Util.d2.u(quarkPromptActivity2, Event.clickSpeedDownUpQk, quarkPromptActivity2.gameId, quarkPromptActivity2.fromDetail ? "detail" : "list");
            QuarkPromptActivity.this.finish();
            new Handler().postDelayed(new a(), 200L);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iIntValue = QuarkPromptActivity.this.prefDef.quark_display_count().d().intValue();
            if (iIntValue < QuarkPromptActivity.this.cfg.getDisplay_count()) {
                QuarkPromptActivity.this.prefDef.quark_display_count().g(Integer.valueOf(iIntValue + 1));
            }
            MApplication mApplication = MApplication.f3182z;
            QuarkPromptActivity quarkPromptActivity = QuarkPromptActivity.this;
            UtilsMy.T0(mApplication, quarkPromptActivity.gameDownloadTask, quarkPromptActivity.gameInfo);
        }
    }

    class e extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public e() {
            super(R.layout.item_quark_down_tip);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, String item) {
            helper.setText(R.id.tv_text, Html.fromHtml(item));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void downloadQuark() {
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("action", "downloadQuark")).extra("isOm", this.isEmu ? com.join.mgps.Util.d2.p() : com.join.mgps.Util.d2.s())).a();
        ToastManager.show(getString(R.string.quark_downloading_tip));
        com.join.mgps.Util.d2.u(this, Event.clickInstallQkButton, this.gameId, this.fromDetail ? "detail" : "list");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void formatTime() {
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        int i10 = this.todayLeftTimes;
        int i11 = i10 / 3600;
        int i12 = (i10 - (i11 * 3600)) / 60;
        int i13 = i10 % 60;
        TextView textView = this.tv_count_down;
        StringBuilder sb2 = new StringBuilder();
        if (i11 < 10) {
            objValueOf = "0" + i11;
        } else {
            objValueOf = Integer.valueOf(i11);
        }
        sb2.append(objValueOf);
        sb2.append(":");
        if (i12 < 10) {
            objValueOf2 = "0" + i12;
        } else {
            objValueOf2 = Integer.valueOf(i12);
        }
        sb2.append(objValueOf2);
        sb2.append(":");
        if (i13 < 10) {
            objValueOf3 = "0" + i13;
        } else {
            objValueOf3 = Integer.valueOf(i13);
        }
        sb2.append(objValueOf3);
        textView.setText(sb2.toString());
    }

    public static Integer getRemainSecondsOneDay(Date currentDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(currentDate);
        calendar.add(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return Integer.valueOf((int) ((calendar.getTime().getTime() - currentDate.getTime()) / 1000));
    }

    private boolean isOutOfBounds(Context context, MotionEvent event) {
        View contentView = getContentView();
        if (contentView == null) {
            return true;
        }
        int x10 = (int) event.getX();
        int y10 = (int) event.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(context).getScaledWindowTouchSlop();
        Rect rect = new Rect();
        contentView.getGlobalVisibleRect(rect);
        int i10 = -scaledWindowTouchSlop;
        return x10 < i10 || y10 < i10 || !rect.contains(x10, y10);
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.p2.v(this);
        if (com.join.mgps.Util.t2.i(this.prefDef.web_disk_cfg().d())) {
            this.cfg = (WebDiskCfg) JsonMapper.getInstance().fromJson(this.prefDef.web_disk_cfg().d(), WebDiskCfg.class);
        }
        DownloadArgs downloadArgs = this.args;
        if (downloadArgs != null) {
            DownloadTask downloadTask = downloadArgs.getDownloadTask();
            if (downloadTask != null) {
                this.gameId = downloadTask.getCrc_link_type_val();
            }
            this.gameInfo = this.args.getGameInfo();
            this.fromDetail = this.args.getFrom() == 101;
            CollectionBeanSub collectionBeanSub = this.gameInfo;
            if (collectionBeanSub != null) {
                this.webDiskInfo = collectionBeanSub.getWeb_disk_info();
                this.gameDownloadTask = this.gameInfo.buildDownloadTask();
            }
        }
        DownloadTask downloadTask2 = this.gameDownloadTask;
        boolean z10 = downloadTask2 != null && UtilsMy.w2(Integer.parseInt(downloadTask2.getPlugin_num()));
        this.isEmu = z10;
        if (z10) {
            this.isOm = com.join.mgps.Util.d2.p() && com.join.mgps.va.overmind.i.q().S();
        } else {
            this.isOm = com.join.mgps.Util.d2.s() && com.join.mgps.va.overmind.i.q().S();
        }
        boolean zE = com.join.android.app.common.utils.g.t0(this).e(this, com.join.mgps.Util.d2.f49544b);
        this.quarkInstalled = zE;
        if (zE) {
            this.quarkTask = q5.f.M().G(com.join.mgps.Util.d2.f49546d);
        } else if (this.isOm) {
            this.quarkTask = q5.f.M().G(com.join.mgps.Util.d2.f49545c);
        }
        DownloadArgs downloadArgs2 = this.args;
        if (downloadArgs2 != null) {
            DownloadTask downloadTask3 = downloadArgs2.getDownloadTask();
            if (downloadTask3 != null) {
                this.gameId = downloadTask3.getCrc_link_type_val();
            }
            this.gameInfo = this.args.getGameInfo();
            this.fromDetail = this.args.getFrom() == 101;
            CollectionBeanSub collectionBeanSub2 = this.gameInfo;
            if (collectionBeanSub2 != null) {
                this.webDiskInfo = collectionBeanSub2.getWeb_disk_info();
                this.gameDownloadTask = this.gameInfo.buildDownloadTask();
                this.tv_file_name.setText(this.gameInfo.getGame_name());
                try {
                    long j10 = (long) (Double.parseDouble(this.gameInfo.getAppSize()) * 1048576.0d);
                    this.tv_file_time.setText("2023-03-21 15:30 " + UtilsMy.Z2(j10));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        updateDownloadBtn();
        this.tv_count_down.setVisibility(0);
        this.tv_count_desc.setVisibility(0);
        this.handler.sendEmptyMessageDelayed(1, 1000L);
        this.downTipAdapter = new e();
        this.rv_tip_list.setLayoutManager(new LinearLayoutManager(this));
        this.rv_tip_list.setAdapter(this.downTipAdapter);
        this.rv_tip_list.addItemDecoration(new b());
        WebDiskCfg webDiskCfg = this.cfg;
        if (webDiskCfg != null) {
            if (com.join.mgps.Util.t2.i(webDiskCfg.getTitle())) {
                if (this.cfg.getTitle().contains("<time>")) {
                    String[] strArrSplit = this.cfg.getTitle().split("<time>");
                    this.tv_count_pre.setText(strArrSplit[0]);
                    this.tv_count_desc.setText(strArrSplit[1]);
                    this.tv_count_down.setVisibility(0);
                    this.tv_count_desc.setVisibility(0);
                    this.todayLeftTimes = getRemainSecondsOneDay(new Date()).intValue() + 14400;
                    formatTime();
                } else {
                    this.tv_count_pre.setText(this.cfg.getTitle());
                    this.tv_count_down.setVisibility(8);
                    this.tv_count_desc.setVisibility(8);
                }
            }
            if (com.join.mgps.Util.t2.i(this.cfg.getSub_title())) {
                this.downTipAdapter.setNewData(Arrays.asList((this.cfg.getSub_title() + "\n<font color='#2251FF'>" + this.cfg.getSub_title_v2() + "</font>").split("<br/>")));
            }
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.cfg != null) {
            if (this.prefDef.quark_click_count().d().intValue() >= this.cfg.getClick_count() - 1) {
                this.prefDef.isQuarkEnable().g(Boolean.FALSE);
            }
            if (this.prefDef.quark_display_count().d().intValue() >= this.cfg.getDisplay_count() - 1 && this.prefDef.quark_click_count().d().intValue() <= 0) {
                this.prefDef.isQuarkEnable().g(Boolean.FALSE);
            }
        }
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r event) {
        if (event.a() == null || TextUtils.isEmpty(event.a().getPackageName()) || !event.a().getPackageName().equals(com.join.mgps.Util.d2.f49544b)) {
            return;
        }
        this.quarkTask.setStatus(event.a().getStatus());
        this.quarkTask.setPath(event.a().getPath());
        updateDownloadBtn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
        updateDownloadBtn();
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        if (!shouldCloseOnTouch(this, event)) {
            return super.onTouchEvent(event);
        }
        finish();
        return true;
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public boolean shouldCloseOnTouch(Context context, MotionEvent event) {
        return getContentView() != null && ((event.getAction() == 1 && isOutOfBounds(context, event)) || event.getAction() == 4);
    }

    @Click
    void tvDownloadNormal() {
        new Handler().postDelayed(new d(), 200L);
        finish();
    }

    @UiThread
    void updateDownloadBtn() {
        this.tvDownloadNormal.setVisibility(0);
        WebDiskCfg webDiskCfg = this.cfg;
        String string = (webDiskCfg == null || TextUtils.isEmpty(webDiskCfg.getDown_btn_txt())) ? getString(R.string.download_speedly) : this.cfg.getDown_btn_txt();
        if (this.firstSpeedDownQkExp) {
            com.join.mgps.Util.d2.u(this, Event.speedDownQkExp, this.gameId, this.fromDetail ? "detail" : "list");
            this.firstSpeedDownQkExp = false;
        }
        this.tvDownloadQuark.setText(string);
    }

    @Click
    void v_quark_down() {
        int status;
        DownloadTask downloadTask;
        if (!this.isOm) {
            this.quarkInstalled = com.join.android.app.common.utils.g.t0(this).e(this, com.join.mgps.Util.d2.f49544b);
            DownloadTask downloadTaskG = q5.f.M().G(com.join.mgps.Util.d2.f49546d);
            if (downloadTaskG != null) {
                status = downloadTaskG.getStatus();
                this.quarkTask = downloadTaskG;
            } else {
                status = 0;
            }
            boolean z10 = this.quarkInstalled;
            if (!z10 && status == 2) {
                ToastManager.show("夸克正在下载");
                this.prefDef.isQuarkSilentDownload().g(Boolean.FALSE);
                return;
            }
            if (!z10 && (this.quarkTask == null || status == 0)) {
                downloadQuark();
                return;
            }
            if (!z10 && ((this.quarkTask != null && status == 11) || status == 6)) {
                File file = new File(this.quarkTask.getPath());
                this.prefDef.isQuarkSilentDownload().g(Boolean.FALSE);
                if (!file.exists() || status == 6) {
                    q5.f.M().delete(this.quarkTask);
                    downloadQuark();
                    return;
                } else {
                    com.join.android.app.common.utils.g.t0(this).A(this, this.quarkTask.getPath());
                    com.join.mgps.Util.d2.u(this, Event.clickInstallQkButton, this.gameId, this.fromDetail ? "detail" : "list");
                    return;
                }
            }
            if (!z10 && (downloadTask = this.quarkTask) != null && status != 5) {
                com.php25.PDownload.d.c(downloadTask, this);
                this.prefDef.isQuarkSilentDownload().g(Boolean.FALSE);
                com.join.mgps.Util.d2.u(this, Event.clickInstallQkButton, this.gameId, this.fromDetail ? "detail" : "list");
                return;
            }
        }
        new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74785i).subscribe(new c());
        UtilsMy.c4(this, com.kuaishou.weapon.p0.g.f74786j);
    }
}
