package com.papa91.paay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.czhj.sdk.common.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class MyActivity extends Activity {
    PaayReceiver paayReceiver;
    String uid = "3913852899";
    String token = "5wnrKqSDPBCvHcWp";

    public void inquiry() {
        PayCenter.inquiryCheat(this, this.uid, this.token, "123", new PayListener() { // from class: com.papa91.paay.MyActivity.2
            @Override // com.papa91.paay.PayListener
            public void onResult(PayResponse payResponse) {
                if (payResponse != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("payResponse=");
                    sb2.append(payResponse.getError());
                }
            }
        });
    }

    public void lobbyPlayCheck() {
        PayCenter.lobbyPlayCheck(this, this.uid, this.token, "3913852899", "client", "20040032", new PayListener() { // from class: com.papa91.paay.MyActivity.4
            @Override // com.papa91.paay.PayListener
            public void onResult(PayResponse payResponse) {
                if (payResponse != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("payResponse=");
                    sb2.append(payResponse.getError());
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PaayReceiver paayReceiver = new PaayReceiver() { // from class: com.papa91.paay.MyActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                MyActivity.this.uid = intent.getExtras().getString("uid");
                MyActivity.this.token = intent.getExtras().getString(Constants.TOKEN);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("uid=");
                sb2.append(MyActivity.this.uid);
                sb2.append(";token=");
                sb2.append(MyActivity.this.token);
                MyActivity.this.lobbyPlayCheck();
            }
        };
        this.paayReceiver = paayReceiver;
        registerReceiver(paayReceiver, new IntentFilter(PayCenter.ACTION_LOGIN_SUCCESS));
        setContentView(com.join.android.app.mgsim.wufun.R.array.akta);
        startLobbyGame();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.paayReceiver);
    }

    public void startLobbyGame() {
        PayCenter.startLobby(this, this.uid, this.token, "3913852899", "client", "20040032", new PayListener() { // from class: com.papa91.paay.MyActivity.3
            @Override // com.papa91.paay.PayListener
            public void onResult(PayResponse payResponse) {
                if (payResponse != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("payResponse=");
                    sb2.append(payResponse.getError());
                }
            }
        });
    }
}
