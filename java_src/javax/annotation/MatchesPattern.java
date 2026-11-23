package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.When;

/* JADX INFO: loaded from: classes.dex */
@TypeQualifier(applicableTo = String.class)
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface MatchesPattern {

    public static class a implements ub.a<MatchesPattern> {
        @Override // ub.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public When a(MatchesPattern matchesPattern, Object obj) {
            return Pattern.compile(matchesPattern.value(), matchesPattern.flags()).matcher((String) obj).matches() ? When.ALWAYS : When.NEVER;
        }
    }

    int flags() default 0;

    @RegEx
    String value();
}
