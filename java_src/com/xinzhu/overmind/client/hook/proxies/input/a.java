package com.xinzhu.overmind.client.hook.proxies.input;

import android.os.IInterface;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89376b = "input_method";

    public a() {
        super(t.i(f89376b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return z9.a.C1258a.a(t.i(f89376b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        z8.a aVar = new z8.a((InputMethodManager) Overmind.getContext().getSystemService(f89376b));
        if (aVar.a()) {
            aVar.c((IInterface) obj2);
        }
        if (e.k() && o9.a.a()) {
            o9.a.c(obj2);
        }
        replaceSystemService(f89376b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (objArr != null) {
            for (Object obj2 : objArr) {
                if (obj2 instanceof EditorInfo) {
                    ((EditorInfo) obj2).packageName = Overmind.getHostPkg();
                }
            }
        }
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("getInputMethodList", d.f89289e, 0));
        addMethodHook(new d("getEnabledInputMethodList", d.f89289e, 0));
        if (e.k()) {
            addMethodHook(new d("startInputOrWindowGainedFocus", d.f89289e, 10));
            addMethodHook(new d("startInputOrWindowGainedFocusAsync", d.f89289e, 10));
            addMethodHook(new d("isStylusHandwritingAvailableAsUser", d.f89289e, 0));
            addMethodHook(new d("getCurrentInputMethodInfoAsUser", d.f89289e, 0));
            addMethodHook(new d("getEnabledInputMethodSubtypeList", d.f89289e, d.f89291g));
            addMethodHook(new d("acceptStylusHandwritingDelegation", d.f89290f, 1));
            addMethodHook(new d("prepareStylusHandwritingDelegation", d.f89290f, 1));
            addMethodHook(new d("prepareStylusHandwritingDelegation", d.f89290f, 1));
            addMethodHook(new d("getCurrentInputMethodSubtype", d.f89289e, 0));
            addMethodHook(new d("setAdditionalInputMethodSubtypes", d.f89289e, d.f89291g));
            addMethodHook(new d("setExplicitlyEnabledInputMethodSubtypes", d.f89289e, d.f89291g));
            addMethodHook(new d("getLastInputMethodSubtype", d.f89289e, 0));
        }
    }
}
