package com.byazt.mm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n0.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1704, 20})
public class c<E> extends SparseArray<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ValueSet f16948c;
    public final PluginValueSet tt;

    public c(ValueSet valueSet) {
        this.f16948c = valueSet == null ? com.byazt.rl.ve.f19472c : valueSet;
        this.tt = com.byazt.rl.c.f19468c;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [E, java.util.ArrayList, java.util.List] */
    private E c(int i10) {
        List list = (E) this.f16948c.objectValue(i10, Object.class);
        if (list == null) {
            list = (E) this.tt.objectValue(i10, Object.class);
        }
        if (list != null) {
            if (i10 == 9) {
                if (list == Bridge.class) {
                    return (E) a.a();
                }
                if (list == ValueSet.class) {
                    return SparseArray.class;
                }
            } else {
                if (list instanceof Bridge) {
                    return (E) new ve((Bridge) list);
                }
                if (list instanceof ValueSet) {
                    return (E) new c((ValueSet) list);
                }
                if (list instanceof EventListener) {
                    return (E) new uj((EventListener) list);
                }
                if (list instanceof Result) {
                    return (E) com.byazt.iob.c.c((Result) list);
                }
                if (list instanceof List) {
                    List list2 = list;
                    if (!list2.isEmpty() && (list2.get(0) instanceof Bridge)) {
                        ?? r10 = (E) new ArrayList();
                        Iterator<E> it2 = list2.iterator();
                        while (it2.hasNext()) {
                            r10.add(new ve((Bridge) it2.next()));
                        }
                        return r10;
                    }
                } else if (list instanceof Map) {
                    return (E) com.byazt.iob.c.uj(list);
                }
            }
        }
        return (E) list;
    }

    @Override // android.util.SparseArray
    public boolean contains(int i10) {
        return super.contains(i10) || this.f16948c.containsKey(i10) || this.tt.containsKey(i10);
    }

    @Override // android.util.SparseArray
    public E get(int i10, E e10) {
        E e11 = (E) super.get(i10, null);
        if (e11 != null) {
            return e11;
        }
        E eC = c(i10);
        return eC != null ? eC : e10;
    }

    public c(PluginValueSet pluginValueSet) {
        this.tt = pluginValueSet == null ? com.byazt.rl.c.f19468c : pluginValueSet;
        this.f16948c = com.byazt.rl.ve.f19472c;
    }
}
