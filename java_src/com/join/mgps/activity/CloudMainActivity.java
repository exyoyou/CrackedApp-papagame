package com.join.mgps.activity;

import android.content.Intent;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.GameWorldResponse;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud_main)
public class CloudMainActivity extends BaseActivity {

    @Bean
    com.join.mgps.Util.b accountUtil;

    @ViewById
    TextView cloudRom;
    List<DownloadTask> downloadTasks;

    @ViewById
    TextView localRom;
    com.join.mgps.dialog.f1 mDialog = null;
    int romArchivedsSize;
    int romCloudSize;
    com.join.mgps.rpc.l rpcAccountClient;

    @AfterViews
    void afterView() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
    }

    @Click
    void backups() {
        startActivity(new Intent(this, (Class<?>) CloudActivity_.class));
    }

    @UiThread
    void closeDialog() {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var != null) {
            f1Var.dismiss();
        }
    }

    @Click
    void cloudRom() {
        startActivity(new Intent(this, (Class<?>) CloudDownloadListActivity_.class));
    }

    @Background
    void getData() {
        showDialog();
        this.downloadTasks = q5.f.M().u();
        for (int i10 = 0; i10 < this.downloadTasks.size(); i10++) {
            DownloadTask downloadTask = this.downloadTasks.get(i10);
            this.romArchivedsSize += com.join.mgps.Util.o3.m(downloadTask.getPlugin_num(), downloadTask.getGameZipPath()).size();
        }
        GameWorldResponse<CloudList> gameWorldResponseO = this.rpcAccountClient.o(AccountUtil_.getInstance_(this).getAccountData().getUid(), AccountUtil_.getInstance_(this).getAccountData().getToken());
        if (gameWorldResponseO.getError() == 0) {
            this.romCloudSize = gameWorldResponseO.getData().getBackup_list().size();
        }
        updateUI();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getData();
    }

    @UiThread
    void showDialog() {
        com.join.mgps.dialog.f1 f1Var = this.mDialog;
        if (f1Var == null) {
            this.mDialog = com.join.mgps.Util.h0.h0(this).A(this, false);
        } else if (f1Var.isShowing()) {
            return;
        }
        this.mDialog.show();
    }

    @UiThread
    void updateUI() {
        closeDialog();
        this.localRom.setText("本地存档: " + this.romArchivedsSize + "个");
        this.cloudRom.setText("云端存档: " + this.romCloudSize + "个");
    }
}
