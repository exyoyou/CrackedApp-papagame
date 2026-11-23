package com.xinzhu.overmind.server;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.res.Configuration;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.JobRecord;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f89533b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Integer, JobRecord> f89534a = new HashMap();

    public static a a() {
        return f89533b;
    }

    Service b(int i10) {
        Service service;
        synchronized (this.f89534a) {
            JobRecord jobRecord = this.f89534a.get(Integer.valueOf(i10));
            if (jobRecord != null && (service = jobRecord.f89471d) != null) {
                return service;
            }
            try {
                JobRecord jobRecordE = Overmind.getMindJobManager().e(com.xinzhu.overmind.client.f.getClientConfig().f89461c, i10);
                if (jobRecordE != null) {
                    jobRecordE.f89471d = com.xinzhu.overmind.client.f.getClient().createJobService(jobRecordE.f89470c);
                    this.f89534a.put(Integer.valueOf(i10), jobRecordE);
                    return jobRecordE.f89471d;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public void c(Configuration configuration) {
        Iterator<JobRecord> it2 = this.f89534a.values().iterator();
        while (it2.hasNext()) {
            Service service = it2.next().f89471d;
            if (service != null) {
                service.onConfigurationChanged(configuration);
            }
        }
    }

    public void d() {
    }

    public void e() {
        Iterator<JobRecord> it2 = this.f89534a.values().iterator();
        while (it2.hasNext()) {
            Service service = it2.next().f89471d;
            if (service != null) {
                service.onLowMemory();
            }
        }
    }

    public boolean f(JobParameters jobParameters) {
        try {
            Service serviceB = b(jobParameters.getJobId());
            if (serviceB instanceof JobService) {
                return ((JobService) serviceB).onStartJob(jobParameters);
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean g(JobParameters jobParameters) {
        Service serviceB = b(jobParameters.getJobId());
        boolean zOnStopJob = serviceB instanceof JobService ? ((JobService) serviceB).onStopJob(jobParameters) : false;
        serviceB.onDestroy();
        synchronized (this.f89534a) {
            this.f89534a.remove(Integer.valueOf(jobParameters.getJobId()));
        }
        return zOnStopJob;
    }

    public void h(int i10) {
        Iterator<JobRecord> it2 = this.f89534a.values().iterator();
        while (it2.hasNext()) {
            Service service = it2.next().f89471d;
            if (service != null) {
                service.onTrimMemory(i10);
            }
        }
    }
}
