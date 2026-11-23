package com.haima.hmcp.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class LayoutInflateFactory implements LayoutInflater.Factory2 {
    public static final String TAG = "LayoutInflateFactory";
    private final HashMap<String, Constructor<? extends View>> sConstructorMap = new HashMap<>();
    private final Class<?>[] mConstructorSignature = {Context.class, AttributeSet.class};
    private final Object[] mConstructorArgs = new Object[2];

    /* JADX WARN: Code duplicated, block: B:29:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d9 A[Catch: all -> 0x00be, TryCatch #5 {all -> 0x00be, blocks: (B:10:0x0043, B:12:0x005b, B:13:0x006d, B:18:0x007f, B:27:0x00c3, B:31:0x00dd, B:32:0x00ea, B:30:0x00d9, B:34:0x00ec, B:35:0x010c, B:37:0x010e, B:38:0x012e, B:40:0x0130, B:41:0x014e), top: B:48:0x0043, inners: #6 }] */
    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Class clsAsSubclass;
        String name;
        Class cls;
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        if (-1 == str.indexOf(46)) {
            LogUtils.d(TAG, "huangli name not contains . name=" + str);
            return null;
        }
        Object[] objArr = this.mConstructorArgs;
        Context context2 = (Context) objArr[0];
        objArr[0] = context;
        Constructor<? extends View> constructor = this.sConstructorMap.get(str);
        try {
            try {
                try {
                    String str2 = TAG;
                    LogUtils.d(str2, "huangli name=" + str);
                    if (constructor == null) {
                        clsAsSubclass = getClass().getClassLoader().loadClass(str).asSubclass(View.class);
                        try {
                            Constructor<? extends View> constructor2 = clsAsSubclass.getConstructor(this.mConstructorSignature);
                            this.sConstructorMap.put(str, constructor2);
                            cls = clsAsSubclass;
                            constructor = constructor2;
                        } catch (Exception e10) {
                            e = e10;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(attributeSet.getPositionDescription());
                            sb2.append(": Error inflating class ");
                            if (clsAsSubclass == null) {
                                name = "<unknown>";
                            } else {
                                name = clsAsSubclass.getName();
                            }
                            sb2.append(name);
                            InflateException inflateException = new InflateException(sb2.toString());
                            inflateException.initCause(e);
                            throw inflateException;
                        }
                    } else {
                        cls = null;
                    }
                    try {
                        Object[] objArr2 = this.mConstructorArgs;
                        objArr2[1] = attributeSet;
                        constructor.setAccessible(true);
                        LogUtils.d(str2, "huangli constructor=" + constructor);
                        View viewNewInstance = constructor.newInstance(objArr2);
                        LogUtils.d(str2, "huangli constructor.newInstance view=" + viewNewInstance);
                        Object[] objArr3 = this.mConstructorArgs;
                        objArr3[0] = context2;
                        objArr3[1] = null;
                        return viewNewInstance;
                    } catch (Exception e11) {
                        e = e11;
                        clsAsSubclass = cls;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(attributeSet.getPositionDescription());
                        sb3.append(": Error inflating class ");
                        if (clsAsSubclass == null) {
                            name = "<unknown>";
                        } else {
                            name = clsAsSubclass.getName();
                        }
                        sb3.append(name);
                        InflateException inflateException2 = new InflateException(sb3.toString());
                        inflateException2.initCause(e);
                        throw inflateException2;
                    }
                } catch (Throwable th) {
                    Object[] objArr4 = this.mConstructorArgs;
                    objArr4[0] = context2;
                    objArr4[1] = null;
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
                clsAsSubclass = null;
            }
        } catch (ClassCastException e13) {
            InflateException inflateException3 = new InflateException(attributeSet.getPositionDescription() + ": Class is not a View " + str);
            inflateException3.initCause(e13);
            throw inflateException3;
        } catch (ClassNotFoundException e14) {
            InflateException inflateException4 = new InflateException(attributeSet.getPositionDescription() + ": Class not found " + str);
            inflateException4.initCause(e14);
            throw inflateException4;
        } catch (NoSuchMethodException e15) {
            InflateException inflateException5 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException5.initCause(e15);
            throw inflateException5;
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
