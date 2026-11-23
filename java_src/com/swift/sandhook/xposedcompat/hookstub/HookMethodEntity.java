package com.swift.sandhook.xposedcompat.hookstub;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.utils.ParamWrapper;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes3.dex */
public class HookMethodEntity {
    public Method backup;
    public Method hook;
    public boolean isStatic;
    public Member origin;
    public Class[] parType;
    public Class retType;

    public HookMethodEntity(Member member, Method method, Method method2) {
        this.origin = member;
        this.hook = method;
        this.backup = method2;
        this.isStatic = Modifier.isStatic(member.getModifiers());
    }

    public Object getArg(int i10, long j10) {
        return ParamWrapper.addressToObject(this.parType[i10], j10);
    }

    public Object[] getArgs(long... jArr) {
        if (jArr == null || jArr.length == 0) {
            return new Object[0];
        }
        Class[] clsArr = this.parType;
        if (clsArr == null || clsArr.length == 0) {
            return new Object[0];
        }
        int i10 = !this.isStatic ? 1 : 0;
        Object[] objArr = new Object[clsArr.length];
        for (int i11 = i10; i11 < this.parType.length + i10; i11++) {
            int i12 = i11 - i10;
            objArr[i12] = getArg(i12, jArr[i11]);
        }
        return objArr;
    }

    public long[] getArgsAddress(long[] jArr, Object... objArr) {
        long[] jArr2;
        int i10;
        int i11 = 0;
        if (jArr == null || jArr.length == 0) {
            return new long[0];
        }
        if (this.isStatic) {
            jArr2 = new long[jArr.length];
            i10 = 0;
        } else {
            i10 = 1;
            jArr2 = new long[jArr.length + 1];
            jArr2[0] = jArr[0];
        }
        while (true) {
            Class[] clsArr = this.parType;
            if (i11 >= clsArr.length) {
                return jArr2;
            }
            jArr2[i11 + i10] = ParamWrapper.objectToAddress(clsArr[i11], objArr[i11]);
            i11++;
        }
    }

    public Object getResult(long j10) {
        if (isVoid()) {
            return null;
        }
        return ParamWrapper.addressToObject(this.retType, j10);
    }

    public long getResultAddress(Object obj) {
        if (isVoid()) {
            return 0L;
        }
        return ParamWrapper.objectToAddress(this.retType, obj);
    }

    public Object getThis(long j10) {
        if (this.isStatic) {
            return null;
        }
        return SandHook.getObject(j10);
    }

    public boolean isConstructor() {
        return this.origin instanceof Constructor;
    }

    public boolean isVoid() {
        Class cls = this.retType;
        return cls == null || Void.TYPE.equals(cls);
    }
}
