package com.join.kotlin.quark;

import android.os.Bundle;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.b4;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.quark.proxy.QuarkInstallClickProxy;
import com.join.kotlin.quark.viewmodel.QuarkInstallViewModel;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p2;
import com.join.mgps.service.CommonService_;
import com.papa91.arc.ext.ToastManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0014J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0017J\u0018\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0012\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u001d\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u001e\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u001f\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010 \u001a\u00020\u000eH\u0002J\b\u0010!\u001a\u00020\u000eH\u0016J\b\u0010\"\u001a\u00020\u000eH\u0002J\b\u0010#\u001a\u00020\u000eH\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006$"}, d2 = {"Lcom/join/kotlin/quark/QuarkInstallActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/quark/viewmodel/QuarkInstallViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkInstallBinding;", "Lcom/join/kotlin/quark/proxy/QuarkInstallClickProxy;", "<init>", "()V", "quarkTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getQuarkTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setQuarkTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "onCloseClick", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updateUI", "downloadTask", "from", "", "receiveStart", "task", "receiveDelete", "receiveSuccess", "receiveError", "updateProgressPartly", "onInstallClick", "downloadQuark", "onDestroy", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuarkInstallActivity extends BaseVmDbDialogActivity<QuarkInstallViewModel, b4> implements QuarkInstallClickProxy {

    @Nullable
    private DownloadTask quarkTask;

    /* JADX WARN: Multi-variable type inference failed */
    private final void downloadQuark() {
        DownloadTask downloadTaskG = q5.f.M().G(d2.f49546d);
        if (downloadTaskG != null && downloadTaskG.getStatus() == 11) {
            com.join.android.app.common.utils.g.t0(this).A(this, downloadTaskG.getGameZipPath());
        } else {
            ToastManager.show("夸克下载中...");
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this).extra("action", "downloadQuark")).extra("isOm", false)).extra("qkPosition", "qk")).a();
        }
    }

    private final void receiveDelete(DownloadTask task) {
        if (task != null && Intrinsics.areEqual(d2.f49546d, task.getCrc_link_type_val())) {
            ToastManager.show("下载文件已删除");
            getMDatabind().f36217c.setVisibility(8);
            getMDatabind().f36219e.setBackgroundResource(R.drawable.shape_489cff_r8);
            getMDatabind().f36219e.setText("安装夸克");
        }
    }

    private final void receiveError(DownloadTask task) {
        if (task == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(task.getCrc_link_type_val()) || !Intrinsics.areEqual(task.getCrc_link_type_val(), d2.f49546d)) {
                return;
            }
            getMDatabind().f36217c.setVisibility(8);
            getMDatabind().f36219e.setBackgroundResource(R.drawable.shape_489cff_r8);
            getMDatabind().f36219e.setText("安装夸克");
            UtilsMy.U4(task);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void receiveStart(DownloadTask task) {
        if (task != null && Intrinsics.areEqual(d2.f49546d, task.getCrc_link_type_val())) {
            this.quarkTask = task;
            getMDatabind().f36217c.setVisibility(0);
            getMDatabind().f36219e.setBackgroundResource(R.drawable.transparent_bg);
            getMDatabind().f36219e.setText("下载中...");
        }
    }

    private final void receiveSuccess(DownloadTask task) {
        if (task != null && Intrinsics.areEqual(d2.f49546d, task.getCrc_link_type_val())) {
            getMDatabind().f36217c.setProgress(100);
            getMDatabind().f36217c.setVisibility(8);
            getMDatabind().f36219e.setBackgroundResource(R.drawable.shape_489cff_r8);
            getMDatabind().f36219e.setText("安装夸克");
        }
    }

    private final void updateProgressPartly() {
        DownloadTask downloadTask = this.quarkTask;
        if (downloadTask != null) {
            Intrinsics.checkNotNull(downloadTask);
            if (downloadTask.getStatus() != 2) {
                DownloadTask downloadTask2 = this.quarkTask;
                Intrinsics.checkNotNull(downloadTask2);
                if (downloadTask2.getStatus() != 12) {
                    return;
                }
            }
            try {
                DownloadTask downloadTask3 = this.quarkTask;
                Intrinsics.checkNotNull(downloadTask3);
                if (Intrinsics.areEqual(d2.f49546d, downloadTask3.getCrc_link_type_val())) {
                    com.join.android.app.common.servcie.j jVarF = com.join.android.app.common.servcie.j.f();
                    DownloadTask downloadTask4 = this.quarkTask;
                    Intrinsics.checkNotNull(downloadTask4);
                    DownloadTask downloadTaskG = jVarF.g(downloadTask4.getCrc_link_type_val());
                    if (downloadTaskG != null) {
                        getMDatabind().f36217c.setProgress((int) downloadTaskG.getProgress());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
    }

    @Nullable
    public final DownloadTask getQuarkTask() {
        return this.quarkTask;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        p2.v(this);
        getMDatabind().u((QuarkInstallViewModel) getMViewModel());
        getMDatabind().t(this);
        com.join.mgps.Util.j0.a().d(this);
        this.quarkTask = q5.f.M().G(d2.f49546d);
    }

    @Override // com.join.kotlin.quark.proxy.QuarkInstallClickProxy
    public void onCloseClick() {
        finish();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(@NotNull com.join.mgps.event.r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        switch (downloadTaskEvent.c()) {
            case 2:
                updateUI(downloadTaskA, 1);
                break;
            case 3:
                updateUI(downloadTaskA, 2);
                break;
            case 5:
                updateUI(downloadTaskA, 5);
                break;
            case 6:
                updateUI(downloadTaskA, 6);
                break;
            case 7:
                updateUI(downloadTaskA, 3);
                break;
            case 8:
                if (this.quarkTask == null && downloadTaskA != null && Intrinsics.areEqual(d2.f49546d, downloadTaskA.getCrc_link_type_val())) {
                    this.quarkTask = downloadTaskA;
                }
                updateProgressPartly();
                break;
            case 10:
                updateUI(downloadTaskA, 7);
                break;
            case 11:
                updateUI(downloadTaskA, 5);
                if (downloadTaskA != null && Intrinsics.areEqual(d2.f49546d, downloadTaskA.getCrc_link_type_val())) {
                    getMDatabind().f36217c.setVisibility(8);
                    UtilsMy.w4(this.quarkTask, this);
                    break;
                }
                break;
            case 12:
                updateUI(downloadTaskA, 8);
                break;
            case 13:
                updateUI(downloadTaskA, 9);
                break;
        }
    }

    @Override // com.join.kotlin.quark.proxy.QuarkInstallClickProxy
    public void onInstallClick() {
        downloadQuark();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
        if (APKUtils.g(com.join.android.app.common.utils.g.t0(this), this, d2.f49544b, null, 4, null)) {
            finish();
        }
    }

    public final void setQuarkTask(@Nullable DownloadTask downloadTask) {
        this.quarkTask = downloadTask;
    }

    public final void updateUI(@Nullable DownloadTask downloadTask, int from) {
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
