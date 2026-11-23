package com.facebook.common.references;

import android.graphics.Bitmap;
import com.facebook.common.internal.h;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.FalseOnNull;
import com.facebook.infer.annotation.Nullsafe;
import java.util.IdentityHashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class SharedReference<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("itself")
    private static final Map<Object, Integer> f26913d = new IdentityHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private T f26914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private int f26915b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g<T> f26916c;

    public static class NullReferenceException extends RuntimeException {
        public NullReferenceException() {
            super("Null shared reference");
        }
    }

    public SharedReference(T t10, g<T> gVar) {
        this.f26914a = (T) i.i(t10);
        this.f26916c = (g) i.i(gVar);
        a(t10);
    }

    private static void a(Object value) {
        if (CloseableReference.z() && ((value instanceof Bitmap) || (value instanceof c))) {
            return;
        }
        Map<Object, Integer> map = f26913d;
        synchronized (map) {
            Integer num = map.get(value);
            if (num == null) {
                map.put(value, 1);
            } else {
                map.put(value, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private synchronized int d() {
        int i10;
        g();
        i.d(Boolean.valueOf(this.f26915b > 0));
        i10 = this.f26915b - 1;
        this.f26915b = i10;
        return i10;
    }

    private void g() {
        if (!k(this)) {
            throw new NullReferenceException();
        }
    }

    @FalseOnNull
    public static boolean k(@Nullable SharedReference<?> ref) {
        return ref != null && ref.j();
    }

    private static void l(Object value) {
        Map<Object, Integer> map = f26913d;
        synchronized (map) {
            Integer num = map.get(value);
            if (num == null) {
                i3.a.y0("SharedReference", "No entry in sLiveObjects for value of type %s", value.getClass());
            } else if (num.intValue() == 1) {
                map.remove(value);
            } else {
                map.put(value, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public static String m() {
        return h.f("SharedReference").d("live_objects_count", f26913d.size()).toString();
    }

    public synchronized void b() {
        g();
        this.f26915b++;
    }

    public synchronized boolean c() {
        if (!j()) {
            return false;
        }
        b();
        return true;
    }

    public void e() {
        T t10;
        if (d() == 0) {
            synchronized (this) {
                t10 = this.f26914a;
                this.f26914a = null;
            }
            if (t10 != null) {
                this.f26916c.release(t10);
                l(t10);
            }
        }
    }

    public synchronized boolean f() {
        if (!j()) {
            return false;
        }
        e();
        return true;
    }

    @Nullable
    public synchronized T h() {
        return this.f26914a;
    }

    public synchronized int i() {
        return this.f26915b;
    }

    public synchronized boolean j() {
        return this.f26915b > 0;
    }
}
