package com.xinzhu.overmind.client.hook.proxies.permission;

import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.os.IInterface;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.haunted.android.app.j;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;
import java.util.Arrays;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89402b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f89403c = "permissionmgr";

    static class a extends e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "checkPermission";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str;
            char c10;
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            char c11 = 1;
            if (objArr.length == 4) {
                str = (String) objArr[1];
                c11 = 0;
                c10 = 3;
            } else {
                str = (String) objArr[0];
                c10 = 2;
            }
            PackageInfo packageInfoL = Overmind.getMindPackageManager().l(f.getVPackageName(), 4096, f.getUserId());
            if (packageInfoL != null && (permissionInfoArr = packageInfoL.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = packageInfoL.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            if (objArr.length == 4) {
                objArr[c11] = Overmind.getHostPkg();
                objArr[c10] = Integer.valueOf(Overmind.getHostUserId());
            } else {
                objArr[c11] = Overmind.getHostPkg();
                objArr[c10] = Integer.valueOf(Overmind.getHostUserId());
            }
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.permission.b$b, reason: collision with other inner class name */
    static class C1115b extends e {
        C1115b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPermissionInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            PackageInfo packageInfoL = Overmind.getMindPackageManager().l(f.getVPackageName(), 4096, f.getUserId());
            com.xinzhu.overmind.b.c(b.f89402b, "here getPermissionInfo " + str + " " + packageInfoL.permissions);
            PermissionInfo[] permissionInfoArr = packageInfoL.permissions;
            if (permissionInfoArr != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && packageInfoL.requestedPermissions != null) {
                        return permissionInfo;
                    }
                }
            }
            objArr[1] = Overmind.getHostPkg();
            return method.invoke(obj, objArr);
        }
    }

    public b() {
        super(t.i(f89403c));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return h9.a.C1169a.a(t.i(f89403c));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89403c);
        if (g.v()) {
            g.t0((IInterface) obj2);
        }
        try {
            j jVar = new j(Overmind.getPackageManager());
            if (jVar.b() != obj2) {
                jVar.c((IInterface) obj2);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("getPermissionFlags", d.f89289e, d.f89291g));
        addMethodHook(new d("updatePermissionFlags", d.f89289e, d.f89291g));
        addMethodHook(new d("updatePermissionFlagsForAllApps", d.f89289e, d.f89291g));
        addMethodHook(new a());
        addMethodHook(new C1115b());
        addMethodHook(new d("getWhitelistedRestrictedPermissions", d.f89289e, d.f89291g));
        addMethodHook(new d("addWhitelistedRestrictedPermission", d.f89289e, d.f89291g));
        addMethodHook(new d("removeWhitelistedRestrictedPermission", d.f89289e, d.f89291g));
        addMethodHook(new d("grantRuntimePermission", d.f89289e, d.f89291g));
        addMethodHook(new d("revokeRuntimePermission", d.f89289e, 2));
        addMethodHook(new d("setDefaultBrowser", d.f89289e, d.f89291g));
        addMethodHook(new d("getDefaultBrowser", d.f89289e, d.f89291g));
        addMethodHook(new d("grantDefaultPermissionsToEnabledCarrierApps", d.f89289e, d.f89291g));
        addMethodHook(new d("grantDefaultPermissionsToEnabledImsServices", d.f89289e, d.f89291g));
        addMethodHook(new d("grantDefaultPermissionsToEnabledTelephonyDataServices", d.f89289e, d.f89291g));
        addMethodHook(new d("revokeDefaultPermissionsFromDisabledTelephonyDataServices", d.f89289e, d.f89291g));
        addMethodHook(new d("grantDefaultPermissionsToActiveLuiApp", d.f89289e, d.f89291g));
        addMethodHook(new d("revokeDefaultPermissionsFromLuiApps", d.f89289e, d.f89291g));
        addMethodHook(new d("shouldShowRequestPermissionRationale", d.f89289e, d.f89291g));
        addMethodHook(new d("isPermissionRevokedByPolicy", d.f89289e, d.f89291g));
        addMethodHook(new d("startOneTimePermissionSession", d.f89289e, 1));
        addMethodHook(new d("stopOneTimePermissionSession", d.f89289e, d.f89291g));
        addMethodHook(new d("getAutoRevokeExemptionRequestedPackages", d.f89289e, d.f89291g));
        addMethodHook(new d("getAutoRevokeExemptionGrantedPackages", d.f89289e, d.f89291g));
        addMethodHook(new d("setAutoRevokeWhitelisted", d.f89289e, d.f89291g));
        addMethodHook(new d("isAutoRevokeWhitelisted", d.f89289e, d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkUidPermission", d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkDeviceIdentifierAccess", d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addOnPermissionsChangeListener", 0));
    }
}
