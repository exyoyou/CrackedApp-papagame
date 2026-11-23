package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import java.util.Arrays;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class c extends com.xinzhu.overmind.client.hook.b implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f89373c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f89374d = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IInterface f89375b;

    private static Bundle d(String str, String str2) {
        Bundle bundle = new Bundle();
        if (e.d()) {
            bundle.putString("name", str);
            bundle.putString(HmInputMappingContent.FIELD_VALUE, str2);
        } else {
            bundle.putString(str, str2);
        }
        return bundle;
    }

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface a(IInterface iInterface, String str) {
        this.f89375b = iInterface;
        injectHook();
        return (IInterface) getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return this.f89375b;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f89375b, objArr);
        }
        if (objArr != null && objArr.length > 0) {
            Object obj2 = objArr[0];
            if (obj2 instanceof String) {
                objArr[0] = Overmind.getHostPkg();
            }
            if (e.h()) {
                try {
                    int iA = r.a(objArr, com.xinzhu.overmind.client.e.a());
                    if (iA >= 0) {
                        AttributionSource attributionSourceA = com.xinzhu.overmind.client.hook.proxies.appos.a.a(objArr[iA]);
                        ContextFixer.fixAttributionSource(attributionSourceA);
                        objArr[iA] = attributionSourceA;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        String name = method.getName();
        name.hashCode();
        if (!name.equals("call")) {
            if (!name.equals("query")) {
                return method.invoke(this.f89375b, objArr);
            }
            Uri uri = (Uri) objArr[objArr.length - 4];
            com.xinzhu.overmind.b.c(com.xinzhu.overmind.client.hook.b.TAG, "content provider <query> " + uri);
            if (uri.toString().equals("content://settings/config")) {
                return null;
            }
            return method.invoke(this.f89375b, objArr);
        }
        int length = objArr.length - 4;
        String str = (String) objArr[length + 1];
        String str2 = (String) objArr[length + 2];
        com.xinzhu.overmind.b.c(com.xinzhu.overmind.client.hook.b.TAG, "content provider <call> " + Arrays.toString(objArr));
        if (str.startsWith("GET_")) {
            if (str2.equalsIgnoreCase("user_setup_complete")) {
                return d(str2, "1");
            }
            if (str2.equalsIgnoreCase("install_non_market_apps")) {
                return d(str2, "1");
            }
            if (str2.equalsIgnoreCase("android_id")) {
                MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
                if (mindDeviceInfoB != null && mindDeviceInfoB.f89705b) {
                    return d(str2, mindDeviceInfoB.f89706c);
                }
            } else if (str2.equals("adb_enabled") || str2.equals("development_settings_enabled")) {
                return d(str2, "0");
            }
        } else if (str.startsWith("PUT_")) {
            if (str.endsWith("secure") || str.endsWith("global") || str.endsWith("system")) {
                return null;
            }
        } else if (str.startsWith("LIST_")) {
            return null;
        }
        try {
            return method.invoke(this.f89375b, objArr);
        } catch (Throwable th2) {
            if ((th2.getCause() instanceof SecurityException) || (th2.getCause() instanceof IllegalArgumentException)) {
                return null;
            }
            throw th2;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
    }
}
