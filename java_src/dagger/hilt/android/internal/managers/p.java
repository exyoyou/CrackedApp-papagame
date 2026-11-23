package dagger.hilt.android.internal.managers;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;

/* JADX INFO: loaded from: classes8.dex */
public final class p implements jb.b<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f90811c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f90812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f90813e;

    @EntryPoint
    @InstallIn({eb.a.class})
    public interface b {
        gb.e b();
    }

    @EntryPoint
    @InstallIn({eb.c.class})
    public interface c {
        gb.g b();
    }

    public p(View view, boolean hasFragmentBindings) {
        this.f90813e = view;
        this.f90812d = hasFragmentBindings;
    }

    private Object a() {
        jb.b<?> bVarB = b(false);
        return this.f90812d ? ((c) dagger.hilt.a.a(bVarB, c.class)).b().a(this.f90813e).build() : ((b) dagger.hilt.a.a(bVarB, b.class)).b().a(this.f90813e).build();
    }

    private jb.b<?> b(boolean allowMissing) {
        if (this.f90812d) {
            Context contextC = c(a.class, allowMissing);
            if (contextC instanceof a) {
                return (jb.b) ((a) contextC).d();
            }
            if (allowMissing) {
                return null;
            }
            Context contextC2 = c(jb.b.class, allowMissing);
            jb.d.d(!(contextC2 instanceof jb.b), "%s, @WithFragmentBindings Hilt view must be attached to an @AndroidEntryPoint Fragment. Was attached to context %s", this.f90813e.getClass(), contextC2.getClass().getName());
        } else {
            Object objC = c(jb.b.class, allowMissing);
            if (objC instanceof jb.b) {
                return (jb.b) objC;
            }
            if (allowMissing) {
                return null;
            }
        }
        throw new IllegalStateException(String.format("%s, Hilt view must be attached to an @AndroidEntryPoint Fragment or Activity.", this.f90813e.getClass()));
    }

    private Context c(Class<?> parentType, boolean allowMissing) {
        Context contextE = e(this.f90813e.getContext(), parentType);
        if (contextE != fb.a.a(contextE.getApplicationContext())) {
            return contextE;
        }
        jb.d.d(allowMissing, "%s, Hilt view cannot be created using the application context. Use a Hilt Fragment or Activity context.", this.f90813e.getClass());
        return null;
    }

    private static Context e(Context context, Class<?> target) {
        while ((context instanceof ContextWrapper) && !target.isInstance(context)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    public jb.b<?> d() {
        return b(true);
    }

    @Override // jb.b
    public Object generatedComponent() {
        if (this.f90810b == null) {
            synchronized (this.f90811c) {
                if (this.f90810b == null) {
                    this.f90810b = a();
                }
            }
        }
        return this.f90810b;
    }

    public static final class a extends ContextWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f90814a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LayoutInflater f90815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LayoutInflater f90816c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final LifecycleEventObserver f90817d;

        /* JADX INFO: renamed from: dagger.hilt.android.internal.managers.p$a$a, reason: collision with other inner class name */
        class C1153a implements LifecycleEventObserver {
            C1153a() {
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    a.this.f90814a = null;
                    a.this.f90815b = null;
                    a.this.f90816c = null;
                }
            }
        }

        a(Context base, Fragment fragment) {
            super((Context) jb.d.b(base));
            C1153a c1153a = new C1153a();
            this.f90817d = c1153a;
            this.f90815b = null;
            Fragment fragment2 = (Fragment) jb.d.b(fragment);
            this.f90814a = fragment2;
            fragment2.getLifecycle().addObserver(c1153a);
        }

        Fragment d() {
            jb.d.c(this.f90814a, "The fragment has already been destroyed.");
            return this.f90814a;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String name) {
            if (!"layout_inflater".equals(name)) {
                return getBaseContext().getSystemService(name);
            }
            if (this.f90816c == null) {
                if (this.f90815b == null) {
                    this.f90815b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
                }
                this.f90816c = this.f90815b.cloneInContext(this);
            }
            return this.f90816c;
        }

        a(LayoutInflater baseInflater, Fragment fragment) {
            super((Context) jb.d.b(((LayoutInflater) jb.d.b(baseInflater)).getContext()));
            C1153a c1153a = new C1153a();
            this.f90817d = c1153a;
            this.f90815b = baseInflater;
            Fragment fragment2 = (Fragment) jb.d.b(fragment);
            this.f90814a = fragment2;
            fragment2.getLifecycle().addObserver(c1153a);
        }
    }
}
