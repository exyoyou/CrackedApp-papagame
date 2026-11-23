package com.join.mgps.pulltorefresh.library;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import com.join.mgps.pulltorefresh.library.internal.LoadingLayout;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class c implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<LoadingLayout> f72216b = new HashSet<>();

    c() {
    }

    public void a(LoadingLayout layout) {
        if (layout != null) {
            this.f72216b.add(layout);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLastUpdatedLabel(CharSequence label) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setLastUpdatedLabel(label);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setLoadingDrawable(Drawable drawable) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setLoadingDrawable(drawable);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setPullLabel(CharSequence label) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setPullLabel(label);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setRefreshingLabel(CharSequence refreshingLabel) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setRefreshingLabel(refreshingLabel);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setReleaseLabel(CharSequence label) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setReleaseLabel(label);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.a
    public void setTextTypeface(Typeface tf) {
        Iterator<LoadingLayout> it2 = this.f72216b.iterator();
        while (it2.hasNext()) {
            it2.next().setTextTypeface(tf);
        }
    }
}
