package org.aspectj.internal.lang.reflect;

import ad.w;
import ad.x;
import org.aspectj.lang.reflect.PerClauseKind;

/* JADX INFO: loaded from: classes4.dex */
public class m extends l implements w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f95117b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95118a;

        static {
            int[] iArr = new int[PerClauseKind.values().length];
            f95118a = iArr;
            try {
                iArr[PerClauseKind.PERCFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95118a[PerClauseKind.PERCFLOWBELOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95118a[PerClauseKind.PERTARGET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95118a[PerClauseKind.PERTHIS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public m(PerClauseKind perClauseKind, String str) {
        super(perClauseKind);
        this.f95117b = new n(str);
    }

    @Override // ad.w
    public x b() {
        return this.f95117b;
    }

    @Override // org.aspectj.internal.lang.reflect.l
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = a.f95118a[getKind().ordinal()];
        if (i10 == 1) {
            stringBuffer.append("percflow(");
        } else if (i10 == 2) {
            stringBuffer.append("percflowbelow(");
        } else if (i10 == 3) {
            stringBuffer.append("pertarget(");
        } else if (i10 == 4) {
            stringBuffer.append("perthis(");
        }
        stringBuffer.append(this.f95117b.a());
        stringBuffer.append(")");
        return stringBuffer.toString();
    }
}
