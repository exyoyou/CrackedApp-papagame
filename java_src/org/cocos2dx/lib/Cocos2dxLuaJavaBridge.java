package org.cocos2dx.lib;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxLuaJavaBridge {
    public static native int callLuaFunctionWithString(int i10, String str);

    public static native int callLuaGlobalFunctionWithString(String str, String str2);

    public static native int releaseLuaFunction(int i10);

    public static native int retainLuaFunction(int i10);
}
