package com.xinzhu.overmind.client.hook.proxies.os.storage;

import android.content.res.ObbInfo;
import android.os.IInterface;
import android.os.Process;
import android.os.storage.StorageManager;
import com.haima.hmcp.Constants;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.IOManager;
import java.io.File;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.os.storage.a$a, reason: collision with other inner class name */
    static class C1114a extends com.xinzhu.overmind.client.hook.e {
        C1114a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "fixupAppDir";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr == null || objArr.length != 1) {
                return method.invoke(obj, objArr);
            }
            objArr[0] = Overmind.getContext().getExternalCacheDir().getAbsolutePath();
            return method.invoke(obj, objArr);
        }
    }

    static class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getMountedObbPath";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            if (str != null) {
                objArr[0] = IOManager.get().redirectPath(str);
            }
            String str2 = (String) method.invoke(obj, objArr);
            com.xinzhu.overmind.b.a("testobb", "getMountedObbPath: " + objArr[0] + " result: " + str2);
            return str2;
        }
    }

    static class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getVolumeList";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr == null) {
                return Overmind.getMindStorageManager().d(Process.myUid(), null, 0, com.xinzhu.overmind.client.f.getUserId());
            }
            return Overmind.getMindStorageManager().d(((Integer) objArr[0]).intValue(), (String) objArr[1], ((Integer) objArr[2]).intValue(), com.xinzhu.overmind.client.f.getUserId());
        }
    }

    static class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "isObbMounted";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            if (str != null) {
                objArr[0] = IOManager.get().redirectPath(str);
            }
            boolean zBooleanValue = ((Boolean) method.invoke(obj, objArr)).booleanValue();
            com.xinzhu.overmind.b.a("testobb", "isObbMounted: " + objArr[0] + " result: " + zBooleanValue);
            return Boolean.valueOf(zBooleanValue);
        }
    }

    static class e extends com.xinzhu.overmind.client.hook.e {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "mkdirs";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            File file = new File((String) objArr[objArr.length == 1 ? (char) 0 : (char) 1]);
            if (file.exists()) {
                return 0;
            }
            return Integer.valueOf(file.mkdirs() ? 0 : -1);
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "mountObb";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            if (str != null) {
                objArr[0] = IOManager.get().redirectPath(str);
            }
            String str2 = (String) objArr[1];
            if (str2 != null) {
                objArr[1] = IOManager.get().redirectPath(str2);
            }
            int iA = r.a(objArr, ObbInfo.class);
            if (iA >= 0) {
                ObbInfo obbInfo = (ObbInfo) objArr[iA];
                obbInfo.packageName = Overmind.getHostPkg();
                obbInfo.filename = IOManager.get().redirectPath(obbInfo.filename);
            }
            com.xinzhu.overmind.b.a("testobb", "mountObb here " + objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    static class g extends com.xinzhu.overmind.client.hook.e {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "unmountObb";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            if (str != null) {
                objArr[0] = IOManager.get().redirectPath(str);
            }
            com.xinzhu.overmind.b.a("testobb", "unmountObb: " + str);
            return method.invoke(obj, objArr);
        }
    }

    public a() {
        super(t.i("mount"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return t.i("mount") != this;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.overmind.utils.e.x() ? g9.b.a.a(t.i("mount")) : g9.a.C1165a.a(t.i("mount"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("mount");
        try {
            g9.c cVar = new g9.c((StorageManager) Overmind.getContext().getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE));
            if (cVar.a()) {
                cVar.k((IInterface) obj2);
            }
            if (g9.c.b()) {
                g9.c.l((IInterface) obj2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
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
        if (com.xinzhu.overmind.utils.e.j()) {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getVolumeList", 1, 0));
        } else {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.e("getVolumeList", 0));
        }
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("createUserKey", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("destroyUserKey", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("unlockUserKey", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("lockUserKey", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isUserKeyUnlocked", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("prepareUserStorage", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("destroyUserStorage", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addUserKeyAuth", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("fixateNewestUserKeyAuth", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("clearUserKeyAuth", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new f());
        addMethodHook(new d());
        addMethodHook(new b());
        addMethodHook(new g());
        addMethodHook(new e());
        addMethodHook(new C1114a());
    }
}
