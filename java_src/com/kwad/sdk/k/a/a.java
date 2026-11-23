package com.kwad.sdk.k.a;

import android.content.Context;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c {
    protected List<c> bms;
    protected boolean enabled;

    public a(boolean z10) {
        this.enabled = z10;
    }

    private List<c> getChildren() {
        return this.bms;
    }

    @Override // com.kwad.sdk.k.a.c
    public final boolean cG(Context context) {
        if (!this.enabled) {
            return false;
        }
        List<c> children = getChildren();
        if (children == null || children.size() <= 0) {
            try {
                return cH(context);
            } catch (Throwable unused) {
                return false;
            }
        }
        Iterator<c> it2 = children.iterator();
        while (it2.hasNext()) {
            if (it2.next().cG(context)) {
                return true;
            }
        }
        return false;
    }

    protected boolean cH(Context context) {
        return false;
    }

    public a() {
        this.enabled = true;
    }
}
