package com.baidu.mobads.sdk.internal;

import com.baidu.mobads.sdk.api.RouteInfo;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class as extends RouteInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private y f7470a;

    public as(String str) {
        setPath(str);
        b();
    }

    private void b() {
        RouteInfo routeInfo;
        try {
            Method declaredMethod = Class.forName(z.at + getPath()).getDeclaredMethod("getRoutesMap", new Class[0]);
            declaredMethod.setAccessible(true);
            HashMap map = (HashMap) declaredMethod.invoke(null, new Object[0]);
            if (map == null || map.size() <= 0 || (routeInfo = (RouteInfo) map.get(getPath())) == null) {
                return;
            }
            this.f7470a = (y) routeInfo.getDestination().getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
        }
    }

    public Object a() {
        return this.f7470a;
    }
}
