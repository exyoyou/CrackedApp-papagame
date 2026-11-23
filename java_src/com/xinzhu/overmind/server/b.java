package com.xinzhu.overmind.server;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.os.IBinder;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubServiceRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89641c = "ClientServiceManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f89642d = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Intent.FilterComparison, com.xinzhu.overmind.client.service.a> f89643a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Service f89644b;

    private com.xinzhu.overmind.client.service.a a(Intent intent) {
        return this.f89643a.get(new Intent.FilterComparison(intent));
    }

    public static b b() {
        return f89642d;
    }

    private Service c(Intent intent, ServiceInfo serviceInfo, boolean z10) {
        com.xinzhu.overmind.client.service.a aVarA = a(intent);
        if (aVarA != null && aVarA.g() != null) {
            return aVarA.g();
        }
        if (!z10) {
            return null;
        }
        Service serviceCreateService = com.xinzhu.overmind.client.f.getClient().createService(serviceInfo);
        com.xinzhu.overmind.client.service.a aVar = new com.xinzhu.overmind.client.service.a();
        aVar.n(serviceCreateService);
        this.f89643a.put(new Intent.FilterComparison(intent), aVar);
        return serviceCreateService;
    }

    private void l(Intent intent) {
        this.f89643a.remove(new Intent.FilterComparison(intent));
    }

    public IBinder d(Intent intent) {
        StubServiceRecord stubServiceRecordCreate = StubServiceRecord.create(intent);
        Intent intent2 = stubServiceRecordCreate.mServiceIntent;
        ServiceInfo serviceInfo = stubServiceRecordCreate.mServiceInfo;
        int i10 = stubServiceRecordCreate.mFlags;
        if (intent2 != null && serviceInfo != null) {
            if (com.xinzhu.overmind.client.f.getClientConfig() == null) {
                com.xinzhu.overmind.b.a(f89641c, "restarting service " + intent2);
                return null;
            }
            com.xinzhu.overmind.b.a(f89641c, "onBind: " + serviceInfo.toString());
            Service serviceC = c(intent2, serviceInfo, (i10 & 1) != 0);
            if (serviceC == null) {
                com.xinzhu.overmind.b.a(f89641c, "bind without bind_auto_create flag, ignore: " + intent2);
                return null;
            }
            intent2.setExtrasClassLoader(serviceC.getClassLoader());
            com.xinzhu.overmind.client.service.a aVarA = a(intent2);
            aVarA.k(intent2);
            if (aVarA.j(intent2)) {
                if (aVarA.l()) {
                    serviceC.onRebind(intent2);
                    aVarA.m(false);
                }
                return aVarA.e(intent2);
            }
            try {
                IBinder iBinderOnBind = serviceC.onBind(intent2);
                aVarA.b(intent2, iBinderOnBind);
                return iBinderOnBind;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public void e(Configuration configuration) {
        if (this.f89643a.size() > 0) {
            Iterator<com.xinzhu.overmind.client.service.a> it2 = this.f89643a.values().iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().g().onConfigurationChanged(configuration);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void f() {
        if (this.f89643a.size() > 0) {
            Iterator<com.xinzhu.overmind.client.service.a> it2 = this.f89643a.values().iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().g().onDestroy();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        this.f89643a.clear();
    }

    public void g() {
        if (this.f89643a.size() > 0) {
            Iterator<com.xinzhu.overmind.client.service.a> it2 = this.f89643a.values().iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().g().onLowMemory();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public int h(Intent intent, int i10, int i11) {
        StubServiceRecord stubServiceRecordCreate = StubServiceRecord.create(intent);
        if (stubServiceRecordCreate.mServiceIntent != null && stubServiceRecordCreate.mServiceInfo != null && com.xinzhu.overmind.client.f.getClientConfig() != null) {
            Service serviceC = c(stubServiceRecordCreate.mServiceIntent, stubServiceRecordCreate.mServiceInfo, true);
            if (serviceC == null) {
                com.xinzhu.overmind.b.c(f89641c, "onStartCommand unexpected behavior");
                return 2;
            }
            stubServiceRecordCreate.mServiceIntent.setExtrasClassLoader(serviceC.getClassLoader());
            com.xinzhu.overmind.client.service.a aVarA = a(stubServiceRecordCreate.mServiceIntent);
            String stringExtra = intent.getStringExtra(AbsIjkVideoView.JSON_TAG_OPERATION);
            if (stringExtra == null || stringExtra.equals("start_service")) {
                aVarA.o(stubServiceRecordCreate.mStartId);
                try {
                    int iOnStartCommand = serviceC.onStartCommand(stubServiceRecordCreate.mServiceIntent, i10, stubServiceRecordCreate.mStartId);
                    Overmind.getMindActivityManager().s(intent, stubServiceRecordCreate.mUserId);
                    return iOnStartCommand;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } else {
                if (stringExtra.equals("stop_service")) {
                    stopService(stubServiceRecordCreate.mServiceIntent);
                    Overmind.getMindActivityManager().q(intent, stubServiceRecordCreate.mUserId);
                    return 2;
                }
                com.xinzhu.overmind.b.c(f89641c, "get unexpected <operation> " + stringExtra);
            }
        }
        return 2;
    }

    public void i(int i10) {
        if (this.f89643a.size() > 0) {
            Iterator<com.xinzhu.overmind.client.service.a> it2 = this.f89643a.values().iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().g().onTrimMemory(i10);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        com.xinzhu.overmind.b.a(f89641c, "onTrimMemory");
    }

    public boolean j(Intent intent) {
        Service serviceC;
        StubServiceRecord stubServiceRecordCreate = StubServiceRecord.create(intent);
        if (stubServiceRecordCreate.mServiceIntent != null && stubServiceRecordCreate.mServiceInfo != null && com.xinzhu.overmind.client.f.getClientConfig() != null) {
            Intent intent2 = stubServiceRecordCreate.mServiceIntent;
            try {
                UnbindRecord unbindRecordR = Overmind.getMindActivityManager().r(intent, com.xinzhu.overmind.client.f.getUserId());
                if (unbindRecordR == null || (serviceC = c(stubServiceRecordCreate.mServiceIntent, stubServiceRecordCreate.mServiceInfo, false)) == null) {
                    return false;
                }
                stubServiceRecordCreate.mServiceIntent.setExtrasClassLoader(serviceC.getClassLoader());
                com.xinzhu.overmind.client.service.a aVarA = a(intent2);
                boolean z10 = unbindRecordR.w() == 0;
                if (z10 || aVarA.c(intent2)) {
                    serviceC.onUnbind(intent2);
                    if (z10) {
                        serviceC.onDestroy();
                        Overmind.getMindActivityManager().q(intent, com.xinzhu.overmind.client.f.getUserId());
                        l(intent2);
                        if (this.f89643a.isEmpty()) {
                            this.f89644b.stopSelf();
                        }
                    } else {
                        aVarA.m(true);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public IBinder k(Intent intent) {
        com.xinzhu.overmind.client.service.a aVarA = a(intent);
        if (aVarA == null) {
            return null;
        }
        return aVarA.e(intent);
    }

    public void stopService(Intent intent) {
        if (intent == null) {
            return;
        }
        com.xinzhu.overmind.b.a(f89641c, "stopService：" + intent.toString());
        com.xinzhu.overmind.client.service.a aVarA = a(intent);
        if (aVarA == null || aVarA.g() == null || aVarA.i() > 0) {
            return;
        }
        if (aVarA.h() > 0) {
            try {
                com.xinzhu.overmind.b.a(f89641c, "stopService real destroy：" + intent.toString());
                aVarA.g().onDestroy();
                l(intent);
                if (this.f89643a.isEmpty()) {
                    com.xinzhu.overmind.b.a(f89641c, "stopService stubservice");
                    this.f89644b.stopSelf();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
