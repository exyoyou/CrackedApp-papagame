package com.umeng.pagesdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f85631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f85632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterfaceC1066b f85633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f85634d;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f85636a = new b(0);
    }

    /* JADX INFO: renamed from: com.umeng.pagesdk.b$b, reason: collision with other inner class name */
    public interface InterfaceC1066b {
        void a(com.umeng.pagesdk.a aVar);
    }

    private b() {
        this.f85634d = new BroadcastReceiver() { // from class: com.umeng.pagesdk.b.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        int i10 = 0;
                        int intExtra = intent.getIntExtra("level", 0);
                        int intExtra2 = intent.getIntExtra("voltage", 0);
                        int intExtra3 = intent.getIntExtra("temperature", 0);
                        int intExtra4 = intent.getIntExtra("status", 0);
                        int i11 = -1;
                        if (intExtra4 != 1) {
                            if (intExtra4 == 2) {
                                i11 = 1;
                            } else if (intExtra4 == 4) {
                                i11 = 0;
                            } else if (intExtra4 == 5) {
                                i11 = 2;
                            }
                        }
                        int intExtra5 = intent.getIntExtra("plugged", 0);
                        if (intExtra5 == 1) {
                            i10 = 1;
                        } else if (intExtra5 == 2) {
                            i10 = 2;
                        }
                        com.umeng.pagesdk.a aVar = new com.umeng.pagesdk.a();
                        aVar.f85625a = intExtra;
                        aVar.f85626b = intExtra2;
                        aVar.f85628d = i11;
                        aVar.f85627c = intExtra3;
                        aVar.f85629e = i10;
                        aVar.f85630f = System.currentTimeMillis();
                        if (b.this.f85633c != null) {
                            b.this.f85633c.a(aVar);
                        }
                        b.this.b();
                    }
                } catch (Throwable unused) {
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        try {
            f85632b.unregisterReceiver(this.f85634d);
            f85631a = false;
        } catch (Throwable unused) {
        }
    }

    public final synchronized com.umeng.pagesdk.a a() {
        com.umeng.pagesdk.a aVar;
        com.umeng.pagesdk.a aVar2 = null;
        try {
            Intent intentRegisterReceiver = f85632b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int i10 = 0;
            int intExtra = intentRegisterReceiver.getIntExtra("level", 0);
            int intExtra2 = intentRegisterReceiver.getIntExtra("voltage", 0);
            int intExtra3 = intentRegisterReceiver.getIntExtra("temperature", 0);
            int intExtra4 = intentRegisterReceiver.getIntExtra("status", 0);
            int i11 = -1;
            if (intExtra4 != 1) {
                if (intExtra4 == 2) {
                    i11 = 1;
                } else if (intExtra4 == 4) {
                    i11 = 0;
                } else if (intExtra4 == 5) {
                    i11 = 2;
                }
            }
            int intExtra5 = intentRegisterReceiver.getIntExtra("plugged", 0);
            if (intExtra5 == 1) {
                i10 = 1;
            } else if (intExtra5 == 2) {
                i10 = 2;
            }
            aVar = new com.umeng.pagesdk.a();
            try {
                aVar.f85625a = intExtra;
                aVar.f85626b = intExtra2;
                aVar.f85628d = i11;
                aVar.f85627c = intExtra3;
                aVar.f85629e = i10;
                aVar.f85630f = System.currentTimeMillis();
            } catch (Throwable unused) {
                aVar2 = aVar;
                aVar = aVar2;
            }
        } catch (Throwable unused2) {
        }
        return aVar;
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static b a(Context context) {
        if (f85632b == null && context != null) {
            f85632b = context.getApplicationContext();
        }
        return a.f85636a;
    }

    public final synchronized void a(InterfaceC1066b interfaceC1066b) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f85632b.registerReceiver(this.f85634d, intentFilter);
            f85631a = true;
            this.f85633c = interfaceC1066b;
        } catch (Throwable unused) {
        }
    }
}
