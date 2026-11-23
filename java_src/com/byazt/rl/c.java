package com.byazt.rl;

import android.util.SparseArray;
import c1.e;
import c1.f;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 117, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PluginValueSet f19468c = c(0).tt();
    public static final Function<SparseArray<Object>, Object> tt = new C0420c();
    public PluginValueSet uj;
    public final SparseArray<Object> ve;

    /* JADX INFO: renamed from: com.byazt.rl.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 117, 44})
    private static final class C0420c<T, R> implements Function<T, R> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.function.Function
        public R apply(T t10) {
            if (!(t10 instanceof SparseArray)) {
                return null;
            }
            Class cls = (Class) ((SparseArray) t10).get(-99999985);
            if (cls == Boolean.class || cls == Boolean.TYPE) {
                return (R) Boolean.FALSE;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                return (R) 0;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                return (R) 0L;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return (R) Double.valueOf(0.0d);
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return (R) Float.valueOf(0.0f);
            }
            return null;
        }

        private C0420c() {
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 117, 175})
    private static final class tt implements PluginValueSet {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray<Object> f19469c;
        public PluginValueSet tt;
        public int ve;

        private boolean c() {
            return com.byazt.mta.c.c().tt() >= 6803 && com.byazt.mta.c.c().tt() < 7000;
        }

        private boolean tt() {
            if (this.f19469c instanceof com.byazt.mm.c) {
                return true;
            }
            PluginValueSet pluginValueSet = this.tt;
            return pluginValueSet != null && (pluginValueSet.sparseArray() instanceof com.byazt.mm.c);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public <T> T[] arrayValue(int i10, Class<T> cls) {
            Object obj = this.f19469c.get(i10);
            if (obj == null) {
                PluginValueSet pluginValueSet = this.tt;
                if (pluginValueSet != null) {
                    return (T[]) pluginValueSet.arrayValue(i10, cls);
                }
                return null;
            }
            Class<?> cls2 = obj.getClass();
            if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
                return (T[]) ((Object[]) obj);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean booleanValue(int i10) {
            return booleanValue(i10, false);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean containsKey(int i10) {
            PluginValueSet pluginValueSet;
            int iIndexOfKey = this.f19469c.indexOfKey(i10);
            if (iIndexOfKey >= 0 || (pluginValueSet = this.tt) == null) {
                return iIndexOfKey >= 0;
            }
            return pluginValueSet.containsKey(i10);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public double doubleValue(int i10) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.doubleValue(i10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            if (obj instanceof Double) {
                return ((Double) obj).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public float floatValue(int i10) {
            return floatValue(i10, 0.0f);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int intValue(int i10) {
            return intValue(i10, 0);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean isEmpty() {
            return size() <= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public Set<Integer> keys() {
            int size = this.f19469c.size();
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < size; i10++) {
                hashSet.add(Integer.valueOf(this.f19469c.keyAt(i10)));
            }
            PluginValueSet pluginValueSet = this.tt;
            if (pluginValueSet != null) {
                hashSet.addAll(pluginValueSet.keys());
            }
            this.ve = hashSet.size();
            return hashSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public long longValue(int i10) {
            return longValue(i10, 0L);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public <T> T objectValue(int i10, Class<T> cls) {
            T t10 = (T) this.f19469c.get(i10);
            if (t10 == null) {
                PluginValueSet pluginValueSet = this.tt;
                if (pluginValueSet != null) {
                    return (T) pluginValueSet.objectValue(i10, cls);
                }
                return null;
            }
            if (c(t10)) {
                t10 = (T) f.a(t10).get();
            }
            if (cls.isInstance(t10)) {
                return t10;
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public void remove(int i10) {
            this.f19469c.remove(i10);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int size() {
            if (this.ve < 0) {
                keys();
            }
            return this.ve;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public SparseArray<Object> sparseArray() {
            SparseArray<Object> sparseArray;
            if (com.byazt.mta.c.c().tt() < 6803 && tt()) {
                return new com.byazt.mm.c(this);
            }
            SparseArray<Object> sparseArray2 = new SparseArray<>();
            PluginValueSet pluginValueSet = this.tt;
            if (pluginValueSet != null && (sparseArray = pluginValueSet.sparseArray()) != null && sparseArray.size() > 0) {
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
                }
            }
            SparseArray<Object> sparseArray3 = this.f19469c;
            if (sparseArray3 != null && sparseArray3.size() > 0) {
                for (int i11 = 0; i11 < this.f19469c.size(); i11++) {
                    sparseArray2.put(this.f19469c.keyAt(i11), this.f19469c.valueAt(i11));
                }
            }
            return sparseArray2;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public String stringValue(int i10) {
            return stringValue(i10, null);
        }

        private tt(SparseArray<Object> sparseArray, PluginValueSet pluginValueSet) {
            this.ve = -1;
            this.f19469c = sparseArray;
            this.tt = pluginValueSet;
        }

        private boolean c(Object obj) {
            if (c()) {
                return (!e.a(obj) || b.a(obj) || (obj instanceof ValueSet)) ? false : true;
            }
            return e.a(obj) && !b.a(obj);
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public boolean booleanValue(int i10, boolean z10) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.booleanValue(i10, z10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z10;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public float floatValue(int i10, float f10) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.floatValue(i10, f10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Float ? ((Float) obj).floatValue() : f10;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public int intValue(int i10, int i11) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.intValue(i10, i11);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Integer ? ((Integer) obj).intValue() : i11;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public long longValue(int i10, long j10) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.longValue(i10, j10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Long ? ((Long) obj).longValue() : j10;
        }

        @Override // com.bykv.vk.openvk.api.proto.PluginValueSet
        public String stringValue(int i10, String str) {
            PluginValueSet pluginValueSet;
            Object obj = this.f19469c.get(i10);
            if (obj == null && (pluginValueSet = this.tt) != null) {
                return pluginValueSet.stringValue(i10, str);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof String ? obj.toString() : str;
        }
    }

    private c(SparseArray<Object> sparseArray, PluginValueSet pluginValueSet) {
        this.ve = sparseArray;
        this.uj = pluginValueSet;
    }

    public static final c c() {
        return new c(new SparseArray());
    }

    public PluginValueSet tt() {
        return new tt(this.ve, this.uj);
    }

    public static final c c(int i10) {
        return new c(new SparseArray(i10));
    }

    public static final c c(SparseArray<Object> sparseArray) {
        return new c(sparseArray);
    }

    private c(SparseArray<Object> sparseArray) {
        this.ve = sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public static final c c(PluginValueSet pluginValueSet) {
        return new c(new SparseArray(), pluginValueSet);
    }

    public c c(int i10, Object obj) {
        this.ve.put(i10, obj);
        return this;
    }

    public c c(int i10, String str) {
        this.ve.put(i10, str);
        return this;
    }

    public c c(int i10, int i11) {
        this.ve.put(i10, Integer.valueOf(i11));
        return this;
    }

    public c c(int i10, double d10) {
        this.ve.put(i10, Double.valueOf(d10));
        return this;
    }

    public c c(int i10, boolean z10) {
        this.ve.put(i10, Boolean.valueOf(z10));
        return this;
    }

    public c c(int i10, float f10) {
        this.ve.put(i10, Float.valueOf(f10));
        return this;
    }
}
