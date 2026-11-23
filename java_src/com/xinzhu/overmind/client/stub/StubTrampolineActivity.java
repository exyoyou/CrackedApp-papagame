package com.xinzhu.overmind.client.stub;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import ma.a;
import t8.m;

/* JADX INFO: loaded from: classes8.dex */
public class StubTrampolineActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89457b = "StubTrampolineActivity";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        try {
            IBinder iBinderC = new m(intent).c("_VM_|_trampoline_result_to_");
            String stringExtra = intent.getStringExtra("_VM_|_trampoline_result_who_");
            int intExtra = intent.getIntExtra("_VM_|_trampoline_request_code_", 0);
            Bundle bundleExtra = intent.getBundleExtra("_VM_|_trampoline_options_");
            String stringExtra2 = intent.getStringExtra("_VM_|_trampoline_calling_package_");
            int intExtra2 = intent.getIntExtra("_VM_|_trampoline_flagsMask_", 0);
            int intExtra3 = intent.getIntExtra("_VM_|_trampoline_flagsValues_", 0);
            StubTrampolineRecord stubTrampolineRecordCreate = StubTrampolineRecord.create(intent);
            if (stubTrampolineRecordCreate.sanityCheck()) {
                finish();
                if (iBinderC == null) {
                    stubTrampolineRecordCreate.mTarget.addFlags(C.ENCODING_PCM_MU_LAW);
                    a mindActivityManager = Overmind.getMindActivityManager();
                    int i10 = stubTrampolineRecordCreate.mUserId;
                    Intent intent2 = stubTrampolineRecordCreate.mTarget;
                    mindActivityManager.y(i10, stringExtra2, intent2, intent2.getType(), null, null, -1, 0, bundleExtra);
                } else {
                    int i11 = intExtra2 & (-196);
                    Intent intent3 = stubTrampolineRecordCreate.mTarget;
                    intent3.setFlags(((~i11) & intent3.getFlags()) | (intExtra3 & i11));
                    a mindActivityManager2 = Overmind.getMindActivityManager();
                    int i12 = stubTrampolineRecordCreate.mUserId;
                    Intent intent4 = stubTrampolineRecordCreate.mTarget;
                    mindActivityManager2.y(i12, stringExtra2, intent4, intent4.getType(), iBinderC, stringExtra, intExtra, 0, bundleExtra);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
