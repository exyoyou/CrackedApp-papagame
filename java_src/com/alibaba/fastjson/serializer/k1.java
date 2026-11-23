package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: classes7.dex */
public class k1 implements f1 {
    @Override // com.alibaba.fastjson.serializer.f1
    public String a(Object obj, String str, Object obj2) {
        if (str == null || str.length() == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toUpperCase(charArray[0]);
        return new String(charArray);
    }
}
