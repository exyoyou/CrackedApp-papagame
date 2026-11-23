package tc;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DataSetObservable f97362a = new DataSetObservable();

    public abstract int a();

    public abstract c b(Context context);

    public abstract d c(Context context, int i10);

    public float d(Context context, int i10) {
        return 1.0f;
    }

    public final void e() {
        this.f97362a.notifyChanged();
    }

    public final void f() {
        this.f97362a.notifyInvalidated();
    }

    public final void g(DataSetObserver dataSetObserver) {
        this.f97362a.registerObserver(dataSetObserver);
    }

    public final void h(DataSetObserver dataSetObserver) {
        this.f97362a.unregisterObserver(dataSetObserver);
    }
}
