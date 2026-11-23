package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
public class a<T extends l<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Integer, T> f30835a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Integer> f30836b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f30837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f30838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30839e;

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    class C0602a implements l.a<T> {
        C0602a() {
        }

        @Override // com.google.android.material.internal.l.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(T t10, boolean z10) {
            if (!z10) {
                a aVar = a.this;
                if (!aVar.t(t10, aVar.f30839e)) {
                    return;
                }
            } else if (!a.this.g(t10)) {
                return;
            }
            a.this.n();
        }
    }

    public interface b {
        void a(@NonNull Set<Integer> set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(@NonNull l<T> lVar) {
        int id2 = lVar.getId();
        if (this.f30836b.contains(Integer.valueOf(id2))) {
            return false;
        }
        T t10 = this.f30835a.get(Integer.valueOf(k()));
        if (t10 != null) {
            t(t10, false);
        }
        boolean zAdd = this.f30836b.add(Integer.valueOf(id2));
        if (!lVar.isChecked()) {
            lVar.setChecked(true);
        }
        return zAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        b bVar = this.f30837c;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(@NonNull l<T> lVar, boolean z10) {
        int id2 = lVar.getId();
        if (!this.f30836b.contains(Integer.valueOf(id2))) {
            return false;
        }
        if (z10 && this.f30836b.size() == 1 && this.f30836b.contains(Integer.valueOf(id2))) {
            lVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.f30836b.remove(Integer.valueOf(id2));
        if (lVar.isChecked()) {
            lVar.setChecked(false);
        }
        return zRemove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(T t10) {
        this.f30835a.put(Integer.valueOf(t10.getId()), t10);
        if (t10.isChecked()) {
            g(t10);
        }
        t10.setInternalOnCheckedChangeListener(new C0602a());
    }

    public void f(@IdRes int i10) {
        T t10 = this.f30835a.get(Integer.valueOf(i10));
        if (t10 != null && g(t10)) {
            n();
        }
    }

    public void h() {
        boolean z10 = !this.f30836b.isEmpty();
        Iterator<T> it2 = this.f30835a.values().iterator();
        while (it2.hasNext()) {
            t(it2.next(), false);
        }
        if (z10) {
            n();
        }
    }

    @NonNull
    public Set<Integer> i() {
        return new HashSet(this.f30836b);
    }

    @NonNull
    public List<Integer> j(@NonNull ViewGroup viewGroup) {
        Set<Integer> setI = i();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof l) && setI.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    @IdRes
    public int k() {
        if (!this.f30838d || this.f30836b.isEmpty()) {
            return -1;
        }
        return this.f30836b.iterator().next().intValue();
    }

    public boolean l() {
        return this.f30839e;
    }

    public boolean m() {
        return this.f30838d;
    }

    public void o(T t10) {
        t10.setInternalOnCheckedChangeListener(null);
        this.f30835a.remove(Integer.valueOf(t10.getId()));
        this.f30836b.remove(Integer.valueOf(t10.getId()));
    }

    public void p(@Nullable b bVar) {
        this.f30837c = bVar;
    }

    public void q(boolean z10) {
        this.f30839e = z10;
    }

    public void r(boolean z10) {
        if (this.f30838d != z10) {
            this.f30838d = z10;
            h();
        }
    }

    public void s(@IdRes int i10) {
        T t10 = this.f30835a.get(Integer.valueOf(i10));
        if (t10 != null && t(t10, this.f30839e)) {
            n();
        }
    }
}
