package com.join.mgps.activity;

import android.widget.ListView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudRecord;
import com.join.mgps.dto.GameWorldResponse;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud_download_list)
public class CloudDownloadListActivity extends BaseActivity {

    @Extra
    DownloadTask downloadTask;

    @ViewById
    ListView listview;
    List<CloudRecord> ridList;
    com.join.mgps.rpc.l rpcAccountClient;

    @AfterViews
    void afterView() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
    }

    @Background
    void getData() {
        GameWorldResponse<CloudList> gameWorldResponseO = this.rpcAccountClient.o(AccountUtil_.getInstance_(this).getAccountData().getUid(), AccountUtil_.getInstance_(this).getAccountData().getToken());
        if (gameWorldResponseO.getError() == 0) {
            this.ridList = gameWorldResponseO.getData().getBackup_list();
        }
    }
}
