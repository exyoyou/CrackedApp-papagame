package cn.fly.commons.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f1168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f1169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1170c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1171d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1172e = 0;

    private class a implements ServiceConnection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1173a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BlockingQueue<IBinder> f1175c;

        private a() {
            this.f1173a = false;
            this.f1175c = new LinkedBlockingQueue();
        }

        public IBinder a(long j10) throws InterruptedException {
            if (this.f1173a) {
                throw new IllegalStateException();
            }
            this.f1173a = true;
            BlockingQueue<IBinder> blockingQueue = this.f1175c;
            if (j10 <= 0) {
                j10 = 1500;
            }
            return blockingQueue.poll(j10, TimeUnit.MILLISECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f1175c.put(iBinder);
            } catch (Throwable unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f1176a;
    }

    public h(Context context) {
        this.f1168a = context;
        this.f1169b = context.getPackageName();
    }

    private synchronized void e() {
        if (this.f1170c) {
            return;
        }
        if (a(a()) || this.f1172e >= 4) {
            this.f1170c = true;
        }
    }

    protected Intent a() {
        return null;
    }

    protected b b() {
        return null;
    }

    protected long c() {
        return ((((long) (this.f1172e - 1)) * 2) + 2) * 1000;
    }

    public synchronized String d() {
        e();
        return this.f1171d;
    }

    protected b a(IBinder iBinder) {
        return null;
    }

    protected synchronized void a(String str) {
        if (str != null) {
            if (!Pattern.compile("^[0fF\\-]+").matcher(str).matches()) {
                this.f1171d = str;
            }
        }
    }

    private synchronized boolean a(Intent intent) {
        boolean z10;
        z10 = true;
        this.f1172e++;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            b bVarB = b();
            if (bVarB == null) {
                bVarB = a(this.f1168a, intent);
            }
            if (bVarB != null) {
                this.f1171d = bVarB.f1176a;
            } else {
                z10 = false;
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
        FlyLog.getInstance().d("oa use time: " + jElapsedRealtime2, new Object[0]);
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0064 A[Catch: all -> 0x0067, DONT_GENERATE, TRY_LEAVE, TryCatch #3 {all -> 0x0067, blocks: (B:23:0x005f, B:25:0x0064), top: B:42:0x005f }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0070 A[Catch: all -> 0x0073, FINALLY_INSNS, TRY_LEAVE, TryCatch #1 {all -> 0x0073, blocks: (B:29:0x006b, B:31:0x0070), top: B:38:0x006b }] */
    protected String a(String str, IBinder iBinder, String str2, int i10, String... strArr) {
        Parcel parcelObtain;
        Parcel parcelObtain2;
        try {
            parcelObtain = Parcel.obtain();
            try {
                parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(str2);
                    if (strArr != null && strArr.length > 0) {
                        for (String str3 : strArr) {
                            parcelObtain.writeString(str3);
                        }
                    }
                    iBinder.transact(i10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    try {
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } catch (Throwable unused) {
                    }
                    return string;
                } catch (Throwable th) {
                    th = th;
                    try {
                        FlyLog.getInstance().d("getStringValue: " + str + " failed! " + th.getMessage(), new Object[0]);
                        if (parcelObtain2 != null) {
                            try {
                                parcelObtain2.recycle();
                                if (parcelObtain != null) {
                                }
                            } catch (Throwable unused2) {
                                return null;
                            }
                        } else if (parcelObtain != null) {
                        }
                        return null;
                    } finally {
                        if (parcelObtain2 != null) {
                            try {
                                parcelObtain2.recycle();
                                if (parcelObtain != null) {
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused3) {
                            }
                        } else if (parcelObtain != null) {
                            parcelObtain.recycle();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                parcelObtain2 = null;
            }
        } catch (Throwable th3) {
            th = th3;
            parcelObtain = null;
            parcelObtain2 = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004d A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:15:0x0048, B:17:0x004d), top: B:29:0x0048 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b A[Catch: all -> 0x005e, TRY_LEAVE, TryCatch #5 {all -> 0x005e, blocks: (B:22:0x0056, B:24:0x005b), top: B:35:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    protected int a(String str, IBinder iBinder, String str2, int i10) throws Throwable {
        Parcel parcelObtain;
        Parcel parcel;
        Parcel parcelObtain2 = null;
        try {
            parcelObtain = Parcel.obtain();
            try {
                parcelObtain2 = Parcel.obtain();
                parcelObtain.writeInterfaceToken(str2);
                iBinder.transact(i10, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                int i11 = parcelObtain2.readInt();
                try {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable unused) {
                }
                return i11;
            } catch (RemoteException unused2) {
                parcel = parcelObtain2;
                parcelObtain2 = parcelObtain;
                try {
                    FlyLog.getInstance().d("getIntValue: " + str + " failed! (remoteException)", new Object[0]);
                    if (parcel != null) {
                        try {
                            parcel.recycle();
                            if (parcelObtain2 != null) {
                                parcelObtain2.recycle();
                            }
                        } catch (Throwable unused3) {
                            return 0;
                        }
                    } else if (parcelObtain2 != null) {
                        parcelObtain2.recycle();
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    parcelObtain = parcelObtain2;
                    parcelObtain2 = parcel;
                    if (parcelObtain2 != null) {
                        try {
                            parcelObtain2.recycle();
                            if (parcelObtain != null) {
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused4) {
                            throw th;
                        }
                    } else if (parcelObtain != null) {
                        parcelObtain.recycle();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (parcelObtain2 != null) {
                    parcelObtain2.recycle();
                    if (parcelObtain != null) {
                        parcelObtain.recycle();
                    }
                } else if (parcelObtain != null) {
                    parcelObtain.recycle();
                }
                throw th;
            }
        } catch (RemoteException unused5) {
            parcel = null;
        } catch (Throwable th3) {
            th = th3;
            parcelObtain = null;
        }
    }

    private b a(Context context, Intent intent) throws Throwable {
        boolean zBindService;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            a aVar = new a();
            try {
                if (DH.SyncMtd.getOSVersionIntForFly() >= 34) {
                    zBindService = context.bindService(intent, aVar, 513);
                } else {
                    zBindService = context.bindService(intent, aVar, 1);
                }
                if (intent != null && zBindService) {
                    long jC = c();
                    FlyLog.getInstance().d("wte " + jC, new Object[0]);
                    IBinder iBinderA = aVar.a(c());
                    if (iBinderA != null) {
                        b bVarA = a(iBinderA);
                        try {
                            context.unbindService(aVar);
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                        return bVarA;
                    }
                    throw new Throwable("get binder " + intent.getComponent() + " failed!");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("bind service ");
                sb2.append(intent == null ? "null" : intent.getComponent());
                sb2.append(" failed!");
                throw new Throwable(sb2.toString());
            } catch (Throwable th2) {
                try {
                    context.unbindService(aVar);
                } catch (Throwable th3) {
                    FlyLog.getInstance().d(th3);
                }
                throw th2;
            }
        }
        throw new Throwable("unable to invoke in main thread!");
    }
}
