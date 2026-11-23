package com.join.mgps.activity;

import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_install_app_dialog_v2)
public class InstallAppDialogV2Activity extends BaseActivity {

    @Extra
    String cover;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView gameImg;
    private DownloadTask task;

    @Extra
    String title;

    @ViewById
    TextView tvDesc;

    @ViewById
    TextView tvGameName;

    @AfterViews
    void afterviews() {
        if (this.gameId == null) {
            finish();
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        this.task = downloadTaskG;
        if (downloadTaskG == null) {
            finish();
        } else {
            updateUI();
        }
    }

    @Click
    void ivClose() {
        finish();
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @Click
    void tvInstall() {
        com.join.android.app.common.utils.g.t0(this).A(this, this.task.getPath());
        finish();
    }

    @UiThread
    void updateUI() {
        this.tvGameName.setText(this.task.getShowName());
        this.tvDesc.setText(this.title);
        com.join.android.app.common.utils.l.q(this.gameImg, this.cover, com.facebook.drawee.drawable.s.c.f27292i);
    }
}
