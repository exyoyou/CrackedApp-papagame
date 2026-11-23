package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.o;
import com.xinzhu.haunted.android.os.p;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import org.webrtc.haima.HmDataChannelManager;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class l extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89400b;

    static {
        f89400b = com.xinzhu.overmind.utils.e.h() ? "vibrator_manager" : "vibrator";
    }

    public l() {
        super(t.i(f89400b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.overmind.utils.e.h() ? o.a.a(t.i(f89400b)) : p.a.a(t.i(f89400b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89400b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e(HmDataChannelManager.VIBRATE, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("vibratePattern", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("vibrateMagnitude", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("vibratePatternMagnitude", 0));
    }
}
