package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import java.util.Arrays;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends com.xinzhu.overmind.client.hook.b implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89362c = "b";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89363d = "android:query-arg-sql-selection";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f89364e = "android:query-arg-sql-selection-args";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f89365f = "android:query-arg-sql-sort-order";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f89366g = "notificationpackage";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f89367h = "notificationclass";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f89368i = "is_visible_in_downloads_ui";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f89369j = "visibility";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f89370k = "description";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f89371l = "hint";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IInterface f89372b;

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface a(IInterface iInterface, String str) {
        this.f89372b = iInterface;
        injectHook();
        return (IInterface) getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return this.f89372b;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String string;
        String[] stringArray;
        String string2;
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f89372b, objArr);
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
        if (name.equals("insert")) {
            int iA2 = r.a(objArr, Uri.class) + 1;
            ContentValues contentValues = (ContentValues) objArr[iA2];
            String asString = contentValues.getAsString(f89366g);
            com.xinzhu.overmind.b.c(f89362c, "content provider <insert>, notificationPkg " + asString);
            if (asString == null) {
                return method.invoke(this.f89372b, objArr);
            }
            String asString2 = contentValues.getAsString("hint");
            if (asString2 != null) {
                contentValues.put("hint", asString2.replace(asString, Overmind.getHostPkg()));
            }
            contentValues.put("visibility", (Integer) 1);
            contentValues.put(f89366g, Overmind.getHostPkg());
            objArr[iA2] = contentValues;
            return method.invoke(this.f89372b, objArr);
        }
        if (!name.equals("query")) {
            return method.invoke(this.f89372b, objArr);
        }
        int length = objArr.length - 4;
        if (e.x()) {
            Bundle bundle = (Bundle) objArr[length + 2];
            if (bundle != null) {
                string = bundle.getString(f89363d);
                stringArray = bundle.getStringArray(f89364e);
                string2 = bundle.getString(f89365f);
            } else {
                string = null;
                string2 = null;
                stringArray = null;
            }
        } else {
            string = (String) objArr[length + 2];
            stringArray = (String[]) objArr[length + 3];
            string2 = (String) objArr[length + 4];
        }
        com.xinzhu.overmind.b.c(f89362c, "content provider <query>, selection " + string + " selectionArgs " + Arrays.toString(stringArray) + " sortOrder " + string2);
        return method.invoke(this.f89372b, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
    }
}
