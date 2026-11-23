package com.byazt.an;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1270, 13})
public abstract class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSetObservable f11648c = new DataSetObservable();
    public DataSetObserver tt;

    public float c(int i10) {
        return 1.0f;
    }

    public abstract int c();

    public abstract boolean c(View view, Object obj);

    public Parcelable tt() {
        return null;
    }

    public void ve() {
        synchronized (this) {
            DataSetObserver dataSetObserver = this.tt;
            if (dataSetObserver != null) {
                dataSetObserver.onChanged();
            }
        }
        this.f11648c.notifyChanged();
    }

    public int c(Object obj) {
        return -1;
    }

    public Object c(ViewGroup viewGroup, int i10) {
        return c((View) viewGroup, i10);
    }

    public void c(ViewGroup viewGroup, int i10, Object obj) {
        c((View) viewGroup, i10, obj);
    }

    @Deprecated
    public Object c(View view, int i10) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void c(View view, int i10, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void c(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.tt = dataSetObserver;
        }
    }
}
