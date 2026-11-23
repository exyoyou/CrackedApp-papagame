package com.papa91.arc.widget.view;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderGridView extends GridView {
    private static final String TAG = "HeaderGridView";
    private ArrayList<FixedViewInfo> mHeaderViewInfos;

    private static class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;
        public ViewGroup viewContainer;

        private FixedViewInfo() {
        }
    }

    private class FullWidthFixedViewLayout extends FrameLayout {
        public FullWidthFixedViewLayout(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((HeaderGridView.this.getMeasuredWidth() - HeaderGridView.this.getPaddingLeft()) - HeaderGridView.this.getPaddingRight(), View.MeasureSpec.getMode(i10)), i11);
        }
    }

    private static class HeaderViewGridAdapter implements WrapperListAdapter, Filterable {
        private final ListAdapter mAdapter;
        boolean mAreAllFixedViewsSelectable;
        ArrayList<FixedViewInfo> mHeaderViewInfos;
        private final boolean mIsFilterable;
        private final DataSetObservable mDataSetObservable = new DataSetObservable();
        private int mNumColumns = 1;

        public HeaderViewGridAdapter(ArrayList<FixedViewInfo> arrayList, ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mIsFilterable = listAdapter instanceof Filterable;
            if (arrayList == null) {
                throw new IllegalArgumentException("headerViewInfos cannot be null");
            }
            this.mHeaderViewInfos = arrayList;
            this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(arrayList);
        }

        private boolean areAllListInfosSelectable(ArrayList<FixedViewInfo> arrayList) {
            if (arrayList == null) {
                return true;
            }
            Iterator<FixedViewInfo> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (!it2.next().isSelectable) {
                    return false;
                }
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return this.mAreAllFixedViewsSelectable && listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter != null ? (getHeadersCount() * this.mNumColumns) + this.mAdapter.getCount() : getHeadersCount() * this.mNumColumns;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.mIsFilterable) {
                return ((Filterable) this.mAdapter).getFilter();
            }
            return null;
        }

        public int getHeadersCount() {
            return this.mHeaderViewInfos.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            int headersCount = getHeadersCount();
            int i11 = this.mNumColumns;
            int i12 = headersCount * i11;
            if (i10 < i12) {
                if (i10 % i11 == 0) {
                    return this.mHeaderViewInfos.get(i10 / i11).data;
                }
                return null;
            }
            int i13 = i10 - i12;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter == null || i13 >= listAdapter.getCount()) {
                throw new ArrayIndexOutOfBoundsException(i10);
            }
            return this.mAdapter.getItem(i13);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            int i11;
            int headersCount = getHeadersCount() * this.mNumColumns;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter == null || i10 < headersCount || (i11 = i10 - headersCount) >= listAdapter.getCount()) {
                return -1L;
            }
            return this.mAdapter.getItemId(i11);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i10) {
            int i11;
            int headersCount = getHeadersCount();
            int i12 = this.mNumColumns;
            int i13 = headersCount * i12;
            if (i10 < i13 && i10 % i12 != 0) {
                ListAdapter listAdapter = this.mAdapter;
                if (listAdapter != null) {
                    return listAdapter.getViewTypeCount();
                }
                return 1;
            }
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 == null || i10 < i13 || (i11 = i10 - i13) >= listAdapter2.getCount()) {
                return -2;
            }
            return this.mAdapter.getItemViewType(i11);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int headersCount = getHeadersCount();
            int i11 = this.mNumColumns;
            int i12 = headersCount * i11;
            if (i10 >= i12) {
                int i13 = i10 - i12;
                ListAdapter listAdapter = this.mAdapter;
                if (listAdapter == null || i13 >= listAdapter.getCount()) {
                    throw new ArrayIndexOutOfBoundsException(i10);
                }
                return this.mAdapter.getView(i13, view, viewGroup);
            }
            ViewGroup viewGroup2 = this.mHeaderViewInfos.get(i10 / i11).viewContainer;
            if (i10 % this.mNumColumns == 0) {
                return viewGroup2;
            }
            if (view == null) {
                view = new View(viewGroup.getContext());
            }
            view.setVisibility(4);
            view.setMinimumHeight(viewGroup2.getHeight());
            return view;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return listAdapter.getViewTypeCount() + 1;
            }
            return 2;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                return listAdapter.hasStableIds();
            }
            return false;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            ListAdapter listAdapter = this.mAdapter;
            return (listAdapter == null || listAdapter.isEmpty()) && getHeadersCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            int headersCount = getHeadersCount();
            int i11 = this.mNumColumns;
            int i12 = headersCount * i11;
            if (i10 < i12) {
                return i10 % i11 == 0 && this.mHeaderViewInfos.get(i10 / i11).isSelectable;
            }
            int i13 = i10 - i12;
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter == null || i13 >= listAdapter.getCount()) {
                throw new ArrayIndexOutOfBoundsException(i10);
            }
            return this.mAdapter.isEnabled(i13);
        }

        public void notifyDataSetChanged() {
            this.mDataSetObservable.notifyChanged();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.registerObserver(dataSetObserver);
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public boolean removeHeader(View view) {
            for (int i10 = 0; i10 < this.mHeaderViewInfos.size(); i10++) {
                if (this.mHeaderViewInfos.get(i10).view == view) {
                    this.mHeaderViewInfos.remove(i10);
                    this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(this.mHeaderViewInfos);
                    this.mDataSetObservable.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public void setNumColumns(int i10) {
            if (i10 < 1) {
                throw new IllegalArgumentException("Number of columns must be 1 or more");
            }
            if (this.mNumColumns != i10) {
                this.mNumColumns = i10;
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDataSetObservable.unregisterObserver(dataSetObserver);
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public HeaderGridView(Context context) {
        super(context);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    private void initHeaderGridView() {
        super.setClipChildren(false);
    }

    private void removeFixedViewInfo(View view, ArrayList<FixedViewInfo> arrayList) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (arrayList.get(i10).view == view) {
                arrayList.remove(i10);
                return;
            }
        }
    }

    public void addHeaderView(View view, Object obj, boolean z10) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof HeaderViewGridAdapter)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        FullWidthFixedViewLayout fullWidthFixedViewLayout = new FullWidthFixedViewLayout(getContext());
        fullWidthFixedViewLayout.addView(view);
        fixedViewInfo.view = view;
        fixedViewInfo.viewContainer = fullWidthFixedViewLayout;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z10;
        this.mHeaderViewInfos.add(fixedViewInfo);
        if (adapter != null) {
            ((HeaderViewGridAdapter) adapter).notifyDataSetChanged();
        }
    }

    public int getHeaderViewCount() {
        return this.mHeaderViewInfos.size();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof HeaderViewGridAdapter)) {
            return;
        }
        ((HeaderViewGridAdapter) adapter).setNumColumns(getNumColumns());
    }

    public boolean removeHeaderView(View view) {
        boolean z10 = false;
        if (this.mHeaderViewInfos.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((HeaderViewGridAdapter) adapter).removeHeader(view)) {
                z10 = true;
            }
            removeFixedViewInfo(view, this.mHeaderViewInfos);
        }
        return z10;
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean z10) {
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (this.mHeaderViewInfos.size() <= 0) {
            super.setAdapter(listAdapter);
            return;
        }
        HeaderViewGridAdapter headerViewGridAdapter = new HeaderViewGridAdapter(this.mHeaderViewInfos, listAdapter);
        int numColumns = getNumColumns();
        if (numColumns > 1) {
            headerViewGridAdapter.setNumColumns(numColumns);
        }
        super.setAdapter((ListAdapter) headerViewGridAdapter);
    }

    public HeaderGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    public HeaderGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mHeaderViewInfos = new ArrayList<>();
        initHeaderGridView();
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }
}
