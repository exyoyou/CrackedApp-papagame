package com.efs.sdk.memoryinfo;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.integrationtesting.IntegrationTestingUtil;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.samplingwhitelist.SamplingWhiteListUtil;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
final class d implements UMMemoryMonitorApi {
    private boolean A;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f26483u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f26484v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f26485w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private WeakReference<Activity> f26486x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f26487y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f26488z;

    d() {
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final String getCurrentActivity() {
        Activity activity;
        WeakReference<Activity> weakReference = this.f26486x;
        return (weakReference == null || (activity = weakReference.get()) == null) ? "" : activity.getClass().getName();
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final boolean isEnable() {
        b bVar;
        return this.f26484v && (bVar = this.f26485w) != null && bVar.f26461b;
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final boolean isForeground() {
        return this.f26487y;
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final void onActivityResumed(Activity activity) {
        if (this.f26484v) {
            this.f26486x = new WeakReference<>(activity);
        }
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final void onActivityStarted(Activity activity) {
        if (this.f26484v && activity != null) {
            if (this.A) {
                this.A = false;
                return;
            }
            int i10 = this.f26488z + 1;
            this.f26488z = i10;
            if (i10 == 1) {
                this.f26487y = true;
            }
        }
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final void onActivityStopped(Activity activity) {
        if (this.f26484v && activity != null) {
            if (activity.isChangingConfigurations()) {
                this.A = true;
                return;
            }
            int i10 = this.f26488z - 1;
            this.f26488z = i10;
            if (i10 == 0) {
                this.f26487y = false;
            }
        }
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final void setEnable(boolean z10) {
        this.f26484v = z10;
    }

    @Override // com.efs.sdk.memoryinfo.UMMemoryMonitorApi
    public final void start(Context context, EfsReporter efsReporter) {
        if ((this.f26484v || IntegrationTestingUtil.isIntegrationTestingInPeriod()) && !this.f26483u) {
            this.f26483u = true;
            final b bVar = new b(context, efsReporter);
            this.f26485w = bVar;
            bVar.f26460a.getAllSdkConfig(new String[]{"apm_memperf_sampling_rate", "apm_memperf_collect_interval", "apm_memperf_collect_max_period_sec"}, new IConfigCallback() { // from class: com.efs.sdk.memoryinfo.b.1

                /* JADX INFO: renamed from: com.efs.sdk.memoryinfo.b$1$1 */
                final class HandlerC05511 extends Handler {

                    /* JADX INFO: renamed from: d */
                    final /* synthetic */ HandlerThread f26463d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    HandlerC05511(Looper looper) {
                        super(looper);
                        handlerThread = handlerThread;
                    }

                    @Override // android.os.Handler
                    public final void handleMessage(Message message) {
                        super.handleMessage(message);
                        if (message.what == 1) {
                            try {
                                handlerThread.quit();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }

                /* JADX INFO: renamed from: com.efs.sdk.memoryinfo.b$1$2 */
                final class AnonymousClass2 implements Runnable {

                    /* JADX INFO: renamed from: f */
                    final /* synthetic */ Handler f26466f;

                    /* JADX INFO: renamed from: g */
                    final /* synthetic */ int f26467g;

                    /* JADX INFO: renamed from: h */
                    final /* synthetic */ int f26468h;

                    AnonymousClass2() {
                        handler = handler;
                        i = i;
                        i = i;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            String string = UUID.randomUUID().toString();
                            String lowerCase = UMUtils.MD5(Process.myPid() + string).toLowerCase();
                            b bVar = b.this;
                            Handler handler = handler;
                            handler.post(new Runnable() { // from class: com.efs.sdk.memoryinfo.b.2

                                /* JADX INFO: renamed from: f */
                                final /* synthetic */ Handler f26470f;

                                /* JADX INFO: renamed from: i */
                                final /* synthetic */ long f26471i;

                                /* JADX INFO: renamed from: j */
                                final /* synthetic */ int f26472j;

                                /* JADX INFO: renamed from: k */
                                final /* synthetic */ e f26473k;

                                /* JADX INFO: renamed from: l */
                                final /* synthetic */ String f26474l;

                                /* JADX INFO: renamed from: m */
                                final /* synthetic */ int f26475m;

                                AnonymousClass2() {
                                    j = j;
                                    i = i;
                                    handler = handler;
                                    eVar = eVar;
                                    str = lowerCase;
                                    i = i;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (SystemClock.elapsedRealtime() - j > i * 1000) {
                                        handler.sendEmptyMessage(1);
                                        return;
                                    }
                                    try {
                                        b.a(b.this, eVar, str);
                                    } catch (Throwable th) {
                                        f.a("collect ", th);
                                    }
                                    handler.postDelayed(this, i * 1000);
                                }
                            });
                        } catch (Throwable unused) {
                            handler.sendEmptyMessage(1);
                        }
                    }
                }

                AnonymousClass1() {
                }

                @Override // com.efs.sdk.base.observer.IConfigCallback
                public final void onChange(Map<String, Object> map) {
                    Object obj;
                    Object obj2;
                    Object obj3;
                    try {
                        if (b.this.f26461b || (obj = map.get("apm_memperf_sampling_rate")) == null) {
                            return;
                        }
                        int i10 = Integer.parseInt(obj.toString());
                        if ((!(i10 != 0 && (i10 == 100 || SamplingWhiteListUtil.isHitWL() || new Random().nextInt(100) <= i10)) && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) || (obj2 = map.get("apm_memperf_collect_interval")) == null || (obj3 = map.get("apm_memperf_collect_max_period_sec")) == null) {
                            return;
                        }
                        int i11 = Integer.parseInt(obj2.toString());
                        int i12 = Integer.parseInt(obj3.toString());
                        HandlerThread handlerThread = new HandlerThread("mem-info");
                        handlerThread.start();
                        HandlerC05511 handlerC05511 = new Handler(handlerThread.getLooper()) { // from class: com.efs.sdk.memoryinfo.b.1.1

                            /* JADX INFO: renamed from: d */
                            final /* synthetic */ HandlerThread f26463d;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            HandlerC05511(Looper looper) {
                                super(looper);
                                handlerThread = handlerThread;
                            }

                            @Override // android.os.Handler
                            public final void handleMessage(Message message) {
                                super.handleMessage(message);
                                if (message.what == 1) {
                                    try {
                                        handlerThread.quit();
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        };
                        handlerC05511.post(new Runnable() { // from class: com.efs.sdk.memoryinfo.b.1.2

                            /* JADX INFO: renamed from: f */
                            final /* synthetic */ Handler f26466f;

                            /* JADX INFO: renamed from: g */
                            final /* synthetic */ int f26467g;

                            /* JADX INFO: renamed from: h */
                            final /* synthetic */ int f26468h;

                            AnonymousClass2() {
                                handler = handlerC05511;
                                i = i11;
                                i = i12;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    String string = UUID.randomUUID().toString();
                                    String lowerCase = UMUtils.MD5(Process.myPid() + string).toLowerCase();
                                    b bVar2 = b.this;
                                    Handler handler = handler;
                                    handler.post(new Runnable() { // from class: com.efs.sdk.memoryinfo.b.2

                                        /* JADX INFO: renamed from: f */
                                        final /* synthetic */ Handler f26470f;

                                        /* JADX INFO: renamed from: i */
                                        final /* synthetic */ long f26471i;

                                        /* JADX INFO: renamed from: j */
                                        final /* synthetic */ int f26472j;

                                        /* JADX INFO: renamed from: k */
                                        final /* synthetic */ e f26473k;

                                        /* JADX INFO: renamed from: l */
                                        final /* synthetic */ String f26474l;

                                        /* JADX INFO: renamed from: m */
                                        final /* synthetic */ int f26475m;

                                        AnonymousClass2() {
                                            j = j;
                                            i = i;
                                            handler = handler;
                                            eVar = eVar;
                                            str = lowerCase;
                                            i = i;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            if (SystemClock.elapsedRealtime() - j > i * 1000) {
                                                handler.sendEmptyMessage(1);
                                                return;
                                            }
                                            try {
                                                b.a(b.this, eVar, str);
                                            } catch (Throwable th) {
                                                f.a("collect ", th);
                                            }
                                            handler.postDelayed(this, i * 1000);
                                        }
                                    });
                                } catch (Throwable unused) {
                                    handler.sendEmptyMessage(1);
                                }
                            }
                        });
                        b.this.f26461b = true;
                    } catch (Throwable th) {
                        f.a("collect ", th);
                    }
                }
            });
        }
    }
}
