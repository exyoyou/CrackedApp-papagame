package com.xinzhu.overmind.client.hook.proxies.clipboard;

import android.content.ClipboardManager;
import android.os.IInterface;
import com.haima.hmcp.Constants;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import t8.d;
import t8.i;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {
    public a() {
        super(t.i(Constants.WS_MESSAGE_TYPE_CLIPBOARD));
    }

    private static IInterface d() {
        d dVar = new d((ClipboardManager) Overmind.getContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD));
        if (dVar.a()) {
            return dVar.c();
        }
        if (d.b()) {
            return d.d();
        }
        return null;
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        d dVar = new d((ClipboardManager) Overmind.getContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD));
        return (dVar.a() && dVar.c() != getProxyInvocation()) || t.i(Constants.WS_MESSAGE_TYPE_CLIPBOARD) != this;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return i.a.a(t.i(Constants.WS_MESSAGE_TYPE_CLIPBOARD));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        d dVar = new d((ClipboardManager) Overmind.getContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD));
        if (dVar.a()) {
            dVar.e((IInterface) getProxyInvocation());
        } else if (d.b()) {
            d.f((IInterface) getProxyInvocation());
        }
        replaceSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addPrimaryClipChangedListener", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getPrimaryClipDescription", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("removePrimaryClipChangedListener", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("hasClipboardText", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("clearPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("hasPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getUserPrimaryClip", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89292h));
    }
}
