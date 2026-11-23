package com.join.mgps.activity.mygame.dialog;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.BaseActivity;
import com.byazt.quv.AbsServerManager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.pref.h;
import java.io.File;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import p5.a;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.wufungame_first_downpermiss_dialog)
public class WufunGameDownFirstNotPermissDialog extends BaseActivity {

    @ViewById
    TextView gameName;

    @ViewById
    SimpleDraweeView img;

    @Pref
    PrefDef_ prefDef;

    @Extra
    int from = 1;
    Handler handler = new Handler() { // from class: com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            WufunGameDownFirstNotPermissDialog wufunGameDownFirstNotPermissDialog = WufunGameDownFirstNotPermissDialog.this;
            if (wufunGameDownFirstNotPermissDialog.isbackground || wufunGameDownFirstNotPermissDialog.testStorageRW()) {
                WufunGameDownFirstNotPermissDialog.this.handler.sendEmptyMessageDelayed(1, BaseCloudFileManager.ACK_TIMEOUT);
            } else {
                WufunGameDownFirstNotPermissDialog.this.hasgetpermiss();
                WufunGameDownFirstNotPermissDialog.this.finish();
            }
        }
    };
    boolean isbackground = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void hasgetpermiss() {
        sendBroadcast(new Intent(a.f96206l0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean testStorageRW() {
        if (Build.VERSION.SDK_INT <= 28 || !this.prefDef.needShowPermissdialog().d().booleanValue()) {
            return false;
        }
        try {
            String strG = h.n(this).g();
            if (!t2.i(strG)) {
                return true;
            }
            File file = new File(strG);
            if (!file.exists()) {
                return !file.mkdirs();
            }
            File file2 = new File(strG, "test_canwhite.txt");
            return !(file2.exists() ? file2.delete() : file2.createNewFile());
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    @AfterViews
    void afterview() {
        if (this.from == 2) {
            this.gameName.setText("如需恢复游戏，请允许存储权限。");
        }
        this.handler.sendEmptyMessageDelayed(1, BaseCloudFileManager.ACK_TIMEOUT);
    }

    @Click
    void close() {
        finish();
    }

    @Click
    void mainxxx() {
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isbackground = true;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isbackground = false;
        if (testStorageRW()) {
            return;
        }
        this.prefDef.needShowPermissdialog().g(Boolean.FALSE);
        this.handler.removeMessages(1);
        hasgetpermiss();
        finish();
    }

    @Click
    void settingInfo() {
        IntentUtil.getInstance().goFormDetial(this, "7543990");
    }

    @Click
    void startButn() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, getPackageName(), null));
        startActivity(intent);
    }
}
