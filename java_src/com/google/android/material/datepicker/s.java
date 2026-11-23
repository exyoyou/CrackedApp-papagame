package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
abstract class s<S> extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final LinkedHashSet<r<S>> f30582c = new LinkedHashSet<>();

    s() {
    }

    boolean M(r<S> rVar) {
        return this.f30582c.add(rVar);
    }

    void N() {
        this.f30582c.clear();
    }

    abstract DateSelector<S> O();

    boolean P(r<S> rVar) {
        return this.f30582c.remove(rVar);
    }
}
