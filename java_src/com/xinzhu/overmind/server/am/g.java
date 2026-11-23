package com.xinzhu.overmind.server.am;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class g extends e.b implements com.xinzhu.overmind.server.g {
    private static g sService = new g();
    private Map<String, JobRecord> mJobRecords = new HashMap();

    private String formatKey(String str, int i10) {
        return str + "_" + i10;
    }

    public static g get() {
        return sService;
    }

    @Override // com.xinzhu.overmind.server.am.e
    public int cancel(String str, int i10, int i11) throws RemoteException {
        return i10;
    }

    @Override // com.xinzhu.overmind.server.am.e
    public void cancelAll(String str, int i10) throws RemoteException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : this.mJobRecords.keySet()) {
            if (str2.startsWith(str + "_")) {
                this.mJobRecords.get(str2);
            }
        }
    }

    @Override // com.xinzhu.overmind.server.am.e
    public JobRecord queryJobRecord(String str, int i10, int i11) throws RemoteException {
        return this.mJobRecords.get(formatKey(str, i10));
    }

    @Override // com.xinzhu.overmind.server.am.e
    public JobInfo schedule(JobInfo jobInfo, int i10) throws RemoteException {
        if (jobInfo == null) {
            return null;
        }
        ComponentName service = jobInfo.getService();
        Intent intent = new Intent();
        intent.setComponent(service);
        ResolveInfo resolveInfoResolveService = MindPackageManagerService.get().resolveService(intent, 128, null, i10);
        if (resolveInfoResolveService == null) {
            return jobInfo;
        }
        ServiceInfo serviceInfo = resolveInfoResolveService.serviceInfo;
        ProcessRecord processRecordC = com.xinzhu.overmind.server.h.d().c(serviceInfo.packageName, serviceInfo.processName, i10);
        if (processRecordC != null || (processRecordC = com.xinzhu.overmind.server.h.d().q(serviceInfo.packageName, serviceInfo.processName, i10, -1, Binder.getCallingUid(), Binder.getCallingPid())) != null) {
            return scheduleJob(processRecordC, jobInfo, serviceInfo);
        }
        throw new RuntimeException("Unable to create Process " + serviceInfo.processName);
    }

    public JobInfo scheduleJob(ProcessRecord processRecord, JobInfo jobInfo, ServiceInfo serviceInfo) {
        JobRecord jobRecord = new JobRecord();
        jobRecord.f89469b = jobInfo;
        jobRecord.f89470c = serviceInfo;
        this.mJobRecords.put(formatKey(processRecord.processName, jobInfo.getId()), jobRecord);
        new o8.b(jobInfo).f(new ComponentName(processRecord.runWithPlugin ? Overmind.getPluginPkg() : Overmind.getMainPkg(), com.xinzhu.overmind.client.g.k(processRecord.vpid)));
        return jobInfo;
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }
}
