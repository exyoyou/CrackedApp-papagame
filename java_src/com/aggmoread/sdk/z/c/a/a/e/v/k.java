package com.aggmoread.sdk.z.c.a.a.e.v;

import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class k extends ContextThemeWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f5301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String[] f5302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f5303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected j f5305e;

    public k(Context context, String str, String str2) {
        this(context, str, new String[]{str2});
    }

    private Intent a(Intent intent) {
        try {
            if (this.f5303c.equals(intent.getPackage())) {
                intent.setPackage(b().getPackageName());
                com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "injectSendBroadcastIntent reset packageName name");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return intent;
    }

    protected Context b() {
        return this.f5301a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "ProxyContext#getApplicationContext enter, isEnable = " + this.f5304d + ",startActivityClassPrefix = " + this.f5302b);
        if (this.f5304d) {
            boolean zA = i.a(this.f5302b);
            com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "fromClassPrefix = " + zA);
            if (zA) {
                if (this.f5305e == null) {
                    this.f5305e = new j(this);
                }
                return this.f5305e;
            }
        }
        return b().getApplicationContext();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ApplicationInfo getApplicationInfo() {
        if (!this.f5304d) {
            return b().getApplicationInfo();
        }
        ApplicationInfo applicationInfo = b().getApplicationInfo();
        String str = this.f5303c;
        applicationInfo.packageName = str;
        applicationInfo.processName = str;
        return applicationInfo;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getOpPackageName() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "ProxyContext#getOpPackageName enter, isEnable = " + this.f5304d + " , proxyPackageName = " + this.f5303c);
        return (this.f5304d && i.a(this.f5302b)) ? this.f5303c : b().getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public PackageManager getPackageManager() {
        PackageManager packageManagerA = com.aggmoread.sdk.z.c.a.a.d.b.n.a();
        if (packageManagerA == null) {
            return super.getPackageManager();
        }
        com.aggmoread.sdk.z.c.a.a.e.e.b("pm_impl", "pc getPackageManager");
        return packageManagerA;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public String getPackageName() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "ProxyContext#getPackageName enter, isEnable = " + this.f5304d + " , proxyPackageName = " + this.f5303c);
        return (this.f5304d && i.a(this.f5302b)) ? this.f5303c : b().getPackageName();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void registerComponentCallbacks(ComponentCallbacks componentCallbacks) {
        b().registerComponentCallbacks(componentCallbacks);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendBroadcast(Intent intent) {
        b().sendBroadcast(a(intent));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendOrderedBroadcast(Intent intent, @Nullable String str) {
        b().sendBroadcast(a(intent), str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "startActivity context = " + b());
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.startActivity(b(intent));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ComponentName startService(Intent intent) {
        b(intent);
        return b().startService(intent);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterComponentCallbacks(ComponentCallbacks componentCallbacks) {
        b().unregisterComponentCallbacks(componentCallbacks);
    }

    public k(Context context, String str, String[] strArr) {
        super(context, 0);
        this.f5304d = true;
        this.f5301a = context;
        this.f5303c = str;
        this.f5302b = strArr;
    }

    private Intent b(Intent intent) {
        try {
            ComponentName component = intent.getComponent();
            com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "injectStartActivityIntent enter , " + component + " , packageName = " + intent.getPackage() + " , action = " + intent.getAction());
            if (component != null) {
                String className = component.getClassName();
                String packageName = component.getPackageName();
                String packageName2 = com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageName();
                boolean zStartsWith = className != null ? className.startsWith(packageName2) : false;
                com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "injectStartActivityIntent isStartCurrentPackageActivity = " + zStartsWith);
                String[] strArr = this.f5302b;
                if (strArr != null) {
                    for (String str : strArr) {
                        if ((this.f5303c.equals(packageName) && className != null && className.startsWith(str)) || zStartsWith) {
                            intent.setClassName(packageName2, className);
                            intent.setPackage(packageName2);
                            com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "injectStartActivityIntent reset packageName name");
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return intent;
    }

    public void a() {
        this.f5304d = true;
        com.aggmoread.sdk.z.c.a.a.e.e.b("proxyContext", "enable enter , packageName = " + this.f5303c);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendBroadcast(Intent intent, @Nullable String str) {
        b().sendBroadcast(a(intent), str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void sendOrderedBroadcast(@NonNull Intent intent, @Nullable String str, @Nullable BroadcastReceiver broadcastReceiver, @Nullable Handler handler, int i10, @Nullable String str2, @Nullable Bundle bundle) {
        b().sendOrderedBroadcast(a(intent), str, broadcastReceiver, handler, i10, str2, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, @Nullable Bundle bundle) {
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.startActivity(b(intent), bundle);
    }
}
