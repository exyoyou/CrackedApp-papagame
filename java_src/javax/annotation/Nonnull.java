package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.When;

/* JADX INFO: loaded from: classes.dex */
@TypeQualifier
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface Nonnull {

    public static class a implements ub.a<Nonnull> {
        @Override // ub.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public When a(Nonnull nonnull, Object obj) {
            return obj == null ? When.NEVER : When.ALWAYS;
        }
    }

    When when() default When.ALWAYS;
}
