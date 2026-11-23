package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUUpdateTable;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.enums.Dtype;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.choice_down_activity)
public class ChociceDownActivity extends BaseActivity {

    @ViewById
    ImageView closeImage;
    Context context;

    @ViewById
    TextView describ;

    @ViewById
    TextView downFrom1;

    @ViewById
    TextView downFrom11;

    @ViewById
    TextView downFrom2;

    @ViewById
    TextView downFrom21;

    @ViewById
    TextView downFrom3;

    @Extra
    DownloadTask downloadTask;

    @Extra
    int from = 0;

    @ViewById
    RelativeLayout layoutq;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    RelativeLayout mPtrFrame;

    @ViewById
    RelativeLayout main;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    TextView title;

    @Extra
    UpdateIntentDataBean updateIntentDataBean;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50453b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f50454c;

        a(final int val$type, final GameDownInfo.Addr1Bean val$addr1Bean) {
            this.f50453b = val$type;
            this.f50454c = val$addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10 = this.f50453b;
            if (i10 == 1) {
                ChociceDownActivity.this.downloadTask.setUrl(this.f50454c.getUrl());
                if (ChociceDownActivity.this.downloadTask.getStatus() == 9) {
                    DownloadTask downloadTask = ChociceDownActivity.this.downloadTask;
                    UtilsMy.W4(downloadTask, downloadTask.getCrc_link_type_val());
                    com.php25.PDownload.d.b(ChociceDownActivity.this.downloadTask);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.downloadTask, chociceDownActivity.context);
                } else if (!ChociceDownActivity.this.downloadTask.getFileType().equals(Dtype.apk.name()) || ChociceDownActivity.this.updateIntentDataBean == null) {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.downloadTask, chociceDownActivity2.context);
                } else {
                    EMUUpdateTable eMUUpdateTableN = t6.q.o().n(ChociceDownActivity.this.downloadTask.getCrc_link_type_val());
                    eMUUpdateTableN.setDown_url_remote(ChociceDownActivity.this.downloadTask.getUrl());
                    t6.q.o().update(eMUUpdateTableN);
                    ChociceDownActivity.this.updateIntentDataBean.getDownloadTask().setUrl(ChociceDownActivity.this.downloadTask.getUrl());
                    UpdateLodingActivity_.intent(ChociceDownActivity.this.context).a(ChociceDownActivity.this.updateIntentDataBean).start();
                }
            } else if (i10 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.updateIntentDataBean == null) {
                    chociceDownActivity3.updateIntentDataBean = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.updateIntentDataBean.setDownloadTask(chociceDownActivity4.downloadTask);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f50454c.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.updateIntentDataBean);
                intentDateBean.setFrom("10");
                if (ChociceDownActivity.this.from == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.context, intentDateBean);
            } else if (i10 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.context, this.f50454c.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50456b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f50457c;

        b(final int val$type, final GameDownInfo.Addr1Bean val$addr1Bean) {
            this.f50456b = val$type;
            this.f50457c = val$addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10 = this.f50456b;
            if (i10 == 1) {
                ChociceDownActivity.this.downloadTask.setUrl(this.f50457c.getUrl());
                if (ChociceDownActivity.this.downloadTask.getStatus() == 9) {
                    DownloadTask downloadTask = ChociceDownActivity.this.downloadTask;
                    UtilsMy.W4(downloadTask, downloadTask.getCrc_link_type_val());
                    com.php25.PDownload.d.b(ChociceDownActivity.this.downloadTask);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.downloadTask, chociceDownActivity.context);
                } else if (!ChociceDownActivity.this.downloadTask.getFileType().equals(Dtype.apk.name()) || ChociceDownActivity.this.updateIntentDataBean == null) {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.downloadTask, chociceDownActivity2.context);
                } else {
                    EMUUpdateTable eMUUpdateTableN = t6.q.o().n(ChociceDownActivity.this.downloadTask.getCrc_link_type_val());
                    eMUUpdateTableN.setDown_url_remote(ChociceDownActivity.this.downloadTask.getUrl());
                    t6.q.o().update(eMUUpdateTableN);
                    ChociceDownActivity.this.updateIntentDataBean.getDownloadTask().setUrl(ChociceDownActivity.this.downloadTask.getUrl());
                    UpdateLodingActivity_.intent(ChociceDownActivity.this.context).a(ChociceDownActivity.this.updateIntentDataBean).start();
                }
            } else if (i10 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.updateIntentDataBean == null) {
                    chociceDownActivity3.updateIntentDataBean = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.updateIntentDataBean.setDownloadTask(chociceDownActivity4.downloadTask);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f50457c.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.updateIntentDataBean);
                intentDateBean.setFrom("10");
                if (ChociceDownActivity.this.from == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.context, intentDateBean);
            } else if (i10 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.context, this.f50457c.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameDownInfo.Addr1Bean f50460c;

        c(final int val$type, final GameDownInfo.Addr1Bean val$addr1Bean) {
            this.f50459b = val$type;
            this.f50460c = val$addr1Bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10 = this.f50459b;
            if (i10 == 1) {
                ChociceDownActivity.this.downloadTask.setUrl(this.f50460c.getUrl());
                if (ChociceDownActivity.this.downloadTask.getStatus() == 9) {
                    DownloadTask downloadTask = ChociceDownActivity.this.downloadTask;
                    UtilsMy.W4(downloadTask, downloadTask.getCrc_link_type_val());
                    com.php25.PDownload.d.b(ChociceDownActivity.this.downloadTask);
                    ChociceDownActivity chociceDownActivity = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity.downloadTask, chociceDownActivity.context);
                } else if (!ChociceDownActivity.this.downloadTask.getFileType().equals(Dtype.apk.name()) || ChociceDownActivity.this.updateIntentDataBean == null) {
                    ChociceDownActivity chociceDownActivity2 = ChociceDownActivity.this;
                    com.php25.PDownload.d.c(chociceDownActivity2.downloadTask, chociceDownActivity2.context);
                } else {
                    EMUUpdateTable eMUUpdateTableN = t6.q.o().n(ChociceDownActivity.this.downloadTask.getCrc_link_type_val());
                    eMUUpdateTableN.setDown_url_remote(ChociceDownActivity.this.downloadTask.getUrl());
                    t6.q.o().update(eMUUpdateTableN);
                    ChociceDownActivity.this.updateIntentDataBean.getDownloadTask().setUrl(ChociceDownActivity.this.downloadTask.getUrl());
                    UpdateLodingActivity_.intent(ChociceDownActivity.this.context).a(ChociceDownActivity.this.updateIntentDataBean).start();
                }
            } else if (i10 == 2) {
                ChociceDownActivity chociceDownActivity3 = ChociceDownActivity.this;
                if (chociceDownActivity3.updateIntentDataBean == null) {
                    chociceDownActivity3.updateIntentDataBean = new UpdateIntentDataBean();
                    ChociceDownActivity chociceDownActivity4 = ChociceDownActivity.this;
                    chociceDownActivity4.updateIntentDataBean.setDownloadTask(chociceDownActivity4.downloadTask);
                }
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f50460c.getUrl());
                intentDateBean.setObject(ChociceDownActivity.this.updateIntentDataBean);
                intentDateBean.setFrom("10");
                if (ChociceDownActivity.this.from == 11) {
                    intentDateBean.setFrom("11");
                }
                IntentUtil.getInstance().intentActivity(ChociceDownActivity.this.context, intentDateBean);
            } else if (i10 == 3) {
                IntentUtil.getInstance().goBrowser(ChociceDownActivity.this.context, this.f50460c.getUrl());
            }
            ChociceDownActivity.this.finish();
        }
    }

    private void startDownGameByH5(String url) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type_val(url);
        intentDateBean.setFrom("10");
        intentDateBean.setObject(this.downloadTask);
        ShareWebActivity_.intent(this.context).b(intentDateBean).start();
    }

    @AfterViews
    void afterviews() {
        this.context = this;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        if (this.downloadTask == null && this.updateIntentDataBean == null) {
            com.join.mgps.Util.a3.b(this.context).d("下载数据为空");
            return;
        }
        try {
            if (this.from == 12) {
                EMUUpdateTable eMUUpdateTableN = t6.q.o().n(this.downloadTask.getCrc_link_type_val());
                eMUUpdateTableN.setDown_url_remote(this.downloadTask.getUrl());
                t6.q.o().update(eMUUpdateTableN);
                this.downloadTask.setVer(eMUUpdateTableN.getVer());
                this.downloadTask.setVer_name(eMUUpdateTableN.getVer_name());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        int i10 = this.from;
        if (i10 == 0 || i10 == 11) {
            showLoding();
            getData();
        } else {
            this.layoutq.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        }
    }

    @Click
    void closeImage() {
        finish();
    }

    @Click
    void closeImage1() {
        finish();
    }

    @Click
    void downFrom11() {
        UpdateIntentDataBean updateIntentDataBean;
        UpdateIntentDataBean updateIntentDataBean2;
        if (this.downloadTask == null && (updateIntentDataBean2 = this.updateIntentDataBean) != null) {
            this.downloadTask = updateIntentDataBean2.getDownloadTask();
        }
        finish();
        Intent intent = new Intent();
        intent.setAction(p5.a.f96196g0);
        this.context.sendBroadcast(intent);
        if (this.from != 12) {
            com.php25.PDownload.d.c(this.downloadTask, this);
            return;
        }
        if (!this.downloadTask.getFileType().equals(Dtype.apk.name()) || (updateIntentDataBean = this.updateIntentDataBean) == null) {
            UtilsMy.N0(q5.f.M().G(this.downloadTask.getCrc_link_type_val()));
            com.php25.PDownload.d.c(this.downloadTask, this.context);
        } else {
            updateIntentDataBean.getDownloadTask().setUrl(this.downloadTask.getUrl());
            UpdateLodingActivity_.intent(this.context).a(this.updateIntentDataBean).start();
        }
    }

    @Click
    void downFrom21() {
        UpdateIntentDataBean updateIntentDataBean;
        try {
            finish();
            Intent intent = new Intent();
            intent.setAction(p5.a.f96196g0);
            this.context.sendBroadcast(intent);
            if (this.downloadTask == null && (updateIntentDataBean = this.updateIntentDataBean) != null) {
                this.downloadTask = updateIntentDataBean.getDownloadTask();
            }
            IntentUtil.getInstance().goBrowser(this.context, this.downloadTask.getUrl());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showLodingFailed();
            return;
        }
        try {
            ResultMainBean<GameDownInfo> resultMainBeanO = this.rpcClient.O(RequestBeanUtil.getInstance(this.context).getSimulatorRequest("", this.downloadTask.getCrc_link_type_val(), 0));
            if (resultMainBeanO == null || resultMainBeanO.getFlag() != 1 || resultMainBeanO.getMessages().getData() == null) {
                showLodingFailed();
            } else {
                showMain(resultMainBeanO.getMessages().getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(GameDownInfo downInfo) {
        try {
            this.loding_faile.setVisibility(8);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(0);
            this.title.setText(downInfo.getTitle());
            this.describ.setText(downInfo.getSub_title());
            int lv_type = downInfo.getLv_type();
            List<GameDownInfo.Addr1Bean> down_url = downInfo.getDown_url();
            this.downFrom1.setVisibility(8);
            this.downFrom2.setVisibility(8);
            this.downFrom3.setVisibility(8);
            for (int i10 = 0; i10 < down_url.size(); i10++) {
                GameDownInfo.Addr1Bean addr1Bean = down_url.get(i10);
                if (i10 == 0) {
                    this.downFrom1.setText(addr1Bean.getTitle());
                    this.downFrom1.setVisibility(0);
                    this.downFrom1.setOnClickListener(new a(lv_type, addr1Bean));
                }
                if (i10 == 1) {
                    this.downFrom2.setText(addr1Bean.getTitle());
                    this.downFrom2.setVisibility(0);
                    this.downFrom2.setOnClickListener(new b(lv_type, addr1Bean));
                }
                if (i10 == 2) {
                    this.downFrom3.setText(addr1Bean.getTitle());
                    this.downFrom3.setVisibility(0);
                    this.downFrom3.setOnClickListener(new c(lv_type, addr1Bean));
                }
            }
        } catch (Exception unused) {
        }
    }
}
