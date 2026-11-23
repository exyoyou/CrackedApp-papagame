package org.aspectj.internal.lang.reflect;

import ad.a0;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes4.dex */
public class f implements ad.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ad.c<?> f95093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0[] f95094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f95095c;

    public f(String str, ad.c cVar) {
        this.f95093a = cVar;
        this.f95095c = str;
        StringTokenizer stringTokenizer = new StringTokenizer(str.startsWith("(") ? str.substring(1, str.length() - 1) : str, ",");
        this.f95094b = new a0[stringTokenizer.countTokens()];
        int i10 = 0;
        while (true) {
            a0[] a0VarArr = this.f95094b;
            if (i10 >= a0VarArr.length) {
                return;
            }
            a0VarArr[i10] = new s(stringTokenizer.nextToken().trim());
            i10++;
        }
    }

    @Override // ad.j
    public ad.c a() {
        return this.f95093a;
    }

    @Override // ad.j
    public a0[] b() {
        return this.f95094b;
    }

    public String toString() {
        return "declare precedence : " + this.f95095c;
    }
}
