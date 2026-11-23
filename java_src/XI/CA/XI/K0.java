package XI.CA.XI;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes7.dex */
public class K0 {
    public static kM CA;
    public static volatile XI.CA.XI.XI CV;
    public static Handler FL;
    public static HandlerThread J9;
    public static boolean K0;
    public static String WI;

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public static Context f16XI;
    public static String bs;
    public static String cs;
    public static kM kM;

    /* JADX INFO: renamed from: q6, reason: collision with root package name */
    public static volatile K0 f17q6;
    public static Object vs = new Object();
    public static kM xo;

    public static class XI extends Handler {
        public XI(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws Throwable {
            if (message.what == 11) {
                int i10 = message.getData().getInt("type");
                try {
                    String strXI = K0.CV.XI(i10, message.getData().getString("appid"));
                    if (i10 == 0) {
                        K0.WI = strXI;
                    } else if (i10 != 1) {
                        if (i10 == 2 && strXI != null) {
                            K0.cs = strXI;
                        }
                    } else if (strXI != null) {
                        K0.bs = strXI;
                    }
                } catch (Exception e10) {
                    e10.toString();
                }
                Context context = K0.f16XI;
                synchronized (K0.vs) {
                    K0.vs.notify();
                }
            }
        }
    }

    public K0() {
        XI();
        CV = new XI.CA.XI.XI(f16XI);
    }

    public static K0 XI(Context context) {
        if (!K0()) {
            return null;
        }
        if (f16XI == null) {
            if (context == null) {
                return null;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            f16XI = context;
        }
        if (f17q6 == null) {
            synchronized (K0.class) {
                if (f17q6 == null) {
                    f17q6 = new K0();
                }
            }
        }
        return f17q6;
    }

    public void K0(int i10, String str) {
        Message messageObtainMessage = FL.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i10);
        if (i10 == 1 || i10 == 2) {
            bundle.putString("appid", str);
        }
        messageObtainMessage.setData(bundle);
        FL.sendMessage(messageObtainMessage);
    }

    public static boolean K0() {
        String str = "0";
        if (!K0 && Build.VERSION.SDK_INT >= 28) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.identifierid.supported", "0");
            } catch (Throwable unused) {
            }
            K0 = "1".equals(str);
        }
        return K0;
    }

    public static void XI() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        J9 = handlerThread;
        handlerThread.start();
        FL = new XI(J9.getLooper());
    }

    public final void XI(int i10, String str) {
        synchronized (vs) {
            K0(i10, str);
            SystemClock.uptimeMillis();
            try {
                vs.wait(2000L);
            } catch (InterruptedException unused) {
            }
            SystemClock.uptimeMillis();
        }
    }

    public static synchronized void XI(Context context, int i10, String str) {
        ContentResolver contentResolver;
        Uri uri;
        kM kMVar;
        String packageName = context.getPackageName();
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2 && CA == null) {
                    int i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 29) {
                        CA = new kM(f17q6, 2, packageName);
                        contentResolver = context.getContentResolver();
                        uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + packageName);
                        kMVar = CA;
                    } else if (i11 == 28) {
                        CA = new kM(f17q6, 2, str);
                        contentResolver = context.getContentResolver();
                        uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
                        kMVar = CA;
                    }
                    contentResolver.registerContentObserver(uri, false, kMVar);
                }
            } else if (xo == null) {
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 29) {
                    xo = new kM(f17q6, 1, packageName);
                    contentResolver = context.getContentResolver();
                    uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + packageName);
                    kMVar = xo;
                } else if (i12 == 28) {
                    xo = new kM(f17q6, 1, str);
                    contentResolver = context.getContentResolver();
                    uri = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
                    kMVar = xo;
                }
                contentResolver.registerContentObserver(uri, false, kMVar);
            }
        } else if (kM == null) {
            kM = new kM(f17q6, 0, null);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, kM);
        }
    }
}
