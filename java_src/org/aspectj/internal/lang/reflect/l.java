package org.aspectj.internal.lang.reflect;

import ad.u;
import org.aspectj.lang.reflect.PerClauseKind;

/* JADX INFO: loaded from: classes4.dex */
public class l implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PerClauseKind f95116a;

    protected l(PerClauseKind perClauseKind) {
        this.f95116a = perClauseKind;
    }

    @Override // ad.u
    public PerClauseKind getKind() {
        return this.f95116a;
    }

    public String toString() {
        return "issingleton()";
    }
}
