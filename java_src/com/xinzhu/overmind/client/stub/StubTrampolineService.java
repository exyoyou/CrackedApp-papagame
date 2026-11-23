package com.xinzhu.overmind.client.stub;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.b;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;

/* JADX INFO: loaded from: classes8.dex */
public class StubTrampolineService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89459b = "StubTrampolineService";

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        Intent intentStartService;
        b.c(f89459b, "StubTrampolineService onStartCommand");
        try {
            StubTrampolineRecord stubTrampolineRecordCreate = StubTrampolineRecord.create(intent);
            if (!stubTrampolineRecordCreate.sanityCheck()) {
                return 2;
            }
            Intent intent2 = stubTrampolineRecordCreate.mTarget;
            if (Overmind.getMindPackageManager().C(intent2, 0, intent2.getType(), stubTrampolineRecordCreate.mUserId) != null && (intentStartService = Overmind.getMindActivityManager().startService(intent2, intent2.getType(), stubTrampolineRecordCreate.mUserId, i10)) != null) {
                startService(intentStartService);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return 2;
    }
}
