package com.join.mgps.activity;

import android.widget.Button;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.fc_notice_dialog)
public class GprsNoticeDialogAlphActivity extends BaseActivity {

    @Extra
    EMUApkTable apkTable;

    @ViewById
    Button dialog_button_cancle;

    @ViewById
    Button dialog_button_keep;

    @ViewById
    Button dialog_button_ok;

    @ViewById
    TextView dialog_content;

    @Extra
    DownloadTask downloadTask;

    @Extra
    boolean isUpdate = false;

    @Extra
    String showContent;

    @ViewById
    TextView textView;

    @ViewById
    TextView tip_title;

    @Extra
    UpdateIntentDataBean updateIntentDataBean;

    @AfterViews
    void afterview() {
        if (this.isUpdate) {
            this.tip_title.setText("正在使用流量更新游戏");
            this.dialog_button_ok.setText("马上更新");
        } else {
            this.tip_title.setText("正在使用流量下载");
            this.dialog_button_ok.setText("马上下载");
        }
        this.dialog_content.setText(this.showContent);
        this.textView.setText("可在我的>管理>设置 里修改提醒");
        this.dialog_button_cancle.setText("下次再说");
    }

    @Click
    void dialog_button_cancle() {
        finish();
    }

    @Click
    void dialog_button_ok() {
        EMUApkTable eMUApkTable = this.apkTable;
        if (eMUApkTable != null) {
            UtilsMy.s1(eMUApkTable, this);
        }
        if (this.isUpdate) {
            UtilsMy.u1(this, this.updateIntentDataBean);
        } else {
            com.php25.PDownload.d.f(this.downloadTask, this);
        }
        finish();
    }
}
