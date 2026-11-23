package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.VersionDto;
import com.papa.sim.statistic.JsonMapper;

/* JADX INFO: loaded from: classes4.dex */
public class MyFragmentActivity extends BaseFragmentActivity {
    private BroadcastReceiver myReceiver = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyFragmentActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyFragmentActivity.this.check_version();
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

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            unregisterReceiver(this.myReceiver);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(p5.a.f96205l);
        intentFilter.setPriority(Integer.MAX_VALUE);
        registerReceiver(this.myReceiver, intentFilter);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
    }
}
