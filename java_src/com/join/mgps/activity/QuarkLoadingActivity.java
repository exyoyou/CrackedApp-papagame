package com.join.mgps.activity;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.PictureHProgress;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.ext.ToastManager;
import com.uc.crashsdk.export.LogType;
import com.xinzhu.overmind.Overmind;
import java.util.Random;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_quark_loading)
public class QuarkLoadingActivity extends BaseActivity {
    public static int retryCount = 0;
    public static final int retryTotalCount = 2;

    @Extra
    String gameIconUrl;

    @Extra
    String gameName;

    @ViewById
    LinearLayout ll_back;

    @ViewById
    PictureHProgress pb_progress;

    @Extra
    String quarkGameUrl;

    @Extra
    String quarkId;
    DownloadTask quarkTask;

    @ViewById
    SimpleDraweeView sdv_image;

    @ViewById
    View statubar;

    @ViewById
    TextView tv_loading_progress;

    @ViewById
    TextView tv_name;
    boolean isLaunching = false;
    b progressMonitor = null;

    @Extra
    boolean isLaunchApp = false;
    boolean isLaunchAfterDown = false;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f55509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f55510c;

        a(final Intent val$launchIntentForPackage, final int val$userId) {
            this.f55509b = val$launchIntentForPackage;
            this.f55510c = val$userId;
        }

        @Override // java.lang.Runnable
        public void run() {
            Overmind.get().startActivity(this.f55509b, this.f55510c);
            QuarkLoadingActivity.this.finish();
        }
    }

    class b extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f55512b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Random f55513c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f55514d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f55515e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f55516f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f55517g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f55518h;

        public b() {
            Random random = new Random();
            this.f55513c = random;
            this.f55514d = random.nextInt(10) + 70;
            this.f55515e = this.f55513c.nextInt(10) + 80;
            this.f55516f = 0;
            this.f55517g = 0;
            this.f55518h = 0;
        }

        public void a(boolean monitor) {
            this.f55512b = monitor;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i10;
            super.run();
            while (this.f55512b && (i10 = this.f55517g) < 100) {
                try {
                    int i11 = this.f55516f;
                    if (i11 < 3) {
                        int i12 = this.f55514d / 3;
                        this.f55518h = i12;
                        this.f55517g = i10 + i12;
                    } else if (i11 >= 3 && i11 < 15) {
                        int i13 = (this.f55515e - this.f55514d) / 12;
                        this.f55518h = i13;
                        this.f55517g = i10 + i13;
                    }
                    QuarkLoadingActivity.this.updateLaunchProgress(this.f55517g);
                    Thread.sleep(1000L);
                    this.f55516f++;
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            QuarkLoadingActivity.this.updateLaunchProgress(100);
        }
    }

    private void finishStatus() {
        org.greenrobot.eventbus.c.f().A(this);
        this.isLaunching = false;
        b bVar = this.progressMonitor;
        if (bVar != null) {
            bVar.a(false);
            this.progressMonitor = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void handleIntent() {
        if (getIntent() != null) {
            this.isLaunchApp = getIntent().getBooleanExtra("isLaunchApp", false);
        }
        this.quarkTask = q5.f.M().G(com.join.mgps.Util.d2.f49545c);
        com.join.android.app.common.utils.l.o(this.sdv_image, this.gameIconUrl);
        this.tv_name.setText(this.gameName);
        if (this.isLaunchApp) {
            launchQuark();
            updateDownStatus();
            showSpeedStatus(false);
        } else {
            ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("action", "downloadQuark")).extra("isOm", true)).a();
            showProgress(true);
            showSpeedStatus(true);
        }
        switchStatus(this.isLaunchApp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showToast$0(String str) {
        com.join.mgps.Util.a3.b(this).d(str);
    }

    private void launchQuark() {
        if (com.join.mgps.Util.t2.i(this.quarkId)) {
            DownloadTask downloadTaskG = q5.f.M().G(this.quarkId);
            if (downloadTaskG == null) {
                downloadTaskG = q5.f.M().G(com.join.mgps.Util.d2.f49546d);
            }
            if (downloadTaskG != null && com.join.mgps.va.overmind.i.q().K(downloadTaskG.getPackageName())) {
                if (downloadTaskG.getOpenTime() <= 0) {
                    downloadTaskG.setOpenTime(System.currentTimeMillis());
                    q5.f.M().m(downloadTaskG);
                }
                launchApk(downloadTaskG.getPackageName(), Overmind.getHostUserId(), this.quarkGameUrl);
            }
        }
        b bVar = this.progressMonitor;
        if (bVar != null) {
            bVar.a(false);
            this.progressMonitor = null;
        }
    }

    private void receiveDelete(DownloadTask task) {
        if (task != null && this.quarkId.equals(task.getCrc_link_type_val())) {
            ToastManager.show("下载文件已删除");
            finish();
        }
    }

    private void receiveError(DownloadTask task) {
        if (task == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(task.getCrc_link_type_val()) || !task.getCrc_link_type_val().equals(this.quarkId)) {
                return;
            }
            UtilsMy.U4(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask task) {
        if (task != null && this.quarkId.equals(task.getCrc_link_type_val())) {
            this.quarkTask = task;
        }
    }

    private void receiveSuccess(DownloadTask task) {
        if (task != null && this.quarkId.equals(task.getCrc_link_type_val())) {
            this.pb_progress.setProgress(100);
        }
    }

    private void setStatusBar() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.statubar.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(this);
        this.statubar.setLayoutParams(layoutParams);
    }

    private void showProgress(boolean show) {
        this.pb_progress.setVisibility(show ? 0 : 4);
    }

    private void showSpeedStatus(boolean show) {
    }

    private void switchStatus(boolean isLaunchApp) {
        if (isLaunchApp) {
            this.ll_back.setVisibility(4);
        } else {
            this.ll_back.setVisibility(0);
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask = this.quarkTask;
        if (downloadTask != null) {
            if (downloadTask.getStatus() != 2 && this.quarkTask.getStatus() != 12) {
                if (this.quarkTask.getStatus() == 5 && !this.isLaunchApp && this.quarkId.equals(this.quarkTask.getCrc_link_type_val())) {
                    this.pb_progress.setProgress(100);
                    return;
                }
                return;
            }
            try {
                if (this.quarkId.equals(this.quarkTask.getCrc_link_type_val())) {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(this.quarkTask.getCrc_link_type_val());
                    this.pb_progress.setProgress((int) downloadTaskG.getProgress());
                    this.tv_loading_progress.setText("正在部署极速下载通道 " + downloadTaskG.getProgress() + "%");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.j0.a().d(this);
        setStatusBar();
        if (!com.join.mgps.Util.t2.h(this.quarkId)) {
            handleIntent();
        } else {
            ToastManager.show("游戏信息获取失败，请重试");
            finish();
        }
    }

    @Click({R.id.ll_back})
    void back() {
        finish();
        finishStatus();
    }

    @Click({R.id.tv_cancel})
    void cancel() {
        DownloadTask downloadTask = this.quarkTask;
        if (downloadTask != null) {
            com.php25.PDownload.d.i(downloadTask);
        }
        finish();
    }

    public boolean launchApk(String packageName, int userId, String gameUrl) {
        if (Overmind.getMindPackageManager().k(packageName).E() && !com.xinzhu.overmind.plugin.b.i()) {
            return false;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(gameUrl));
        intent.setPackage(com.join.mgps.Util.d2.f49544b);
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        MApplication.f3182z.p().has_launch_quark().g(Boolean.TRUE);
        MApplication.f3182z.p().isQuarkSilentDownload().g(Boolean.FALSE);
        if (MApplication.f3182z.p().quark_first_launch_time().d().longValue() == 0) {
            MApplication.f3182z.p().quark_first_launch_time().g(Long.valueOf(System.currentTimeMillis()));
        }
        new Thread(new a(intent, userId)).start();
        return true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        finishStatus();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC == 5) {
            updateUI(downloadTaskA, 5);
            if (downloadTaskA == null || !this.quarkId.equals(downloadTaskA.getCrc_link_type_val())) {
                return;
            }
            this.isLaunchAfterDown = true;
            launchQuark();
            return;
        }
        if (iC == 6) {
            updateUI(downloadTaskA, 6);
            return;
        }
        if (iC == 7) {
            updateUI(downloadTaskA, 3);
            return;
        }
        if (iC == 8) {
            if (this.quarkTask == null && downloadTaskA != null && com.join.mgps.Util.d2.f49545c.equals(downloadTaskA.getCrc_link_type_val())) {
                this.quarkTask = downloadTaskA;
            }
            updateProgressPartly();
            return;
        }
        if (iC != 48) {
            switch (iC) {
                case 10:
                    updateUI(downloadTaskA, 7);
                    break;
                case 12:
                    updateUI(downloadTaskA, 8);
                    break;
                case 13:
                    updateUI(downloadTaskA, 9);
                    break;
            }
            return;
        }
        updateUI(downloadTaskA, 5);
        if (downloadTaskA == null || !this.quarkId.equals(downloadTaskA.getCrc_link_type_val())) {
            return;
        }
        this.tv_loading_progress.setText("正在部署极速下载通道");
        this.pb_progress.setVisibility(4);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent();
    }

    void showToast(final String msg) {
        runOnUiThread(new Runnable() { // from class: com.join.mgps.activity.v8
            @Override // java.lang.Runnable
            public final void run() {
                this.f58174b.lambda$showToast$0(msg);
            }
        });
    }

    void updateDownStatus() {
        if (!this.isLaunchApp || this.isLaunchAfterDown) {
            return;
        }
        showProgress(true);
        b bVar = this.progressMonitor;
        if (bVar != null) {
            bVar.a(false);
            this.progressMonitor = null;
        }
        b bVar2 = new b();
        this.progressMonitor = bVar2;
        bVar2.a(true);
        this.progressMonitor.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLaunchProgress(int progress) {
        this.pb_progress.setProgress(progress);
        this.tv_loading_progress.setText("正在启动极速下载通道 " + this.pb_progress.getProgress() + "%");
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}
