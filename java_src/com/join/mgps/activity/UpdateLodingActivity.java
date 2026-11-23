package com.join.mgps.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.UpdateIntentDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.UpdateLodingService;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.update_loding_layout)
public class UpdateLodingActivity extends BaseActivity implements UpdateLodingService.d {
    private boolean activityHasDestroy = false;
    private ServiceConnection conn = new a();
    Context context;
    private UpdateLodingService countService;
    private int downloadType;
    EMUApkTable emuApkTable;
    boolean isFight;

    @ViewById
    ImageView lodingBackImage;
    private UpdateLodingService.d lodingMessage;
    int matchOrLocal;
    private boolean peizhiMustUpdate;
    boolean peizhiNewUpdate;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    ProgressBar progressBar;

    @ViewById
    TextView progressmessage;
    boolean romeMustUpdate;
    boolean romeNewUpdate;
    private UpdateLodingService.c serviceBinder;
    DownloadTask simpleDownloadTask;
    private boolean sourceMustUpdate;
    boolean sourceNewUpdate;

    @ViewById
    ProgressBar uZIPLoading;

    @Extra
    UpdateIntentDataBean updateIntentDataBean;

    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            UpdateLodingService.c cVar = (UpdateLodingService.c) service;
            UpdateLodingActivity.this.serviceBinder = cVar;
            UpdateLodingActivity.this.countService = cVar.getService();
            UpdateLodingActivity.this.countService.l(UpdateLodingActivity.this);
            UpdateLodingActivity updateLodingActivity = UpdateLodingActivity.this;
            if (updateLodingActivity.romeNewUpdate) {
                updateLodingActivity.downloadType = 0;
                UpdateLodingActivity.this.serviceBinder.setDownData(UpdateLodingActivity.this.simpleDownloadTask.getCrc_link_type_val(), 0);
            } else if (updateLodingActivity.peizhiNewUpdate) {
                updateLodingActivity.downloadType = 1;
                UpdateLodingActivity.this.serviceBinder.setDownData(UpdateLodingActivity.this.simpleDownloadTask.getCrc_link_type_val(), 1);
            } else if (updateLodingActivity.sourceNewUpdate) {
                updateLodingActivity.downloadType = 2;
                UpdateLodingActivity.this.serviceBinder.setDownData(UpdateLodingActivity.this.simpleDownloadTask.getCrc_link_type_val(), 2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            UpdateLodingActivity.this.countService = null;
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56329b;

        b(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56329b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56329b.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56331b;

        c(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56331b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56331b.dismiss();
            UtilsMy.N3(UpdateLodingActivity.this.context);
            UpdateLodingActivity.this.finish();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56333b;

        d(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56333b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56333b.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56335b;

        e(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56335b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56335b.dismiss();
            UtilsMy.N3(UpdateLodingActivity.this.context);
            UpdateLodingActivity.this.finish();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56337b;

        f(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56337b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56337b.dismiss();
            UpdateLodingActivity.this.finish();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56339b;

        g(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56339b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56339b.dismiss();
            UtilsMy.N3(UpdateLodingActivity.this.context);
            UpdateLodingActivity.this.finish();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56341b;

        h(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56341b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56341b.dismiss();
            UpdateLodingActivity.this.countService.k();
            UpdateLodingActivity.this.finish();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.t0 f56343b;

        i(final com.join.mgps.dialog.t0 val$disconnectDialog) {
            this.f56343b = val$disconnectDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56343b.dismiss();
        }
    }

    private void startGameAndFinishActivity() {
        finishUpdateActivity();
    }

    @AfterViews
    void afterView() {
        this.context = this;
        if (this.romeMustUpdate || this.peizhiMustUpdate || this.sourceMustUpdate) {
            com.join.mgps.Util.a3.b(this).d("需要更新完才能进入游戏。");
        }
        this.simpleDownloadTask = this.updateIntentDataBean.getDownloadTask();
        this.romeNewUpdate = this.updateIntentDataBean.isRomeNewUpdate();
        this.peizhiNewUpdate = this.updateIntentDataBean.isPeizhiNewUpdate();
        this.sourceNewUpdate = this.updateIntentDataBean.isSourceNewUpdate();
        this.emuApkTable = this.updateIntentDataBean.getEmuApkTable();
        this.isFight = this.updateIntentDataBean.isFight();
        this.romeMustUpdate = this.updateIntentDataBean.isRomeMustUpdate();
        this.peizhiMustUpdate = this.updateIntentDataBean.isPeizhiMustUpdate();
        this.sourceMustUpdate = this.updateIntentDataBean.isSourceMustUpdate();
        String str = this.simpleDownloadTask.getSource_down_path() + "/platform_pic_loading.jpg";
        if (new File(str).exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 2;
            this.lodingBackImage.setImageBitmap(BitmapFactory.decodeFile(str, options));
        } else {
            this.lodingBackImage.setImageResource(R.drawable.updateloding);
        }
        bindService(new Intent(this.context, (Class<?>) UpdateLodingService.class), this.conn, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishUpdateActivity() {
        if (this.activityHasDestroy) {
            return;
        }
        if (!this.isFight && this.simpleDownloadTask.getDown_status() != 5) {
            IntentUtil.getInstance().goGameMainActivity(this.context, this.simpleDownloadTask.getCrc_link_type_val(), "");
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        com.join.mgps.dialog.t0 t0VarU = com.join.mgps.Util.h0.h0(this.context).u(this.context);
        t0VarU.show();
        t0VarU.j("停止更新？");
        t0VarU.f("退出后需重新更新游戏。");
        t0VarU.i("继续更新");
        t0VarU.e("退出");
        t0VarU.d(new h(t0VarU));
        t0VarU.h(new i(t0VarU));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.activityHasDestroy = true;
        unbindService(this.conn);
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0153  */
    /* JADX WARN: Code duplicated, block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // com.join.mgps.service.UpdateLodingService.d
    public void update(int msgWhat, Object messageObj) {
        boolean z10 = false;
        if (msgWhat == 0) {
            Toast.makeText(this.context, messageObj.toString(), 0).show();
            return;
        }
        if (msgWhat == 1) {
            Bundle bundle = (Bundle) messageObj;
            int i10 = bundle.getInt("startOrEnd");
            String string = bundle.getString("message");
            if (i10 == 0) {
                this.uZIPLoading.setVisibility(8);
                this.progressmessage.setText(string);
                return;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.uZIPLoading.setVisibility(0);
                this.progressmessage.setText(string);
                return;
            }
        }
        if (msgWhat == 2) {
            this.progressBar.setProgress(100);
            int i11 = this.downloadType;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        com.join.mgps.Util.a3.b(this.context).d("更新完成");
                    }
                } else if (this.sourceNewUpdate) {
                    this.downloadType = 2;
                    this.serviceBinder.setDownData(this.simpleDownloadTask.getCrc_link_type_val(), 2);
                } else {
                    com.join.mgps.Util.a3.b(this.context).d("更新完成");
                }
                if (z10) {
                    startGameAndFinishActivity();
                    return;
                }
                return;
            }
            com.join.mgps.Util.a3.b(this.context).d("更新完成");
            z10 = true;
            if (z10) {
                startGameAndFinishActivity();
                return;
            }
            return;
        }
        if (msgWhat == 3) {
            Bundle bundle2 = (Bundle) messageObj;
            int i12 = bundle2.getInt("percent");
            long j10 = bundle2.getLong("totalSize");
            long j11 = bundle2.getLong("completeSize");
            this.progressBar.setProgress(i12);
            try {
                this.progressmessage.setText("正在更新游戏资源(" + UtilsMy.c(j11) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10) + ")");
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (msgWhat != 4) {
            return;
        }
        int i13 = this.downloadType;
        if (i13 == 0 && this.romeMustUpdate) {
            com.join.mgps.dialog.t0 t0VarU = com.join.mgps.Util.h0.h0(this.context).u(this.context);
            t0VarU.show();
            t0VarU.j("更新失败");
            t0VarU.f(messageObj.toString());
            t0VarU.i("网络设置");
            t0VarU.e("退出");
            t0VarU.d(new b(t0VarU));
            t0VarU.h(new c(t0VarU));
            return;
        }
        if (i13 == 1 && this.peizhiMustUpdate) {
            com.join.mgps.dialog.t0 t0VarU2 = com.join.mgps.Util.h0.h0(this.context).u(this.context);
            t0VarU2.show();
            t0VarU2.j("更新失败");
            t0VarU2.f(messageObj.toString());
            t0VarU2.i("网络设置");
            t0VarU2.e("退出");
            t0VarU2.d(new d(t0VarU2));
            t0VarU2.h(new e(t0VarU2));
            return;
        }
        if (i13 != 2 || !this.sourceMustUpdate) {
            startGameAndFinishActivity();
            return;
        }
        com.join.mgps.dialog.t0 t0VarU3 = com.join.mgps.Util.h0.h0(this.context).u(this.context);
        t0VarU3.show();
        t0VarU3.j("更新失败");
        t0VarU3.f(messageObj.toString());
        t0VarU3.i("网络设置");
        t0VarU3.e("退出");
        t0VarU3.d(new f(t0VarU3));
        t0VarU3.h(new g(t0VarU3));
    }
}
