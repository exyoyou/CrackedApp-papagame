package com.xinzhu.overmind.client.stub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.b;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import na.c;

/* JADX INFO: loaded from: classes8.dex */
public class StubTrampolineReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f89458a = "StubTrampolineReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        b.c(f89458a, "StubTrampolineReceiver onReceive " + intent);
        try {
            StubTrampolineRecord stubTrampolineRecordCreate = StubTrampolineRecord.create(intent);
            if (stubTrampolineRecordCreate.sanityCheck()) {
                Intent intentK = c.k(stubTrampolineRecordCreate.mTarget);
                Overmind.getMindActivityManager().w(intentK, intentK.getType(), stubTrampolineRecordCreate.mUserId);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
