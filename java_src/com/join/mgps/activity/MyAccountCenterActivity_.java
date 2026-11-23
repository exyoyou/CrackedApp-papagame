package com.join.mgps.activity;

import android.content.Intent;
import android.os.Bundle;
import com.BaseActivity;

/* JADX INFO: loaded from: classes4.dex */
public class MyAccountCenterActivity_ extends BaseActivity {
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        startActivity(new Intent(this, (Class<?>) MyAccountLoginActivity_.class));
        finish();
    }
}
