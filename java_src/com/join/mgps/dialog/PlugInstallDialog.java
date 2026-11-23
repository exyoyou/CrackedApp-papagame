package com.join.mgps.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.enums.ConstantIntEnum;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EActivity
public class PlugInstallDialog extends BaseAppCompatActivity implements View.OnClickListener {
    private Context context;

    @Extra
    DownloadTask downloadTask;
    private ImageView icon;
    private TextView skip;
    private int state = 0;

    @Extra
    int status;
    private TextView subTitle;
    private TextView submit;

    @Extra
    EMUApkTable table;
    private TextView title;

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.j0.a().d(this);
    }

    public void dismiss(String tagId) {
        EMUApkTable eMUApkTable;
        if (TextUtils.isEmpty(tagId) || (eMUApkTable = this.table) == null) {
            dismiss();
        } else if (eMUApkTable.getTag_id().equals(tagId)) {
            dismiss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.skip) {
            dismiss();
            DownloadTask downloadTask = this.downloadTask;
            if (downloadTask != null) {
                UtilsMy.l4(this.context, downloadTask, 1);
                return;
            }
            return;
        }
        if (id2 == R.id.submit) {
            int i10 = this.state;
            if (i10 != 1) {
                if (i10 == 3) {
                    dismiss();
                    return;
                }
                return;
            }
            setInstalling();
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(this.downloadTask.getPlugin_num()));
            if (downloadTaskC0.getStatus() == 11 && downloadTaskC0.getDown_type() == 2) {
                com.join.android.app.common.servcie.j.f().w(this, downloadTaskC0);
            } else {
                UtilsMy.q1(this.table, this.context);
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.join.mgps.Util.p2.r(this, 570425344, false);
        this.context = this;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_emu_plugin_dialog, (ViewGroup) null);
        this.icon = (ImageView) viewInflate.findViewById(R.id.icon);
        this.submit = (TextView) viewInflate.findViewById(R.id.submit);
        this.skip = (TextView) viewInflate.findViewById(R.id.skip);
        this.title = (TextView) viewInflate.findViewById(R.id.title);
        this.subTitle = (TextView) viewInflate.findViewById(R.id.subTitle);
        this.skip.setVisibility(8);
        this.submit.setOnClickListener(this);
        this.skip.setOnClickListener(this);
        setContentView(viewInflate);
        int i10 = this.status;
        if (i10 == 1 || i10 == 2) {
            setPreDownloaded();
        } else {
            setInstalling();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        if (downloadTaskA != null && downloadTaskA.getStatus() == 5) {
            setFinished();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
    }

    public void setFinished() {
        String str;
        this.icon.setBackgroundResource(R.drawable.emu_f_complete);
        this.submit.setText("完成");
        this.submit.setBackgroundResource(R.drawable.shape_plug_btn_bg);
        this.submit.setEnabled(true);
        this.skip.setVisibility(8);
        this.subTitle.setText("请享受游戏之旅");
        ConstantIntEnum[] constantIntEnumArrValues = ConstantIntEnum.values();
        int i10 = 0;
        while (true) {
            str = "已安装完成";
            if (i10 >= constantIntEnumArrValues.length) {
                break;
            }
            if (this.table.getTag_id().equals(constantIntEnumArrValues[i10].value() + "")) {
                str = constantIntEnumArrValues[i10].nickName() + "已安装完成";
                break;
            }
            i10++;
        }
        this.title.setText(str);
        this.state = 3;
    }

    public void setInstalling() {
        String str;
        this.icon.setBackgroundResource(R.drawable.emu_f_install);
        this.submit.setText("完成");
        this.submit.setBackgroundResource(R.drawable.shape_plug_btn_disable_bg);
        int i10 = 0;
        this.submit.setEnabled(false);
        this.skip.setVisibility(8);
        this.subTitle.setText("大约需要几秒钟");
        ConstantIntEnum[] constantIntEnumArrValues = ConstantIntEnum.values();
        while (true) {
            str = "插件安装中";
            if (i10 >= constantIntEnumArrValues.length) {
                break;
            }
            if (this.table.getTag_id().equals(constantIntEnumArrValues[i10].value() + "")) {
                str = constantIntEnumArrValues[i10].nickName() + "插件安装中";
                break;
            }
            i10++;
        }
        this.title.setText(str);
        this.state = 2;
    }

    public void setPreDownloaded() {
        String str;
        this.icon.setBackgroundResource(R.drawable.emu_f_update);
        this.submit.setText("一键安装");
        this.submit.setEnabled(true);
        this.submit.setBackgroundResource(R.drawable.shape_plug_btn_bg);
        int i10 = 0;
        if (this.status == 2) {
            this.skip.setVisibility(8);
        } else {
            this.skip.setVisibility(0);
        }
        this.subTitle.setText("我们已为你准备好安装包");
        ConstantIntEnum[] constantIntEnumArrValues = ConstantIntEnum.values();
        while (true) {
            str = "插件可更新";
            if (i10 >= constantIntEnumArrValues.length) {
                break;
            }
            if (this.table.getTag_id().equals(constantIntEnumArrValues[i10].value() + "")) {
                str = constantIntEnumArrValues[i10].nickName() + "插件可更新";
                break;
            }
            i10++;
        }
        this.title.setText(str);
        this.state = 1;
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        com.join.mgps.Util.p2.r(this, 570425344, false);
    }

    public void dismiss() {
        finish();
    }
}
