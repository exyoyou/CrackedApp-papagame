package com.byazt.aq;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1950, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11714c;
    public float tt;

    public i(float f10, float f11) {
        this.f11714c = f10;
        this.tt = f11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            i iVar = (i) obj;
            if (Float.compare(iVar.f11714c, this.f11714c) == 0 && Float.compare(iVar.tt, this.tt) == 0) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f11714c), Float.valueOf(this.tt)});
    }
}
