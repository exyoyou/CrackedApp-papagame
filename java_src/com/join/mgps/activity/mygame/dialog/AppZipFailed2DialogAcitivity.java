package com.join.mgps.activity.mygame.dialog;

import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.php25.PDownload.d;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import p5.a;
import q5.f;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.appdown_unzipfailed_dialog_layout)
public class AppZipFailed2DialogAcitivity extends BaseActivity {

    @ViewById
    ImageView cancle;
    DownloadTask downloadTask;

    @Extra
    String gameId;

    @ViewById
    SimpleDraweeView icon;

    @ViewById
    TextView info;
    boolean isSo = false;

    @ViewById
    TextView ok;

    @ViewById
    TextView title;

    @AfterViews
    void afterViews() {
        DownloadTask downloadTaskG = f.M().G(this.gameId);
        this.downloadTask = downloadTaskG;
        if (downloadTaskG == null) {
            finish();
            return;
        }
        this.title.setText(downloadTaskG.getShowName());
        l.h(this.icon, this.downloadTask.getPortraitURL());
        d.a(this.downloadTask);
        Intent intent = new Intent(a.f96204k0);
        intent.putExtra("downloadTastJson", JsonMapper.getInstance().toJson(this.downloadTask));
        sendBroadcast(intent);
    }

    @Click
    void cancle() {
        finish();
    }

    @Click
    void ok() {
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
