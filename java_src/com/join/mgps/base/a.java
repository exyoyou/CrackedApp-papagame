package com.join.mgps.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import com.join.mgps.base.b;
import j6.b;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<T extends j6.b, K extends b> extends BaseQuickAdapter<T, K> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f64096f = -255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f64097g = -404;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SparseIntArray f64098e;

    public a(List<T> data) {
        super(data);
    }

    private int s(int viewType) {
        return this.f64098e.get(viewType, f64097g);
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        T t10 = this.mData.get(position);
        return t10 != null ? t10.getItemType() : f64096f;
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    protected K onCreateDefViewHolder(ViewGroup parent, int viewType) {
        return createBaseViewHolder(parent, s(viewType));
    }

    protected void r(int type, @LayoutRes int layoutResId) {
        if (this.f64098e == null) {
            this.f64098e = new SparseIntArray();
        }
        this.f64098e.put(type, layoutResId);
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    public void remove(@IntRange(from = 0) int position) {
        List<T> list = this.mData;
        if (list == null || position < 0 || position >= list.size()) {
            return;
        }
        T t10 = this.mData.get(position);
        if (t10 instanceof j6.a) {
            v((j6.a) t10, position);
        }
        w(t10);
        super.remove(position);
    }

    public int t(int position) {
        List<T> data = getData();
        T item = getItem(position);
        if (!isExpandable(item)) {
            for (int i10 = position - 1; i10 >= 0; i10--) {
                if (isExpandable(data.get(i10))) {
                    return i10;
                }
            }
            return -1;
        }
        j6.a aVar = (j6.a) item;
        for (int i11 = position - 1; i11 >= 0; i11--) {
            T t10 = data.get(i11);
            if (isExpandable(t10) && aVar.getLevel() > ((j6.a) t10).getLevel()) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.join.mgps.base.BaseQuickAdapter
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public boolean isExpandable(j6.b item) {
        return item != null && (item instanceof j6.a);
    }

    protected void v(j6.a parent, int parentPosition) {
        List listC;
        if (!parent.b() || (listC = parent.c()) == null || listC.size() == 0) {
            return;
        }
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            remove(parentPosition + 1);
        }
    }

    protected void w(T child) {
        j6.a aVar;
        int parentPosition = getParentPosition(child);
        if (parentPosition < 0 || (aVar = (j6.a) this.mData.get(parentPosition)) == child) {
            return;
        }
        aVar.c().remove(child);
    }

    protected void x(@LayoutRes int layoutResId) {
        r(f64096f, layoutResId);
    }
}
