package com.join.mgps.activity;

import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.Filepath;
import com.join.mgps.pref.PrefDef_;
import com.uc.crashsdk.export.LogType;
import java.io.File;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_online_game_install_check)
public class OnlineGameInstallCheckActivity extends BaseAppCompatActivity {
    private c checkAdapter;
    private CountDownTimer countDownTimer;

    @Extra
    String gameId;
    private boolean hasDestroyed;

    @ViewById
    View header;

    @ViewById
    SimpleDraweeView ivGameIcon;
    private ArrayList<d> list;

    @Pref
    PrefDef_ pref;

    @ViewById
    ProgressBar progress;

    @ViewById
    RecyclerView rvCheck;
    private DownloadTask task;

    @ViewById
    TextView tvBtnInstall;

    @ViewById
    TextView tvGameName;

    @ViewById
    TextView tvInstallCount;
    private int net_game_count_down = 5000;
    private int currentCheckingIndex = 0;
    Handler handler = new Handler();
    Runnable runnable = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((d) OnlineGameInstallCheckActivity.this.list.get(OnlineGameInstallCheckActivity.this.currentCheckingIndex)).e(true);
                OnlineGameInstallCheckActivity.this.checkAdapter.notifyItemChanged(OnlineGameInstallCheckActivity.this.currentCheckingIndex);
                OnlineGameInstallCheckActivity onlineGameInstallCheckActivity = OnlineGameInstallCheckActivity.this;
                onlineGameInstallCheckActivity.rvCheck.smoothScrollToPosition(onlineGameInstallCheckActivity.currentCheckingIndex);
                OnlineGameInstallCheckActivity onlineGameInstallCheckActivity2 = OnlineGameInstallCheckActivity.this;
                onlineGameInstallCheckActivity2.progress.setProgress(onlineGameInstallCheckActivity2.currentCheckingIndex);
                OnlineGameInstallCheckActivity.access$008(OnlineGameInstallCheckActivity.this);
                if (OnlineGameInstallCheckActivity.this.currentCheckingIndex < OnlineGameInstallCheckActivity.this.list.size()) {
                    OnlineGameInstallCheckActivity.this.handler.postDelayed(this, 350L);
                } else {
                    OnlineGameInstallCheckActivity.this.checkFinished();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                OnlineGameInstallCheckActivity.this.checkFinished();
            }
        }
    }

    class b extends CountDownTimer {
        b(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            OnlineGameInstallCheckActivity.this.tvBtnInstall.setText("立即安装");
            OnlineGameInstallCheckActivity.this.install();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            OnlineGameInstallCheckActivity.this.tvBtnInstall.setText("立即安装 " + (millisUntilFinished / 1000) + "秒");
        }
    }

    class c extends BaseQuickAdapter<d, com.join.mgps.base.b> {
        public c() {
            super(R.layout.item_online_check_list, OnlineGameInstallCheckActivity.this.list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, d item) {
            helper.setImageResource(R.id.ivIcon, item.b()).setText(R.id.tvTitle, item.c()).setText(R.id.tvCheckedInfo, item.a()).setVisible(R.id.groupChecked, item.d()).setVisible(R.id.divider, helper.getLayoutPosition() < OnlineGameInstallCheckActivity.this.list.size() - 1);
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f55224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f55225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f55226c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f55227d;

        public d(int iconRes, String title, String checkedInfo, boolean isChecked) {
            this.f55224a = iconRes;
            this.f55225b = title;
            this.f55226c = checkedInfo;
            this.f55227d = isChecked;
        }

        public String a() {
            return this.f55226c;
        }

        public int b() {
            return this.f55224a;
        }

        public String c() {
            return this.f55225b;
        }

        public boolean d() {
            return this.f55227d;
        }

        public void e(boolean checked) {
            this.f55227d = checked;
        }

        public void f(String checkedInfo) {
            this.f55226c = checkedInfo;
        }

        public void g(int iconRes) {
            this.f55224a = iconRes;
        }

        public void h(String title) {
            this.f55225b = title;
        }
    }

    static /* synthetic */ int access$008(OnlineGameInstallCheckActivity onlineGameInstallCheckActivity) {
        int i10 = onlineGameInstallCheckActivity.currentCheckingIndex;
        onlineGameInstallCheckActivity.currentCheckingIndex = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFinished() {
        if (this.hasDestroyed) {
            return;
        }
        this.progress.setProgress(this.list.size());
        this.countDownTimer = new b(this.net_game_count_down + 200, 1000L).start();
        this.tvBtnInstall.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.f8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57216b.lambda$checkFinished$0(view);
            }
        });
    }

    private String getAvailableStorage() {
        try {
            for (Filepath filepath : com.join.mgps.Util.f2.a(this)) {
                String path = "";
                if (com.join.mgps.Util.t2.i(this.task.getGameZipPath())) {
                    path = this.task.getGameZipPath();
                } else if (com.join.mgps.Util.t2.i(this.task.getPath())) {
                    path = this.task.getPath();
                }
                if (path.contains(filepath.getPathRoot())) {
                    return UtilsMy.c(filepath.getAvailable());
                }
            }
            return "无可用空间";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "无可用空间";
        }
    }

    private int getPermissionCount() {
        String[] strArr;
        try {
            PackageInfo packageArchiveInfo = getPackageManager().getPackageArchiveInfo(this.task.getPath(), 4096);
            if (packageArchiveInfo == null || (strArr = packageArchiveInfo.requestedPermissions) == null) {
                return 0;
            }
            return strArr.length;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private void initRecyclerview() {
        ArrayList<d> arrayList = new ArrayList<>();
        this.list = arrayList;
        arrayList.add(new d(R.drawable.ic_check_apk, "Apk完整性检测", UtilsMy.c(this.task.getSize()), false));
        this.list.add(new d(R.drawable.ic_check_brand, "手机兼容性", Build.BRAND, false));
        this.list.add(new d(R.drawable.ic_check_android, "系统兼容性", "Android" + Build.VERSION.RELEASE, false));
        this.list.add(new d(R.drawable.ic_check_storage, "剩余存储空间", getAvailableStorage(), false));
        this.list.add(new d(R.drawable.ic_check_virus, "恶意插件检测", "无", false));
        this.list.add(new d(R.drawable.ic_check_permission, "权限检测", getPermissionCount() + "项权限", false));
        this.rvCheck.setLayoutManager(new LinearLayoutManager(this));
        c cVar = new c();
        this.checkAdapter = cVar;
        this.rvCheck.setAdapter(cVar);
        this.progress.setMax(this.list.size());
        this.handler.postDelayed(this.runnable, 350L);
    }

    private void initView() {
        if (this.gameId == null) {
            showToast("gameId为空");
            finish();
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        this.task = downloadTaskG;
        if (downloadTaskG == null) {
            showToast("获取下载任务失败");
            finish();
            return;
        }
        com.join.android.app.common.utils.l.o(this.ivGameIcon, downloadTaskG.getPortraitURL());
        this.tvGameName.setText(this.task.getShowName());
        this.tvBtnInstall.setText("立即安装");
        SpannableString spannableString = new SpannableString("过去2小时内已有" + ((int) ((Math.random() * 500.0d) + 300.0d)) + "人通过悟饭安装此游戏");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FF2E2E")), 8, 11, 33);
        this.tvInstallCount.setText(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void install() {
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.runnable);
        }
        if (this.hasDestroyed) {
            return;
        }
        com.join.android.app.common.utils.g.t0(this).C(this, new File(this.task.getPath()));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkFinished$0(View view) {
        install();
    }

    @AfterViews
    void afterviews() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        this.net_game_count_down = this.pref.net_game_count_down().d().intValue() > 0 ? this.pref.net_game_count_down().d().intValue() : 5000;
        initView();
        initRecyclerview();
    }

    @Click
    void back_image() {
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.hasDestroyed = true;
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }
}
