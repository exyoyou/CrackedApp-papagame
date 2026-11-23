package com.tencent.bugly.proguard;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    /* JADX WARN: Code duplicated, block: B:55:0x00c5 A[PHI: r7
      0x00c5: PHI (r7v2 java.lang.String) = 
      (r7v1 java.lang.String)
      (r7v1 java.lang.String)
      (r7v3 java.lang.String)
      (r7v3 java.lang.String)
      (r7v4 java.lang.String)
      (r7v4 java.lang.String)
     binds: [B:21:0x0055, B:23:0x005b, B:26:0x0067, B:28:0x006d, B:36:0x0089, B:38:0x008f] A[DONT_GENERATE, DONT_INLINE]] */
    public static String a(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = 0;
        while (true) {
            String str = "map";
            if (i10 >= arrayList.size()) {
                Collections.reverse(arrayList);
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    String str2 = arrayList.get(i11);
                    if (str2.equals("list")) {
                        int i12 = i11 - 1;
                        arrayList.set(i12, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i12));
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    } else if (str2.equals("map")) {
                        int i13 = i11 - 1;
                        arrayList.set(i13, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i13) + ",");
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    } else if (str2.equals("Array")) {
                        int i14 = i11 - 1;
                        arrayList.set(i14, SimpleComparison.LESS_THAN_OPERATION + arrayList.get(i14));
                        arrayList.set(0, arrayList.get(0) + SimpleComparison.GREATER_THAN_OPERATION);
                    }
                }
                Collections.reverse(arrayList);
                Iterator<String> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    stringBuffer.append(it2.next());
                }
                return stringBuffer.toString();
            }
            String str3 = arrayList.get(i10);
            if (str3.equals("java.lang.Integer") || str3.equals("int")) {
                str = "int32";
            } else if (str3.equals("java.lang.Boolean") || str3.equals("boolean")) {
                str = "bool";
            } else if (str3.equals("java.lang.Byte") || str3.equals(MethodReflectParams.BYTE)) {
                str = MethodReflectParams.CHAR;
            } else {
                boolean zEquals = str3.equals("java.lang.Double");
                String str4 = MethodReflectParams.DOUBLE;
                if (zEquals || str3.equals(MethodReflectParams.DOUBLE)) {
                    str = str4;
                } else {
                    str4 = "float";
                    if (str3.equals("java.lang.Float") || str3.equals("float")) {
                        str = str4;
                    } else if (str3.equals("java.lang.Long") || str3.equals(MethodReflectParams.LONG)) {
                        str = "int64";
                    } else {
                        boolean zEquals2 = str3.equals("java.lang.Short");
                        str4 = MethodReflectParams.SHORT;
                        if (zEquals2 || str3.equals(MethodReflectParams.SHORT)) {
                            str = str4;
                        } else {
                            if (str3.equals("java.lang.Character")) {
                                throw new IllegalArgumentException("can not support java.lang.Character");
                            }
                            if (str3.equals("java.lang.String")) {
                                str = TypedValues.Custom.S_STRING;
                            } else if (str3.equals("java.util.List")) {
                                str = "list";
                            } else if (!str3.equals("java.util.Map")) {
                                str = str3;
                            }
                        }
                    }
                }
            }
            arrayList.set(i10, str);
            i10++;
        }
    }
}
