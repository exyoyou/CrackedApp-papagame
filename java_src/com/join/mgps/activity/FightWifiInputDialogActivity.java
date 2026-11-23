package com.join.mgps.activity;

import android.content.Intent;
import android.widget.Button;
import android.widget.EditText;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.dialog_fight_wifi_ip)
public class FightWifiInputDialogActivity extends BaseActivity {
    public static final int RESULT_CODE_START_CONNECT = 9002;

    @ViewById
    Button join;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    EditText txtIP;

    @AfterViews
    void afterViews() {
        this.txtIP.setText(this.prefDef.fightWifiInputIP().d());
    }

    @Click
    void iv_closeClicked() {
        finish();
    }

    @Click
    void joinClicked() {
        String string = this.txtIP.getText().toString();
        if (com.join.mgps.Util.t2.h(string)) {
            com.join.android.app.common.manager.a.h().j(this, "IP地址不能为空", 1);
            return;
        }
        String[] strArrSplit = string.split("\\.");
        if (!string.contains(com.join.mgps.Util.o0.f49827a) || strArrSplit.length != 4 || !com.join.mgps.Util.t2.j(strArrSplit[0]) || !com.join.mgps.Util.t2.j(strArrSplit[1]) || !com.join.mgps.Util.t2.j(strArrSplit[2]) || !com.join.mgps.Util.t2.j(strArrSplit[3])) {
            com.join.android.app.common.manager.a.h().j(this, "IP地址不合法", 1);
            return;
        }
        this.prefDef.fightWifiInputIP().g(string);
        Intent intent = new Intent();
        intent.putExtra("ip", string);
        setResult(9002, intent);
        finish();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}
