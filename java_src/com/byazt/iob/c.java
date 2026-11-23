package com.byazt.iob;

import android.util.SparseArray;
import c1.e;
import c1.f;
import com.byazt.mm.n;
import com.byazt.mm.uj;
import com.byazt.rl.tt;
import com.byazt.rl.ve;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import n0.a;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1548, 20})
public class c {
    public static Result c(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        ValueSet valueSetTt = ve.c(sparseArray).tt();
        return tt.c().c(valueSetTt.intValue(-999900)).c(valueSetTt.stringValue(-999901)).c(valueSetTt.booleanValue(-999903)).c(tt((SparseArray<Object>) valueSetTt.objectValue(-999902, SparseArray.class))).tt();
    }

    public static ValueSet tt(SparseArray<Object> sparseArray) {
        SparseArray<Object> sparseArrayC;
        if (sparseArray == null) {
            return null;
        }
        ve veVarC = ve.c();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            c(veVarC, iKeyAt, sparseArray.get(iKeyAt));
        }
        if ((sparseArray instanceof com.byazt.yxi.c) && (sparseArrayC = ((com.byazt.yxi.c) sparseArray).c()) != null && sparseArrayC.size() > 0) {
            for (int i11 = 0; i11 < sparseArrayC.size(); i11++) {
                int iKeyAt2 = sparseArrayC.keyAt(i11);
                c(veVarC, iKeyAt2, sparseArrayC.get(iKeyAt2));
            }
        }
        return veVarC.tt();
    }

    public static Object uj(Object obj) {
        final HashMap map = new HashMap();
        ((Map) obj).forEach(new BiConsumer<Object, Object>() { // from class: com.byazt.iob.c.3
            @Override // java.util.function.BiConsumer
            public void accept(Object obj2, Object obj3) {
                if (obj3 instanceof Bridge) {
                    map.put(obj2, new com.byazt.mm.ve((Bridge) obj3));
                    return;
                }
                if (obj3 instanceof ValueSet) {
                    map.put(obj2, new com.byazt.mm.c((ValueSet) obj3));
                    return;
                }
                if (obj3 instanceof EventListener) {
                    map.put(obj2, new uj((EventListener) obj3));
                    return;
                }
                if (obj3 == Bridge.class) {
                    map.put(obj2, a.a());
                } else if (obj3 == ValueSet.class) {
                    map.put(obj2, SparseArray.class);
                } else {
                    map.put(obj2, obj3);
                }
            }
        });
        return map;
    }

    public static Object ve(Object obj) {
        final HashMap map = new HashMap();
        ((Map) obj).forEach(new BiConsumer<Object, Object>() { // from class: com.byazt.iob.c.2
            @Override // java.util.function.BiConsumer
            public void accept(Object obj2, Object obj3) {
                if (b.a(obj3)) {
                    if (c1.b.a(obj3) && c1.c.a(obj3).getAsLong() == -99999981) {
                        map.put(obj2, new n(n0.c.a(obj3)));
                        return;
                    } else {
                        map.put(obj2, new com.byazt.mm.tt(n0.c.a(obj3)));
                        return;
                    }
                }
                if (obj3 instanceof SparseArray) {
                    map.put(obj2, c.tt((SparseArray<Object>) obj3));
                    return;
                }
                if (obj3 == a.a()) {
                    map.put(obj2, Bridge.class);
                } else if (obj3 == SparseArray.class) {
                    map.put(obj2, ValueSet.class);
                } else {
                    map.put(obj2, obj3);
                }
            }
        });
        return map;
    }

    private static void c(ve veVar, int i10, final Object obj) {
        if (b.a(obj)) {
            if (c1.b.a(obj) && c1.c.a(obj).getAsLong() == -99999981) {
                veVar.c(i10, new n(n0.c.a(obj)));
                return;
            } else {
                veVar.c(i10, new com.byazt.mm.tt(n0.c.a(obj)));
                return;
            }
        }
        if (obj instanceof SparseArray) {
            if (i10 == -99999979) {
                veVar.c(i10, c((SparseArray<Object>) obj));
                return;
            } else {
                veVar.c(i10, tt((SparseArray<Object>) obj));
                return;
            }
        }
        if (e.a(obj) && !b.a(obj) && !(obj instanceof ValueSet)) {
            veVar.c(i10, new Supplier<Object>() { // from class: com.byazt.iob.c.1
                @Override // java.util.function.Supplier
                public Object get() {
                    return c.tt(f.a(obj).get());
                }
            });
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (!list.isEmpty() && b.a(list.get(0))) {
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.byazt.mm.tt(n0.c.a(it2.next())));
                }
                veVar.c(i10, arrayList);
                return;
            }
            veVar.c(i10, obj);
            return;
        }
        if (obj instanceof Map) {
            veVar.c(i10, ve(obj));
        } else {
            veVar.c(i10, obj);
        }
    }

    public static Object tt(Object obj) {
        if (b.a(obj)) {
            return new com.byazt.mm.tt(n0.c.a(obj));
        }
        if (obj instanceof SparseArray) {
            return tt((SparseArray<Object>) obj);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.isEmpty() || !b.a(list.get(0))) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new com.byazt.mm.tt(n0.c.a(it2.next())));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            return ve(obj);
        }
        if (obj == a.a()) {
            return Bridge.class;
        }
        return obj == SparseArray.class ? ValueSet.class : obj;
    }

    public static SparseArray<Object> c(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return new SparseArray<>();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, -99999986);
        sparseArray.put(-99999985, SparseArray.class);
        Object objApply = function.apply(sparseArray);
        if (objApply instanceof SparseArray) {
            return (SparseArray) objApply;
        }
        return new SparseArray<>();
    }

    public static Object c(Object obj) {
        if (obj instanceof Bridge) {
            return new com.byazt.mm.ve((Bridge) obj);
        }
        if (obj instanceof ValueSet) {
            return new com.byazt.mm.c((ValueSet) obj);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.isEmpty() || !(list.get(0) instanceof Bridge)) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new com.byazt.mm.ve((Bridge) it2.next()));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            return uj(obj);
        }
        if (obj == Bridge.class) {
            return a.a();
        }
        return obj == ValueSet.class ? SparseArray.class : obj;
    }

    public static SparseArray<Object> c(Result result) {
        if (result == null) {
            return null;
        }
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-999900, Integer.valueOf(result.code()));
        sparseArray.put(-999901, result.message());
        sparseArray.put(-999903, Boolean.valueOf(result.isSuccess()));
        sparseArray.put(-999902, new com.byazt.mm.c(result.values()));
        return sparseArray;
    }
}
