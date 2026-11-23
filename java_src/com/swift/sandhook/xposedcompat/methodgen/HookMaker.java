package com.swift.sandhook.xposedcompat.methodgen;

import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public interface HookMaker {
    Method getBackupMethod();

    Method getCallBackupMethod();

    Method getHookMethod();

    void start(Member member, XposedBridge.AdditionalHookInfo additionalHookInfo, ClassLoader classLoader, String str) throws Exception;
}
