package com.swift.sandhook;

import com.swift.sandhook.wrapper.HookErrorException;
import com.swift.sandhook.wrapper.HookWrapper;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class PendingHookHandler {
    private static boolean canUsePendingHook;
    private static Map<Class, Vector<HookWrapper.HookEntity>> pendingHooks = new ConcurrentHashMap();

    static {
        if (SandHookConfig.delayHook) {
            canUsePendingHook = SandHook.initForPendingHook();
        }
    }

    public static synchronized void addPendingHook(HookWrapper.HookEntity hookEntity) {
        Vector<HookWrapper.HookEntity> vector = pendingHooks.get(hookEntity.target.getDeclaringClass());
        if (vector == null) {
            vector = new Vector<>();
            pendingHooks.put(hookEntity.target.getDeclaringClass(), vector);
        }
        vector.add(hookEntity);
    }

    public static boolean canWork() {
        return canUsePendingHook && SandHook.canGetObject() && !SandHookConfig.DEBUG;
    }

    public static void onClassInit(long j10) {
        Class cls;
        Vector<HookWrapper.HookEntity> vector;
        if (j10 == 0 || (cls = (Class) SandHook.getObject(j10)) == null || (vector = pendingHooks.get(cls)) == null) {
            return;
        }
        for (HookWrapper.HookEntity hookEntity : vector) {
            HookLog.w("do pending hook for method: " + hookEntity.target.toString());
            try {
                hookEntity.initClass = false;
                SandHook.hook(hookEntity);
            } catch (HookErrorException e10) {
                HookLog.e("Pending Hook Error!", e10);
            }
        }
        pendingHooks.remove(cls);
    }
}
