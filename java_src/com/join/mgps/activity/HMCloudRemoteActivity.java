package com.join.mgps.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.common.servcie.DownloadBaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.cloud.viewmodel.HMCloudRemoteViewModel;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.service.MessengerService;
import com.xinzhu.overmind.Overmind;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_cloud_box_main)
public class HMCloudRemoteActivity extends DownloadBaseActivity {
    private final String TAG = HMCloudRemoteActivity.class.getSimpleName();
    boolean isInitOm = false;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    TextView tv_launch_status;
    private HMCloudRemoteViewModel viewModel;

    private void initObserver() {
        this.viewModel.v().observe(this, new Observer() { // from class: com.join.mgps.activity.y5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HMCloudRemoteActivity.lambda$initObserver$0((Boolean) obj);
            }
        });
        this.viewModel.x().observe(this, new Observer() { // from class: com.join.mgps.activity.z5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f58279a.lambda$initObserver$1((com.join.mgps.cloud.viewmodel.d) obj);
            }
        });
        this.viewModel.getOrientation().observe(this, new Observer() { // from class: com.join.mgps.activity.a6
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f56460a.lambda$initObserver$2((Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initObserver$0(Boolean bool) {
        if (bool.booleanValue()) {
            com.join.mgps.Util.h1.e("游戏准备完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$1(com.join.mgps.cloud.viewmodel.d dVar) {
        if (dVar instanceof com.join.mgps.cloud.viewmodel.d.a) {
            showDownloadArchiveDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initObserver$2(Integer num) {
        setRequestedOrientation(num.intValue());
    }

    private void setSystemUi() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        }
        if (i10 < 30) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        WindowInsetsController insetsController = getWindow().getInsetsController();
        if (insetsController != null) {
            insetsController.hide(WindowInsets.Type.statusBars());
            insetsController.setSystemBarsBehavior(2);
        }
    }

    private void showDownloadArchiveDialog() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d("请检查网络！");
            return;
        }
        DownloadArchiveDialog downloadArchiveDialog = new DownloadArchiveDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("archive", this.viewModel.s().getValue());
        bundle.putInt(PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, 1);
        bundle.putSerializable("cloud_archive_local_path", this.viewModel.t().getValue());
        downloadArchiveDialog.setArguments(bundle);
        downloadArchiveDialog.show(getSupportFragmentManager(), "downloadArchiveDialog");
    }

    private void testStorageRW() {
        if (Build.VERSION.SDK_INT <= 28 || !this.prefDef.needShowPermissdialog().d().booleanValue()) {
            return;
        }
        try {
            String strG = com.join.mgps.pref.h.n(this).g();
            if (com.join.mgps.Util.t2.i(strG)) {
                File file = new File(strG);
                if (!file.exists()) {
                    if (file.mkdirs()) {
                        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                    }
                } else {
                    File file2 = new File(strG, "test_canwhite.txt");
                    if (file2.exists() ? file2.delete() : file2.createNewFile()) {
                        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        setSystemUi();
        this.prefDef.firstShowUserPermiss().g(Boolean.FALSE);
        com.papa.sim.statistic.pref.b.k(this).F(true);
        com.papa.sim.statistic.pref.b.k(this).L(false);
        initDownloadPath();
        HMCloudRemoteViewModel hMCloudRemoteViewModel = (HMCloudRemoteViewModel) new ViewModelProvider(this).get(HMCloudRemoteViewModel.class);
        this.viewModel = hMCloudRemoteViewModel;
        hMCloudRemoteViewModel.y(this);
        if (TextUtils.isEmpty(n6.a.f94478a.c())) {
            log("游戏信息获取失败");
            finish();
            return;
        }
        initOM();
        getRootUrl();
        CommonService_.P2(getApplicationContext()).a();
        startService(new Intent(this, (Class<?>) MessengerService.class));
        initObserver();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRootUrl() {
        try {
            com.join.android.app.common.http.c.d(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void initDownloadPath() {
        com.join.mgps.Util.z.e(this);
        com.join.mgps.pref.h.n(this).V(com.join.mgps.Util.z.f50166e);
        testStorageRW();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void initOM() {
        if (this.isInitOm) {
            return;
        }
        this.isInitOm = true;
        try {
            com.xinzhu.overmind.shared.k kVar = new com.xinzhu.overmind.shared.k();
            kVar.i(this);
            kVar.h();
            if (com.xinzhu.overmind.utils.e.g()) {
                Overmind.get().setXPEnable(false);
            }
            Overmind.get().getAppLifecycleCallback();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Overmind.get().doCreate();
        if (Overmind.get().isVirtualProcess()) {
            Overmind.get().setCustomCallback(new com.xinzhu.overmind.shared.b());
        }
    }

    void log(String... msg) {
        x5.a(" ", msg);
    }

    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.viewModel.n();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onLocalArchiveUpdate(DownloadArchiveDialog.UpdateLocalArchiveEvent event) {
        this.viewModel.F();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(HMMessage hmMessage) {
        this.viewModel.A(hmMessage);
        this.viewModel.C(this, hmMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.android.app.common.servcie.DownloadBaseActivity, com.join.mgps.activity.MyFragmentActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Boolean bool = Boolean.TRUE;
        if (bool.equals(this.viewModel.v().getValue()) && bool.equals(this.viewModel.r().getValue())) {
            this.viewModel.F();
        }
    }

    @UiThread
    void setTip(String... msg) {
        this.tv_launch_status.setText(x5.a(" ", msg));
    }

    @Override // com.BaseAppCompatActivity
    protected void showDownFinish(String gameid) {
        super.showDownFinish(gameid);
        if (TextUtils.isEmpty(gameid) || TextUtils.isEmpty(n6.a.f94478a.c())) {
            return;
        }
        this.viewModel.F();
    }
}
