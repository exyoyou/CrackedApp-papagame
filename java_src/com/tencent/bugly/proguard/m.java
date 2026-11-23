package com.tencent.bugly.proguard;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m implements Serializable {
    public abstract void a(k kVar);

    public abstract void a(l lVar);

    public abstract void a(StringBuilder sb2, int i10);

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2, 0);
        return sb2.toString();
    }
}
