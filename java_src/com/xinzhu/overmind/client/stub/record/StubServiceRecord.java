package com.xinzhu.overmind.client.stub.record;

import android.content.Intent;
import android.content.pm.ServiceInfo;

/* JADX INFO: loaded from: classes8.dex */
public class StubServiceRecord {
    public int mFlags;
    public ServiceInfo mServiceInfo;
    public Intent mServiceIntent;
    public int mStartId;
    public int mUserId;

    public StubServiceRecord(Intent intent, ServiceInfo serviceInfo, int i10, int i11, int i12) {
        this.mServiceIntent = intent;
        this.mServiceInfo = serviceInfo;
        this.mUserId = i10;
        this.mStartId = i11;
        this.mFlags = i12;
    }

    public static StubServiceRecord create(Intent intent) {
        return new StubServiceRecord((Intent) intent.getParcelableExtra("_VM_|_target_"), (ServiceInfo) intent.getParcelableExtra("_VM_|_service_info_"), intent.getIntExtra("_VM_|_user_id_", 0), intent.getIntExtra("_VM_|_start_id_", 0), intent.getIntExtra("_VM_|_flags_", 0));
    }

    public static void saveStub(Intent intent, Intent intent2, ServiceInfo serviceInfo, int i10, int i11, int i12) {
        intent.putExtra("_VM_|_target_", intent2);
        intent.putExtra("_VM_|_service_info_", serviceInfo);
        intent.putExtra("_VM_|_user_id_", i10);
        intent.putExtra("_VM_|_start_id_", i11);
        intent.putExtra("_VM_|_flags_", i12);
    }
}
