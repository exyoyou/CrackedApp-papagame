package org.aspectj.lang.reflect;

import ad.a0;
import ad.c;
import ad.y;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes4.dex */
public interface DeclareAnnotation {

    public enum Kind {
        Field,
        Method,
        Constructor,
        Type
    }

    c<?> a();

    Annotation b();

    a0 c();

    String d();

    y e();

    Kind getKind();
}
