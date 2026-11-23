package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f89420a = "CommonStub";

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.a$a, reason: collision with other inner class name */
    public static class C1118a extends com.xinzhu.overmind.client.hook.e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceId";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89707d;
        }
    }

    public static class b extends C1118a {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C1118a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceIdWithFeature";
        }
    }

    public static class c extends C1118a {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C1118a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getImeiForSlot";
        }
    }

    public static class d extends C1118a {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.a.C1118a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getMeidForSlot";
        }
    }
}
