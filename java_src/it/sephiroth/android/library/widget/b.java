package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class b implements WrapperListAdapter, Filterable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final ArrayList<HListView.c> f92041g = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ListAdapter f92042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<HListView.c> f92043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<HListView.c> f92044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f92045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f92046f;

    public b(ArrayList<HListView.c> headerViewInfos, ArrayList<HListView.c> footerViewInfos, ListAdapter adapter) {
        this.f92042b = adapter;
        this.f92046f = adapter instanceof Filterable;
        if (headerViewInfos == null) {
            this.f92043c = f92041g;
        } else {
            this.f92043c = headerViewInfos;
        }
        if (footerViewInfos == null) {
            this.f92044d = f92041g;
        } else {
            this.f92044d = footerViewInfos;
        }
        this.f92045e = a(this.f92043c) && a(this.f92044d);
    }

    private boolean a(ArrayList<HListView.c> infos) {
        if (infos == null) {
            return true;
        }
        Iterator<HListView.c> it2 = infos.iterator();
        while (it2.hasNext()) {
            if (!it2.next().f92028c) {
                return false;
            }
        }
        return true;
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            return this.f92045e && listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    public int b() {
        return this.f92044d.size();
    }

    public int c() {
        return this.f92043c.size();
    }

    public boolean d(View v10) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f92044d.size(); i10++) {
            if (this.f92044d.get(i10).f92026a == v10) {
                this.f92044d.remove(i10);
                if (a(this.f92043c) && a(this.f92044d)) {
                    z10 = true;
                }
                this.f92045e = z10;
                return true;
            }
        }
        return false;
    }

    public boolean e(View v10) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f92043c.size(); i10++) {
            if (this.f92043c.get(i10).f92026a == v10) {
                this.f92043c.remove(i10);
                if (a(this.f92043c) && a(this.f92044d)) {
                    z10 = true;
                }
                this.f92045e = z10;
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int iB;
        int iC;
        if (this.f92042b != null) {
            iB = b() + c();
            iC = this.f92042b.getCount();
        } else {
            iB = b();
            iC = c();
        }
        return iB + iC;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f92046f) {
            return ((Filterable) this.f92042b).getFilter();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        int count;
        int iC = c();
        if (position < iC) {
            return this.f92043c.get(position).f92027b;
        }
        int i10 = position - iC;
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i10 < count) {
                return this.f92042b.getItem(i10);
            }
        } else {
            count = 0;
        }
        return this.f92044d.get(i10 - count).f92027b;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        int i10;
        int iC = c();
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter == null || position < iC || (i10 = position - iC) >= listAdapter.getCount()) {
            return -1L;
        }
        return this.f92042b.getItemId(i10);
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int position) {
        int i10;
        int iC = c();
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter == null || position < iC || (i10 = position - iC) >= listAdapter.getCount()) {
            return -2;
        }
        return this.f92042b.getItemViewType(i10);
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int count;
        int iC = c();
        if (position < iC) {
            return this.f92043c.get(position).f92026a;
        }
        int i10 = position - iC;
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i10 < count) {
                return this.f92042b.getView(i10, convertView, parent);
            }
        } else {
            count = 0;
        }
        return this.f92044d.get(i10 - count).f92026a;
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            return listAdapter.getViewTypeCount();
        }
        return 1;
    }

    @Override // android.widget.WrapperListAdapter
    public ListAdapter getWrappedAdapter() {
        return this.f92042b;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            return listAdapter.hasStableIds();
        }
        return false;
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.f92042b;
        return listAdapter == null || listAdapter.isEmpty();
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int position) {
        int count;
        int iC = c();
        if (position < iC) {
            return this.f92043c.get(position).f92028c;
        }
        int i10 = position - iC;
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            count = listAdapter.getCount();
            if (i10 < count) {
                try {
                    return this.f92042b.isEnabled(i10);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else {
            count = 0;
        }
        return this.f92044d.get(i10 - count).f92028c;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver observer) {
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(observer);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver observer) {
        ListAdapter listAdapter = this.f92042b;
        if (listAdapter != null) {
            listAdapter.unregisterDataSetObserver(observer);
        }
    }
}
