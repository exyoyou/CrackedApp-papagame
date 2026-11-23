package com.xinzhu.overmind.client.stub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xinzhu.overmind.client.stub.record.StubBroadcastRecord;

/* JADX INFO: loaded from: classes8.dex */
public class StubBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f89447a = "StubBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StubBroadcastRecord.create(intent);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onReceive: ");
        sb2.append(intent);
    }
}
