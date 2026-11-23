package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.papa.sim.statistic.JsonMapper;

/* JADX INFO: loaded from: classes4.dex */
public class MyFragmentActivity1 extends BaseAppCompatActivity {
    private boolean isCheckRegister = false;
    private BroadcastReceiver versionCheckReceiver = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyFragmentActivity1.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyFragmentActivity1.this.check_version();
        }
    };

    void check_version() {
        SharedPreferences sharedPreferences = getSharedPreferences("VersionXML", 0);
        new VersionDto();
        VersionDto versionDto = (VersionDto) JsonMapper.getInstance().fromJson(sharedPreferences.getString("VersionDto", ""), VersionDto.class);
        boolean z10 = sharedPreferences.getBoolean("Mandatory", false);
        if (versionDto != null) {
            new com.join.mgps.dialog.e(this, R.style.HKDialogLoading, versionDto, z10).show();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        try {
            if (this.isBackHome && this.isCheckRegister) {
                unregisterReceiver(this.versionCheckReceiver);
                this.isCheckRegister = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(p5.a.f96205l);
            intentFilter.setPriority(Integer.MAX_VALUE);
            registerReceiver(this.versionCheckReceiver, intentFilter);
            this.isCheckRegister = true;
        } catch (Exception unused) {
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }
}
