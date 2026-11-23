package com.byazt.rl;

import android.annotation.TargetApi;
import android.util.SparseArray;
import c1.e;
import c1.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 117, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ValueSet f19472c = c(0).tt();
    public static final Bridge tt;
    public static final Function<SparseArray<Object>, Object> ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ValueSet f19473n;
    public final SparseArray<Object> uj;

    @com.byazt.zqa.c(c = {0, 1, 117, 24})
    private static final class c implements Bridge {
        private c() {
        }

        @Override // com.bykv.vk.openvk.api.proto.Caller
        public <T> T call(int i10, ValueSet valueSet, Class<T> cls) {
            if (cls == Boolean.class || cls == Boolean.TYPE) {
                return (T) Boolean.FALSE;
            }
            if (cls == Integer.TYPE || cls == Integer.class) {
                return (T) 0;
            }
            if (cls == Long.TYPE || cls == Long.class) {
                return (T) 0L;
            }
            if (cls == Double.TYPE || cls == Double.class) {
                return (T) Double.valueOf(0.0d);
            }
            if (cls == Float.TYPE || cls == Float.class) {
                return (T) Float.valueOf(0.0f);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.Bridge, com.bykv.vk.openvk.api.proto.Manager
        public ValueSet values() {
            return ve.f19472c;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 117, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    @TargetApi(24)
    private static final class tt<T, R> implements Function<T, R> {
        private tt() {
        }

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
    }

    /* JADX INFO: renamed from: com.byazt.rl.ve$ve, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 117, 917})
    private static final class C0421ve implements ValueSet {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SparseArray<Object> f19474c;
        public ValueSet tt;
        public int ve;

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T[] arrayValue(int i10, Class<T> cls) {
            Object obj = this.f19474c.get(i10);
            if (obj == null) {
                ValueSet valueSet = this.tt;
                if (valueSet != null) {
                    return (T[]) valueSet.arrayValue(i10, cls);
                }
                return null;
            }
            Class<?> cls2 = obj.getClass();
            if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
                return (T[]) ((Object[]) obj);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i10) {
            return booleanValue(i10, false);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean containsKey(int i10) {
            ValueSet valueSet;
            int iIndexOfKey = this.f19474c.indexOfKey(i10);
            if (iIndexOfKey >= 0 || (valueSet = this.tt) == null) {
                return iIndexOfKey >= 0;
            }
            return valueSet.containsKey(i10);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public double doubleValue(int i10) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.doubleValue(i10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            if (obj instanceof Double) {
                return ((Double) obj).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i10) {
            return floatValue(i10, 0.0f);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i10) {
            return intValue(i10, 0);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean isEmpty() {
            return size() <= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public Set<Integer> keys() {
            int size = this.f19474c.size();
            HashSet hashSet = new HashSet();
            for (int i10 = 0; i10 < size; i10++) {
                hashSet.add(Integer.valueOf(this.f19474c.keyAt(i10)));
            }
            ValueSet valueSet = this.tt;
            if (valueSet != null) {
                hashSet.addAll(valueSet.keys());
            }
            this.ve = hashSet.size();
            return hashSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i10) {
            return longValue(i10, 0L);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T objectValue(int i10, Class<T> cls) {
            T t10 = (T) this.f19474c.get(i10);
            if (t10 == null) {
                ValueSet valueSet = this.tt;
                if (valueSet != null) {
                    return (T) valueSet.objectValue(i10, cls);
                }
                return null;
            }
            if (e.a(t10)) {
                t10 = (T) f.a(t10).get();
            }
            if (cls.isInstance(t10)) {
                return t10;
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public void remove(int i10) {
            this.f19474c.remove(i10);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int size() {
            if (this.ve < 0) {
                keys();
            }
            return this.ve;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public SparseArray<Object> sparseArray() {
            SparseArray<Object> sparseArray;
            SparseArray<Object> sparseArray2 = new SparseArray<>();
            ValueSet valueSet = this.tt;
            if (valueSet != null && (sparseArray = valueSet.sparseArray()) != null && sparseArray.size() > 0) {
                for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                    sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
                }
            }
            SparseArray<Object> sparseArray3 = this.f19474c;
            if (sparseArray3 != null && sparseArray3.size() > 0) {
                for (int i11 = 0; i11 < this.f19474c.size(); i11++) {
                    sparseArray2.put(this.f19474c.keyAt(i11), this.f19474c.valueAt(i11));
                }
            }
            return sparseArray2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i10) {
            return stringValue(i10, null);
        }

        private C0421ve(SparseArray<Object> sparseArray, ValueSet valueSet) {
            this.ve = -1;
            this.f19474c = sparseArray;
            this.tt = valueSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i10, boolean z10) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.booleanValue(i10, z10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z10;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i10, float f10) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.floatValue(i10, f10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Float ? ((Float) obj).floatValue() : f10;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i10, int i11) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.intValue(i10, i11);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Integer ? ((Integer) obj).intValue() : i11;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i10, long j10) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.longValue(i10, j10);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof Long ? ((Long) obj).longValue() : j10;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i10, String str) {
            ValueSet valueSet;
            Object obj = this.f19474c.get(i10);
            if (obj == null && (valueSet = this.tt) != null) {
                return valueSet.stringValue(i10, str);
            }
            if (e.a(obj)) {
                obj = f.a(obj).get();
            }
            return obj instanceof String ? obj.toString() : str;
        }
    }

    static {
        tt = new c();
        ve = new tt();
    }

    private ve(SparseArray<Object> sparseArray) {
        this.uj = sparseArray == null ? new SparseArray<>() : sparseArray;
    }

    public static final ve c() {
        return new ve(new SparseArray());
    }

    public ValueSet tt() {
        return new C0421ve(this.uj, this.f19473n);
    }

    public static final ve c(int i10) {
        return new ve(new SparseArray(i10));
    }

    public static final ve c(SparseArray<Object> sparseArray) {
        return new ve(sparseArray);
    }

    public ve c(int i10, Object obj) {
        this.uj.put(i10, obj);
        return this;
    }

    public ve c(int i10, String str) {
        this.uj.put(i10, str);
        return this;
    }

    public ve c(int i10, int i11) {
        this.uj.put(i10, Integer.valueOf(i11));
        return this;
    }

    public ve c(int i10, double d10) {
        this.uj.put(i10, Double.valueOf(d10));
        return this;
    }

    public ve c(int i10, boolean z10) {
        this.uj.put(i10, Boolean.valueOf(z10));
        return this;
    }

    public ve c(int i10, long j10) {
        this.uj.put(i10, Long.valueOf(j10));
        return this;
    }

    public ve c(int i10, float f10) {
        this.uj.put(i10, Float.valueOf(f10));
        return this;
    }
}
