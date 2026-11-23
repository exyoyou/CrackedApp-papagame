package dagger.hilt.android.flags;

import android.content.Context;
import dagger.Module;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;
import dagger.hilt.android.c;
import dagger.multibindings.Multibinds;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
import java.util.Set;
import javax.inject.Qualifier;
import jb.d;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentGetContextFix {

    @Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD})
    @Qualifier
    public @interface DisableFragmentGetContextFix {
    }

    @EntryPoint
    @InstallIn({ib.a.class})
    public interface a {
        @DisableFragmentGetContextFix
        Set<Boolean> b();
    }

    @Module
    @InstallIn({ib.a.class})
    static abstract class b {
        b() {
        }

        @DisableFragmentGetContextFix
        @Multibinds
        abstract Set<Boolean> a();
    }

    private FragmentGetContextFix() {
    }

    public static boolean a(Context context) {
        Set<Boolean> setB = ((a) c.d(context, a.class)).b();
        d.d(setB.size() <= 1, "Cannot bind the flag @DisableFragmentGetContextFix more than once.", new Object[0]);
        if (setB.isEmpty()) {
            return true;
        }
        return setB.iterator().next().booleanValue();
    }
}
