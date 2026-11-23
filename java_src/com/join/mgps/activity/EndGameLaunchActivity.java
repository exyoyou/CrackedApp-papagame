package com.join.mgps.activity;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.EndGameBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import java.io.File;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_end_game_launch)
public class EndGameLaunchActivity extends BaseAppCompatActivity {
    private String archiveName;
    private String archivePath;

    @Extra
    EndGameBean endgameInfo;
    private com.github.snowdream.android.app.downloader.b factory;

    @Extra
    String gameId;
    private boolean isFromZero;

    @ViewById
    SimpleDraweeView ivGameIcon;
    private int lastProgress;
    private com.github.snowdream.android.app.downloader.b.InterfaceC0591b listener;
    private Activity mActivity;

    @Extra
    String playBackUrl;

    @ViewById
    FrameLayout progress;

    @Extra
    int startMode;

    @ViewById
    TextView tvLoading;
    Runnable playBackRunnable = new b();
    Runnable startAutoProgress = new d();
    Runnable launchProgress = new e();

    class a extends com.join.android.app.common.http.d.p<String> {
        a() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            Toast.makeText(EndGameLaunchActivity.this.mActivity, "回放失败！", 0).show();
            EndGameLaunchActivity.this.finish();
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String response) {
            EndGameLaunchActivity.this.toRePlayGame(response);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EndGameLaunchActivity.this.lastProgress < 80) {
                EndGameLaunchActivity.this.lastProgress = 80;
            }
            EndGameLaunchActivity endGameLaunchActivity = EndGameLaunchActivity.this;
            endGameLaunchActivity.setLoadingProgress(endGameLaunchActivity.lastProgress);
            if (EndGameLaunchActivity.this.lastProgress >= 100) {
                EndGameLaunchActivity.this.onPlayVideo();
                return;
            }
            EndGameLaunchActivity.access$108(EndGameLaunchActivity.this);
            if (((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler == null) {
                ((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler = new Handler();
            }
            ((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler.postDelayed(this, 100L);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51368b;

        c(final String val$path) {
            this.f51368b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity.this.toRePlayGame(this.f51368b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EndGameLaunchActivity endGameLaunchActivity = EndGameLaunchActivity.this;
            endGameLaunchActivity.setLoadingProgress(endGameLaunchActivity.lastProgress);
            if (EndGameLaunchActivity.this.lastProgress <= 80) {
                EndGameLaunchActivity.access$108(EndGameLaunchActivity.this);
                ((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler.postDelayed(this, 150L);
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!EndGameLaunchActivity.this.isFromZero && EndGameLaunchActivity.this.lastProgress < 80) {
                EndGameLaunchActivity.this.lastProgress = 80;
            }
            EndGameLaunchActivity endGameLaunchActivity = EndGameLaunchActivity.this;
            endGameLaunchActivity.setLoadingProgress(endGameLaunchActivity.lastProgress);
            if (EndGameLaunchActivity.this.lastProgress < 100) {
                if (EndGameLaunchActivity.this.isFromZero) {
                    EndGameLaunchActivity.access$112(EndGameLaunchActivity.this, 5);
                } else {
                    EndGameLaunchActivity.access$108(EndGameLaunchActivity.this);
                }
                if (((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler == null) {
                    ((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler = new Handler();
                }
                ((BaseAppCompatActivity) EndGameLaunchActivity.this).mHandler.postDelayed(this, 100L);
                return;
            }
            GameMainV4DataBean.EndGameConfigBean endGameConfigBean = (GameMainV4DataBean.EndGameConfigBean) JsonMapper.getInstance().fromJson(new PrefDef_(EndGameLaunchActivity.this.mActivity).endGameConfig().d(), GameMainV4DataBean.EndGameConfigBean.class);
            String jsonString = (endGameConfigBean == null || endGameConfigBean.getEndgame_challenge_level() == null) ? "" : JsonMapper.toJsonString(endGameConfigBean.getEndgame_challenge_level());
            if (UtilsMy.i4(EndGameLaunchActivity.this.mActivity, AccountUtil_.getInstance_(EndGameLaunchActivity.this.mActivity).getUid(), EndGameLaunchActivity.this.gameId, 16, EndGameLaunchActivity.this.archivePath + File.separator + EndGameLaunchActivity.this.archiveName, EndGameLaunchActivity.this.endgameInfo.getIndex(), EndGameLaunchActivity.this.endgameInfo.getDuration() / 1000, EndGameLaunchActivity.this.endgameInfo.getSubTitle(), EndGameLaunchActivity.this.endgameInfo.getEndgameId(), jsonString)) {
                EndGameLaunchActivity.this.finish();
            }
        }
    }

    class f implements com.github.snowdream.android.app.downloader.b.InterfaceC0591b {
        f() {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onError(String url) {
            EndGameLaunchActivity.this.showTost("下载存档失败");
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onFinish(String url) {
            EndGameLaunchActivity.this.startEndGame();
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onProgress(String url, int progress, String speed) {
            EndGameLaunchActivity.this.setLoadingProgress(((progress * 20) / 100) + 80);
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStart(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onStop(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void onWait(String url) {
        }

        @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
        public void updateSize(String url, long actualSize) {
        }
    }

    static /* synthetic */ int access$108(EndGameLaunchActivity endGameLaunchActivity) {
        int i10 = endGameLaunchActivity.lastProgress;
        endGameLaunchActivity.lastProgress = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$112(EndGameLaunchActivity endGameLaunchActivity, int i10) {
        int i11 = endGameLaunchActivity.lastProgress + i10;
        endGameLaunchActivity.lastProgress = i11;
        return i11;
    }

    private void initListener() {
        this.factory = com.github.snowdream.android.app.downloader.b.e();
        f fVar = new f();
        this.listener = fVar;
        this.factory.m(fVar);
        this.factory.i();
    }

    private void startDownloadArchieve(boolean isFromZero) {
        if (this.startMode == 15) {
            startPlayBack();
            return;
        }
        this.isFromZero = isFromZero;
        if (!isFromZero) {
            setLoadingProgress(80);
        }
        if (this.endgameInfo == null) {
            showTost("获取残局信息失败");
            finish();
            return;
        }
        this.archiveName = this.endgameInfo.getEndgameId() + "_v2";
        this.archivePath = com.join.mgps.Util.z.f50171j;
        if (new File(this.archivePath + File.separator + this.archiveName).exists()) {
            startEndGame();
        } else {
            this.factory.b(new com.github.snowdream.android.app.downloader.c(this.endgameInfo.getArchive(), this.archiveName, this.archivePath, 0L));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @AfterViews
    void afterviews() {
        EndGameBean endGameBean;
        this.mActivity = this;
        com.join.mgps.Util.j0.a().d(this);
        initListener();
        SimpleDraweeView simpleDraweeView = this.ivGameIcon;
        if (simpleDraweeView != null && (endGameBean = this.endgameInfo) != null) {
            com.join.android.app.common.utils.l.h(simpleDraweeView, endGameBean.getGameIcon());
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        if (downloadTaskG != null && downloadTaskG.getStatus() == 5) {
            startDownloadArchieve(true);
        } else {
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("gameDownloadDetail", this.gameId)).extra("fromRecomDown", true)).extra("_from", 157)).a();
            this.mHandler.postDelayed(this.startAutoProgress, 150L);
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.github.snowdream.android.app.downloader.b.InterfaceC0591b interfaceC0591b;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        com.join.mgps.Util.j0.a().e(this);
        com.github.snowdream.android.app.downloader.b bVar = this.factory;
        if (bVar != null && (interfaceC0591b = this.listener) != null) {
            bVar.j(interfaceC0591b);
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            DownloadTask downloadTaskG = q5.f.M().G(downloadTaskA.getCrc_link_type_val());
            if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), this.gameId)) {
                setLoadingProgress((int) (downloadTaskG.getProgress() * 0.5d));
                return;
            } else {
                if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), downloadTaskG.getPlugin_num())) {
                    setLoadingProgress(((int) (downloadTaskG.getProgress() * 0.5d)) + 50);
                    return;
                }
                return;
            }
        }
        if (iC == 5 || iC == 11 || iC == 48) {
            DownloadTask downloadTaskG2 = q5.f.M().G(downloadTaskA.getCrc_link_type_val());
            if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), this.gameId)) {
                setLoadingProgress(50);
                startDownloadArchieve(false);
            } else if (TextUtils.equals(downloadTaskA.getCrc_link_type_val(), downloadTaskG2.getPlugin_num())) {
                setLoadingProgress(100);
                startDownloadArchieve(false);
            }
        }
    }

    public void onPlayVideo() {
        String str = com.join.mgps.Util.z.f50171j + "/record/";
        if (this.playBackUrl.isEmpty()) {
            Toast.makeText(this.mActivity, "回放失败！", 0).show();
            finish();
            return;
        }
        String str2 = this.playBackUrl;
        File file = new File(str + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
        if (file.exists()) {
            toRePlayGame(file.getPath());
        } else {
            com.join.android.app.common.http.d.B().a(this.playBackUrl, str, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setLoadingProgress(int p10) {
        if (p10 < 0) {
            p10 = 0;
        }
        if (p10 > 100) {
            p10 = 100;
        }
        int i10 = this.lastProgress;
        if (p10 < i10) {
            p10 = i10;
        }
        int dimensionPixelSize = (getResources().getDimensionPixelSize(R.dimen.wdp1016) * p10) / 100;
        ViewGroup.LayoutParams layoutParams = this.progress.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        this.progress.setLayoutParams(layoutParams);
        this.lastProgress = p10;
        this.tvLoading.setText("正在进入游戏" + p10 + "%");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTost(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startEndGame() {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.removeCallbacks(this.launchProgress);
        this.mHandler.postDelayed(this.launchProgress, 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startPlayBack() {
        if (this.mHandler == null) {
            this.mHandler = new Handler();
        }
        this.mHandler.removeCallbacks(this.playBackRunnable);
        this.mHandler.postDelayed(this.playBackRunnable, 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toRePlayGame(String path) {
        Activity activity = this.mActivity;
        if (UtilsMy.F4(activity, AccountUtil_.getInstance_(activity).getUid(), q5.f.M().G(this.gameId), this.startMode, path, true)) {
            finish();
        } else {
            new Handler().postDelayed(new c(path), 1000L);
        }
    }
}
