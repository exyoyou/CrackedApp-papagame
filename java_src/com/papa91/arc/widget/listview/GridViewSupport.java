package com.papa91.arc.widget.listview;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class GridViewSupport extends GridView {
    private ArrayList<FixedViewInfo> mFooterViewInfos;
    private ArrayList<FixedViewInfo> mHeaderViewInfos;
    private ItemClickHandler mItemClickHandler;
    private int mNumColumns;
    private AdapterView.OnItemClickListener mOnItemClickListener;
    private AdapterView.OnItemLongClickListener mOnItemLongClickListener;
    private AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    private ArrayList<AdapterView.OnItemSelectedListener> mOnItemSelectedListenerList;
    private AbsListView.OnScrollListener mOnScrollListener;
    private ArrayList<AbsListView.OnScrollListener> mOnScrollListenerList;
    private ListAdapter mOriginalAdapter;
    private int mRowHeight;
    private View mViewForMeasureRowHeight;

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

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            int paddingLeft = GridViewSupport.this.getPaddingLeft() + getPaddingLeft();
            if (paddingLeft != i10) {
                offsetLeftAndRight(paddingLeft - i10);
            }
            super.onLayout(z10, i10, i11, i12, i13);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((GridViewSupport.this.getMeasuredWidth() - GridViewSupport.this.getPaddingLeft()) - GridViewSupport.this.getPaddingRight(), View.MeasureSpec.getMode(i10)), i11);
        }
    }

    protected static class HeaderViewGridAdapter implements WrapperListAdapter, Filterable {
        static final ArrayList<FixedViewInfo> EMPTY_INFO_LIST = new ArrayList<>();
        private final ListAdapter mAdapter;
        boolean mAreAllFixedViewsSelectable;
        ArrayList<FixedViewInfo> mFooterViewInfos;
        ArrayList<FixedViewInfo> mHeaderViewInfos;
        private final boolean mIsFilterable;
        private final DataSetObservable mDataSetObservable = new DataSetObservable();
        private int mNumColumns = 1;
        private int mRowHeight = -1;
        private boolean mCachePlaceHoldView = true;
        private boolean mCacheFirstHeaderView = false;

        public HeaderViewGridAdapter(ArrayList<FixedViewInfo> arrayList, ArrayList<FixedViewInfo> arrayList2, ListAdapter listAdapter) {
            this.mAdapter = listAdapter;
            this.mIsFilterable = listAdapter instanceof Filterable;
            if (arrayList == null) {
                this.mHeaderViewInfos = EMPTY_INFO_LIST;
            } else {
                this.mHeaderViewInfos = arrayList;
            }
            if (arrayList2 == null) {
                this.mFooterViewInfos = EMPTY_INFO_LIST;
            } else {
                this.mFooterViewInfos = arrayList2;
            }
            this.mAreAllFixedViewsSelectable = areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos);
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

        private int getAdapterAndPlaceHolderCount() {
            return (int) (Math.ceil((this.mAdapter.getCount() * 1.0f) / this.mNumColumns) * ((double) this.mNumColumns));
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mAdapter;
            return listAdapter == null || (this.mAreAllFixedViewsSelectable && listAdapter.areAllItemsEnabled());
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mAdapter != null ? ((getFootersCount() + getHeadersCount()) * this.mNumColumns) + getAdapterAndPlaceHolderCount() : (getFootersCount() + getHeadersCount()) * this.mNumColumns;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.mIsFilterable) {
                return ((Filterable) this.mAdapter).getFilter();
            }
            return null;
        }

        public int getFootersCount() {
            return this.mFooterViewInfos.size();
        }

        public int getHeadersCount() {
            return this.mHeaderViewInfos.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            int adapterAndPlaceHolderCount;
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
            if (this.mAdapter != null) {
                adapterAndPlaceHolderCount = getAdapterAndPlaceHolderCount();
                if (i13 < adapterAndPlaceHolderCount) {
                    if (i13 < this.mAdapter.getCount()) {
                        return this.mAdapter.getItem(i13);
                    }
                    return null;
                }
            } else {
                adapterAndPlaceHolderCount = 0;
            }
            int i14 = i13 - adapterAndPlaceHolderCount;
            if (i14 % this.mNumColumns == 0) {
                return this.mFooterViewInfos.get(i14).data;
            }
            return null;
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
            int headersCount = getHeadersCount() * this.mNumColumns;
            ListAdapter listAdapter = this.mAdapter;
            int adapterAndPlaceHolderCount = 0;
            int viewTypeCount = listAdapter == null ? 0 : listAdapter.getViewTypeCount() - 1;
            int size = -2;
            if (this.mCachePlaceHoldView && i10 < headersCount) {
                if (i10 == 0 && this.mCacheFirstHeaderView) {
                    size = this.mHeaderViewInfos.size() + viewTypeCount + this.mFooterViewInfos.size() + 1 + 1;
                }
                int i12 = this.mNumColumns;
                if (i10 % i12 != 0) {
                    size = viewTypeCount + (i10 / i12) + 1;
                }
            }
            int i13 = i10 - headersCount;
            if (this.mAdapter != null) {
                adapterAndPlaceHolderCount = getAdapterAndPlaceHolderCount();
                if (i13 >= 0 && i13 < adapterAndPlaceHolderCount) {
                    if (i13 < this.mAdapter.getCount()) {
                        size = this.mAdapter.getItemViewType(i13);
                    } else if (this.mCachePlaceHoldView) {
                        size = this.mHeaderViewInfos.size() + viewTypeCount + 1;
                    }
                }
            }
            return (!this.mCachePlaceHoldView || (i11 = i13 - adapterAndPlaceHolderCount) < 0 || i11 >= getCount() || i11 % this.mNumColumns == 0) ? size : viewTypeCount + this.mHeaderViewInfos.size() + 1 + (i11 / this.mNumColumns) + 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int adapterAndPlaceHolderCount;
            int headersCount = getHeadersCount();
            int i11 = this.mNumColumns;
            int i12 = headersCount * i11;
            if (i10 < i12) {
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
            int i13 = i10 - i12;
            if (this.mAdapter != null) {
                adapterAndPlaceHolderCount = getAdapterAndPlaceHolderCount();
                if (i13 < adapterAndPlaceHolderCount) {
                    if (i13 < this.mAdapter.getCount()) {
                        return this.mAdapter.getView(i13, view, viewGroup);
                    }
                    if (view == null) {
                        view = new View(viewGroup.getContext());
                    }
                    view.setVisibility(4);
                    view.setMinimumHeight(this.mRowHeight);
                    return view;
                }
            } else {
                adapterAndPlaceHolderCount = 0;
            }
            int i14 = i13 - adapterAndPlaceHolderCount;
            if (i14 >= getCount()) {
                throw new ArrayIndexOutOfBoundsException(i10);
            }
            ViewGroup viewGroup3 = this.mFooterViewInfos.get(i14 / this.mNumColumns).viewContainer;
            if (i10 % this.mNumColumns == 0) {
                return viewGroup3;
            }
            if (view == null) {
                view = new View(viewGroup.getContext());
            }
            view.setVisibility(4);
            view.setMinimumHeight(viewGroup3.getHeight());
            return view;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.mAdapter;
            int viewTypeCount = listAdapter == null ? 1 : listAdapter.getViewTypeCount();
            if (!this.mCachePlaceHoldView) {
                return viewTypeCount;
            }
            int size = this.mHeaderViewInfos.size() + 1 + this.mFooterViewInfos.size();
            if (this.mCacheFirstHeaderView) {
                size++;
            }
            return viewTypeCount + size;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.mAdapter;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            ListAdapter listAdapter = this.mAdapter;
            return listAdapter != null && listAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            ListAdapter listAdapter = this.mAdapter;
            return listAdapter == null || listAdapter.isEmpty();
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            int adapterAndPlaceHolderCount;
            int headersCount = getHeadersCount();
            int i11 = this.mNumColumns;
            int i12 = headersCount * i11;
            if (i10 < i12) {
                return i10 % i11 == 0 && this.mHeaderViewInfos.get(i10 / i11).isSelectable;
            }
            int i13 = i10 - i12;
            if (this.mAdapter != null) {
                adapterAndPlaceHolderCount = getAdapterAndPlaceHolderCount();
                if (i13 < adapterAndPlaceHolderCount) {
                    return i13 < this.mAdapter.getCount() && this.mAdapter.isEnabled(i13);
                }
            } else {
                adapterAndPlaceHolderCount = 0;
            }
            int i14 = i13 - adapterAndPlaceHolderCount;
            int i15 = this.mNumColumns;
            return i14 % i15 == 0 && this.mFooterViewInfos.get(i14 / i15).isSelectable;
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

        public boolean removeFooter(View view) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.mFooterViewInfos.size(); i10++) {
                if (this.mFooterViewInfos.get(i10).view == view) {
                    this.mFooterViewInfos.remove(i10);
                    if (areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos)) {
                        z10 = true;
                    }
                    this.mAreAllFixedViewsSelectable = z10;
                    this.mDataSetObservable.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public boolean removeHeader(View view) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.mHeaderViewInfos.size(); i10++) {
                if (this.mHeaderViewInfos.get(i10).view == view) {
                    this.mHeaderViewInfos.remove(i10);
                    if (areAllListInfosSelectable(this.mHeaderViewInfos) && areAllListInfosSelectable(this.mFooterViewInfos)) {
                        z10 = true;
                    }
                    this.mAreAllFixedViewsSelectable = z10;
                    this.mDataSetObservable.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public void setNumColumns(int i10) {
            if (i10 >= 1 && this.mNumColumns != i10) {
                this.mNumColumns = i10;
                notifyDataSetChanged();
            }
        }

        public void setRowHeight(int i10) {
            this.mRowHeight = i10;
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

    private class ItemClickHandler implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        private ItemClickHandler() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            int headerViewCount;
            if (GridViewSupport.this.mOnItemClickListener == null || (headerViewCount = i10 - (GridViewSupport.this.getHeaderViewCount() * GridViewSupport.this.getNumColumnsCompatible())) < 0) {
                return;
            }
            GridViewSupport.this.mOnItemClickListener.onItemClick(adapterView, view, headerViewCount, j10);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            int headerViewCount;
            if (GridViewSupport.this.mOnItemLongClickListener == null || (headerViewCount = i10 - (GridViewSupport.this.getHeaderViewCount() * GridViewSupport.this.getNumColumnsCompatible())) < 0) {
                return true;
            }
            GridViewSupport.this.mOnItemLongClickListener.onItemLongClick(adapterView, view, headerViewCount, j10);
            return true;
        }
    }

    public GridViewSupport(Context context) {
        super(context);
        this.mNumColumns = -1;
        this.mViewForMeasureRowHeight = null;
        this.mRowHeight = -1;
        this.mHeaderViewInfos = new ArrayList<>();
        this.mFooterViewInfos = new ArrayList<>();
        this.mOnScrollListenerList = new ArrayList<>();
        this.mOnItemSelectedListenerList = new ArrayList<>();
        this.mOnScrollListener = new AbsListView.OnScrollListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScroll(absListView, i10, i11, i12);
                    }
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScrollStateChanged(absListView, i10);
                    }
                }
            }
        };
        this.mOnItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onItemSelected(adapterView, view, i10, j10);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onNothingSelected(adapterView);
                    }
                }
            }
        };
        initHeaderGridView();
    }

    @TargetApi(16)
    private int getColumnWidthCompatible() {
        return super.getColumnWidth();
    }

    private ItemClickHandler getItemClickHandler() {
        if (this.mItemClickHandler == null) {
            this.mItemClickHandler = new ItemClickHandler();
        }
        return this.mItemClickHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public int getNumColumnsCompatible() {
        return super.getNumColumns();
    }

    private void initHeaderGridView() {
        setOnScrollListener(this.mOnScrollListener);
        setOnItemSelectedListener(this.mOnItemSelectedListener);
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

    public void addFooterView(View view) {
        addFooterView(view, null, true);
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }

    public void addOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (onItemSelectedListener == null || this.mOnItemSelectedListenerList.contains(onItemSelectedListener)) {
            return;
        }
        this.mOnItemSelectedListenerList.add(onItemSelectedListener);
    }

    public void addOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (onScrollListener == null || this.mOnScrollListenerList.contains(onScrollListener)) {
            return;
        }
        this.mOnScrollListenerList.add(onScrollListener);
    }

    public int getFooterViewCount() {
        return this.mFooterViewInfos.size();
    }

    public int getHeaderHeight(int i10) {
        if (i10 >= 0) {
            return this.mHeaderViewInfos.get(i10).view.getMeasuredHeight();
        }
        return 0;
    }

    public int getHeaderViewCount() {
        return this.mHeaderViewInfos.size();
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getHorizontalSpacing() {
        try {
            return super.getHorizontalSpacing();
        } catch (Exception unused) {
            return 0;
        }
    }

    public ListAdapter getOriginalAdapter() {
        return this.mOriginalAdapter;
    }

    public int getRowHeight() {
        int i10 = this.mRowHeight;
        if (i10 > 0) {
            return i10;
        }
        ListAdapter adapter = getAdapter();
        int numColumnsCompatible = getNumColumnsCompatible();
        if (adapter == null || adapter.getCount() <= (this.mHeaderViewInfos.size() + this.mFooterViewInfos.size()) * numColumnsCompatible) {
            return -1;
        }
        int columnWidthCompatible = getColumnWidthCompatible();
        View view = getAdapter().getView(numColumnsCompatible * this.mHeaderViewInfos.size(), this.mViewForMeasureRowHeight, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2, 0);
            view.setLayoutParams(layoutParams);
        }
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(columnWidthCompatible, 1073741824), 0, layoutParams.width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        this.mViewForMeasureRowHeight = view;
        int measuredHeight = view.getMeasuredHeight();
        this.mRowHeight = measuredHeight;
        return measuredHeight;
    }

    @Override // android.widget.GridView
    @TargetApi(16)
    public int getVerticalSpacing() {
        try {
            return super.getVerticalSpacing();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void invalidateRowHeight() {
        this.mRowHeight = -1;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mViewForMeasureRowHeight = null;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof HeaderViewGridAdapter)) {
            return;
        }
        HeaderViewGridAdapter headerViewGridAdapter = (HeaderViewGridAdapter) adapter;
        headerViewGridAdapter.setNumColumns(getNumColumnsCompatible());
        headerViewGridAdapter.setRowHeight(getRowHeight());
    }

    public boolean removeFooterView(View view) {
        boolean z10 = false;
        if (this.mFooterViewInfos.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((HeaderViewGridAdapter) adapter).removeFooter(view)) {
                z10 = true;
            }
            removeFixedViewInfo(view, this.mFooterViewInfos);
        }
        return z10;
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

    public void removeOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (onItemSelectedListener != null) {
            this.mOnItemSelectedListenerList.remove(onItemSelectedListener);
        }
    }

    public void removeOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        if (onScrollListener != null) {
            this.mOnScrollListenerList.remove(onScrollListener);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean z10) {
    }

    public void setClipChildrenSupper(boolean z10) {
        super.setClipChildren(false);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i10) {
        super.setNumColumns(i10);
        this.mNumColumns = i10;
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof HeaderViewGridAdapter)) {
            return;
        }
        ((HeaderViewGridAdapter) adapter).setNumColumns(i10);
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
        super.setOnItemClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.mOnItemLongClickListener = onItemLongClickListener;
        super.setOnItemLongClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    @Deprecated
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
    }

    @Override // android.widget.AbsListView
    @Deprecated
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        super.setOnScrollListener(onScrollListener);
    }

    @TargetApi(11)
    public void tryToScrollToBottomSmoothly() {
        smoothScrollToPositionFromTop(getAdapter().getCount() - 1, 0);
    }

    public void addFooterView(View view, Object obj, boolean z10) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof HeaderViewGridAdapter)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        FullWidthFixedViewLayout fullWidthFixedViewLayout = new FullWidthFixedViewLayout(getContext());
        if (layoutParams != null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            fullWidthFixedViewLayout.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        fullWidthFixedViewLayout.addView(view);
        fixedViewInfo.view = view;
        fixedViewInfo.viewContainer = fullWidthFixedViewLayout;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z10;
        this.mFooterViewInfos.add(fixedViewInfo);
        if (adapter != null) {
            ((HeaderViewGridAdapter) adapter).notifyDataSetChanged();
        }
    }

    public void addHeaderView(View view, Object obj, boolean z10) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof HeaderViewGridAdapter)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        FullWidthFixedViewLayout fullWidthFixedViewLayout = new FullWidthFixedViewLayout(getContext());
        if (layoutParams != null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            fullWidthFixedViewLayout.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
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

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        this.mOriginalAdapter = listAdapter;
        if (this.mHeaderViewInfos.size() <= 0 && this.mFooterViewInfos.size() <= 0) {
            super.setAdapter(listAdapter);
            return;
        }
        HeaderViewGridAdapter headerViewGridAdapter = new HeaderViewGridAdapter(this.mHeaderViewInfos, this.mFooterViewInfos, listAdapter);
        int numColumnsCompatible = getNumColumnsCompatible();
        if (numColumnsCompatible > 1) {
            headerViewGridAdapter.setNumColumns(numColumnsCompatible);
        }
        headerViewGridAdapter.setRowHeight(getRowHeight());
        super.setAdapter((ListAdapter) headerViewGridAdapter);
    }

    @TargetApi(11)
    public void tryToScrollToBottomSmoothly(int i10) {
        smoothScrollToPositionFromTop(getAdapter().getCount() - 1, 0, i10);
    }

    public GridViewSupport(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNumColumns = -1;
        this.mViewForMeasureRowHeight = null;
        this.mRowHeight = -1;
        this.mHeaderViewInfos = new ArrayList<>();
        this.mFooterViewInfos = new ArrayList<>();
        this.mOnScrollListenerList = new ArrayList<>();
        this.mOnItemSelectedListenerList = new ArrayList<>();
        this.mOnScrollListener = new AbsListView.OnScrollListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScroll(absListView, i10, i11, i12);
                    }
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScrollStateChanged(absListView, i10);
                    }
                }
            }
        };
        this.mOnItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onItemSelected(adapterView, view, i10, j10);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onNothingSelected(adapterView);
                    }
                }
            }
        };
        initHeaderGridView();
    }

    public GridViewSupport(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mNumColumns = -1;
        this.mViewForMeasureRowHeight = null;
        this.mRowHeight = -1;
        this.mHeaderViewInfos = new ArrayList<>();
        this.mFooterViewInfos = new ArrayList<>();
        this.mOnScrollListenerList = new ArrayList<>();
        this.mOnItemSelectedListenerList = new ArrayList<>();
        this.mOnScrollListener = new AbsListView.OnScrollListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i11, int i12, int i13) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScroll(absListView, i11, i12, i13);
                    }
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i11) {
                for (AbsListView.OnScrollListener onScrollListener : GridViewSupport.this.mOnScrollListenerList) {
                    if (onScrollListener != null) {
                        onScrollListener.onScrollStateChanged(absListView, i11);
                    }
                }
            }
        };
        this.mOnItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: com.papa91.arc.widget.listview.GridViewSupport.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i11, long j10) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onItemSelected(adapterView, view, i11, j10);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                for (AdapterView.OnItemSelectedListener onItemSelectedListener : GridViewSupport.this.mOnItemSelectedListenerList) {
                    if (onItemSelectedListener != null) {
                        onItemSelectedListener.onNothingSelected(adapterView);
                    }
                }
            }
        };
        initHeaderGridView();
    }
}
