package com.xinzhu.overmind.client.hook.proxies.audio;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.common.e;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {
    public a() {
        super(t.i("audio"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return b9.a.C0019a.a(t.i("audio"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("audio");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("adjustSuggestedStreamVolume", d.f89290f, d.f89289e));
        addMethodHook(new d("adjustStreamVolume", d.f89290f, d.f89289e));
        addMethodHook(new d("setStreamVolume", d.f89290f, d.f89289e));
        addMethodHook(new d("handleVolumeKey", d.f89290f, d.f89289e));
        addMethodHook(new d("setMasterMute", d.f89290f, d.f89291g));
        addMethodHook(new d("setVolumeIndexForAttributes", d.f89290f, d.f89289e));
        addMethodHook(new d("setMicrophoneMute", d.f89290f, d.f89291g));
        addMethodHook(new d("setMode", d.f89290f, d.f89289e));
        addMethodHook(new d("requestAudioFocus", d.f89290f, d.f89289e));
        addMethodHook(new d("abandonAudioFocus", d.f89290f, d.f89289e));
        addMethodHook(new d("disableSafeMediaVolume", d.f89290f, d.f89289e));
        addMethodHook(new e("setUidDeviceAffinity", 1));
        addMethodHook(new e("removeUidDeviceAffinity", 1));
        addMethodHook(new d("setUserIdDeviceAffinity", d.f89289e, 1));
        addMethodHook(new d("removeUserIdDeviceAffinity", d.f89289e, 1));
    }
}
