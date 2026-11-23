package org.androidannotations.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface UiThread {

    public enum Propagation {
        ENQUEUE,
        REUSE
    }

    long delay() default 0;

    String id() default "";

    Propagation propagation() default Propagation.ENQUEUE;
}
