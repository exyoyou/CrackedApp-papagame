package com.swift.sandhook.xposedcompat.methodgen;

import android.os.Trace;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.blacklist.HookBlackList;
import com.swift.sandhook.wrapper.HookWrapper;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.classloaders.ProxyClassLoader;
import com.swift.sandhook.xposedcompat.hookstub.HookMethodEntity;
import com.swift.sandhook.xposedcompat.hookstub.HookStubManager;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import com.swift.sandhook.xposedcompat.utils.FileUtils;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicBridge {
    private static HookMaker defaultHookMaker;
    private static File dexDir;
    private static final AtomicBoolean dexPathInited;
    private static final Map<Member, HookMethodEntity> entityMap;
    private static final HashMap<Member, Method> hookedInfo;

    static {
        defaultHookMaker = XposedCompat.useNewCallBackup ? new HookerDexMakerNew() : new HookerDexMaker();
        dexPathInited = new AtomicBoolean(false);
        entityMap = new HashMap();
        hookedInfo = new HashMap<>();
    }

    private static boolean checkMember(Member member) {
        if ((member instanceof Method) || (member instanceof Constructor)) {
            return true;
        }
        if (member.getDeclaringClass().isInterface()) {
            DexLog.e("Cannot hook interfaces: " + member.toString());
            return false;
        }
        if (Modifier.isAbstract(member.getModifiers())) {
            DexLog.e("Cannot hook abstract methods: " + member.toString());
            return false;
        }
        DexLog.e("Only methods and constructors can be hooked: " + member.toString());
        return false;
    }

    public static void clearOatFile() {
        File file = new File(XposedCompat.getCacheDir().getAbsolutePath(), "/sandxposed/oat/");
        if (file.exists()) {
            try {
                FileUtils.delete(file);
                file.mkdirs();
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void hookMethod(Member member, XposedBridge.AdditionalHookInfo additionalHookInfo) {
        if (checkMember(member)) {
            if (hookedInfo.containsKey(member) || entityMap.containsKey(member)) {
                DexLog.w("already hook method:" + member.toString());
                return;
            }
            try {
                if (dexPathInited.compareAndSet(false, true)) {
                    try {
                        File file = new File(XposedCompat.getCacheDir().getAbsolutePath(), "/sandxposed/");
                        dexDir = file;
                        if (!file.exists()) {
                            dexDir.mkdirs();
                        }
                    } catch (Throwable th) {
                        DexLog.e("error when init dex path", th);
                    }
                }
                Trace.beginSection("SandHook-Xposed");
                long jCurrentTimeMillis = System.currentTimeMillis();
                String absolutePath = null;
                HookMethodEntity hookMethodEntity = (!XposedCompat.useInternalStub || HookBlackList.canNotHookByStub(member) || HookBlackList.canNotHookByBridge(member)) ? null : HookStubManager.getHookMethodEntity(member, additionalHookInfo);
                if (hookMethodEntity != null) {
                    SandHook.hook(new HookWrapper.HookEntity(member, hookMethodEntity.hook, hookMethodEntity.backup, false));
                    entityMap.put(member, hookMethodEntity);
                } else {
                    HookMaker hookerDexMaker = HookBlackList.canNotHookByBridge(member) ? new HookerDexMaker() : defaultHookMaker;
                    ProxyClassLoader proxyClassLoader = new ProxyClassLoader(DynamicBridge.class.getClassLoader(), member.getDeclaringClass().getClassLoader());
                    File file2 = dexDir;
                    if (file2 != null) {
                        absolutePath = file2.getAbsolutePath();
                    }
                    hookerDexMaker.start(member, additionalHookInfo, proxyClassLoader, absolutePath);
                    hookedInfo.put(member, hookerDexMaker.getCallBackupMethod());
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("hook method <");
                sb2.append(member.toString());
                sb2.append("> cost ");
                sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                sb2.append(" ms, by ");
                sb2.append(hookMethodEntity != null ? "internal stub" : "dex maker");
                DexLog.d(sb2.toString());
                Trace.endSection();
            } catch (Throwable th2) {
                DexLog.e("error occur when hook method <" + member.toString() + SimpleComparison.GREATER_THAN_OPERATION, th2);
            }
        }
    }
}
