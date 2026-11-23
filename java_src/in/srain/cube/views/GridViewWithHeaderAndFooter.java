package in.srain.cube.views;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
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

/* JADX INFO: loaded from: classes5.dex */
public class GridViewWithHeaderAndFooter extends GridView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f91582o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f91583p = "GridViewHeaderAndFooter";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdapterView.OnItemClickListener f91584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdapterView.OnItemLongClickListener f91585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f91586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f91587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f91588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<b> f91589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<b> f91590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ListAdapter f91591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private e f91592j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f91593k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f91594l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f91595m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f91596n;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f91597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ViewGroup f91598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f91599c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f91600d;

        private b() {
        }
    }

    private class c extends FrameLayout {
        public c(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
            int paddingLeft = GridViewWithHeaderAndFooter.this.getPaddingLeft() + getPaddingLeft();
            if (paddingLeft != left) {
                offsetLeftAndRight(paddingLeft - left);
            }
            super.onLayout(changed, left, top, right, bottom);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((GridViewWithHeaderAndFooter.this.getMeasuredWidth() - GridViewWithHeaderAndFooter.this.getPaddingLeft()) - GridViewWithHeaderAndFooter.this.getPaddingRight(), View.MeasureSpec.getMode(widthMeasureSpec)), heightMeasureSpec);
        }
    }

    private static class d implements WrapperListAdapter, Filterable {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        static final ArrayList<b> f91602l = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ListAdapter f91604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<b> f91605d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ArrayList<b> f91606e;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f91609h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f91610i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final DataSetObservable f91603b = new DataSetObservable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f91607f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f91608g = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f91611j = true;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f91612k = false;

        public d(ArrayList<b> headerViewInfos, ArrayList<b> footViewInfos, ListAdapter adapter) {
            this.f91604c = adapter;
            this.f91610i = adapter instanceof Filterable;
            if (headerViewInfos == null) {
                this.f91605d = f91602l;
            } else {
                this.f91605d = headerViewInfos;
            }
            if (footViewInfos == null) {
                this.f91606e = f91602l;
            } else {
                this.f91606e = footViewInfos;
            }
            this.f91609h = a(this.f91605d) && a(this.f91606e);
        }

        private boolean a(ArrayList<b> infos) {
            if (infos == null) {
                return true;
            }
            Iterator<b> it2 = infos.iterator();
            while (it2.hasNext()) {
                if (!it2.next().f91600d) {
                    return false;
                }
            }
            return true;
        }

        private int b() {
            return (int) (Math.ceil((this.f91604c.getCount() * 1.0f) / this.f91607f) * ((double) this.f91607f));
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f91604c;
            return listAdapter == null || (this.f91609h && listAdapter.areAllItemsEnabled());
        }

        public int c() {
            return this.f91606e.size();
        }

        public int d() {
            return this.f91605d.size();
        }

        public void e() {
            this.f91603b.notifyChanged();
        }

        public boolean f(View v10) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.f91606e.size(); i10++) {
                if (this.f91606e.get(i10).f91597a == v10) {
                    this.f91606e.remove(i10);
                    if (a(this.f91605d) && a(this.f91606e)) {
                        z10 = true;
                    }
                    this.f91609h = z10;
                    this.f91603b.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        public boolean g(View v10) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.f91605d.size(); i10++) {
                if (this.f91605d.get(i10).f91597a == v10) {
                    this.f91605d.remove(i10);
                    if (a(this.f91605d) && a(this.f91606e)) {
                        z10 = true;
                    }
                    this.f91609h = z10;
                    this.f91603b.notifyChanged();
                    return true;
                }
            }
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f91604c != null ? ((c() + d()) * this.f91607f) + b() : (c() + d()) * this.f91607f;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            if (this.f91610i) {
                return ((Filterable) this.f91604c).getFilter();
            }
            return null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            int iB;
            int iD = d();
            int i10 = this.f91607f;
            int i11 = iD * i10;
            if (position < i11) {
                if (position % i10 == 0) {
                    return this.f91605d.get(position / i10).f91599c;
                }
                return null;
            }
            int i12 = position - i11;
            if (this.f91604c != null) {
                iB = b();
                if (i12 < iB) {
                    if (i12 < this.f91604c.getCount()) {
                        return this.f91604c.getItem(i12);
                    }
                    return null;
                }
            } else {
                iB = 0;
            }
            int i13 = i12 - iB;
            if (i13 % this.f91607f == 0) {
                return this.f91606e.get(i13).f91599c;
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            int i10;
            int iD = d() * this.f91607f;
            ListAdapter listAdapter = this.f91604c;
            if (listAdapter == null || position < iD || (i10 = position - iD) >= listAdapter.getCount()) {
                return -1L;
            }
            return this.f91604c.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int position) {
            int iB;
            int i10;
            int iD = d() * this.f91607f;
            ListAdapter listAdapter = this.f91604c;
            int viewTypeCount = listAdapter == null ? 0 : listAdapter.getViewTypeCount() - 1;
            int size = -2;
            if (this.f91611j && position < iD) {
                if (position == 0 && this.f91612k) {
                    size = this.f91605d.size() + viewTypeCount + this.f91606e.size() + 1 + 1;
                }
                int i11 = this.f91607f;
                if (position % i11 != 0) {
                    size = viewTypeCount + (position / i11) + 1;
                }
            }
            int i12 = position - iD;
            if (this.f91604c != null) {
                iB = b();
                if (i12 >= 0 && i12 < iB) {
                    if (i12 < this.f91604c.getCount()) {
                        size = this.f91604c.getItemViewType(i12);
                    } else if (this.f91611j) {
                        size = this.f91605d.size() + viewTypeCount + 1;
                    }
                }
            } else {
                iB = 0;
            }
            if (this.f91611j && (i10 = i12 - iB) >= 0 && i10 < getCount() && i10 % this.f91607f != 0) {
                size = viewTypeCount + this.f91605d.size() + 1 + (i10 / this.f91607f) + 1;
            }
            if (GridViewWithHeaderAndFooter.f91582o) {
                String.format("getItemViewType: pos: %s, result: %s", Integer.valueOf(position), Integer.valueOf(size), Boolean.valueOf(this.f91611j), Boolean.valueOf(this.f91612k));
            }
            return size;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            int iB = 0;
            if (GridViewWithHeaderAndFooter.f91582o) {
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(position);
                objArr[1] = Boolean.valueOf(convertView == null);
                String.format("getView: %s, reused: %s", objArr);
            }
            int iD = d();
            int i10 = this.f91607f;
            int i11 = iD * i10;
            if (position < i11) {
                ViewGroup viewGroup = this.f91605d.get(position / i10).f91598b;
                if (position % this.f91607f == 0) {
                    return viewGroup;
                }
                if (convertView == null) {
                    convertView = new View(parent.getContext());
                }
                convertView.setVisibility(4);
                convertView.setMinimumHeight(viewGroup.getHeight());
                return convertView;
            }
            int i12 = position - i11;
            if (this.f91604c != null && i12 < (iB = b())) {
                if (i12 < this.f91604c.getCount()) {
                    return this.f91604c.getView(i12, convertView, parent);
                }
                if (convertView == null) {
                    convertView = new View(parent.getContext());
                }
                convertView.setVisibility(4);
                convertView.setMinimumHeight(this.f91608g);
                return convertView;
            }
            int i13 = i12 - iB;
            if (i13 >= getCount()) {
                throw new ArrayIndexOutOfBoundsException(position);
            }
            ViewGroup viewGroup2 = this.f91606e.get(i13 / this.f91607f).f91598b;
            if (position % this.f91607f == 0) {
                return viewGroup2;
            }
            if (convertView == null) {
                convertView = new View(parent.getContext());
            }
            convertView.setVisibility(4);
            convertView.setMinimumHeight(viewGroup2.getHeight());
            return convertView;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            ListAdapter listAdapter = this.f91604c;
            int viewTypeCount = listAdapter == null ? 1 : listAdapter.getViewTypeCount();
            if (this.f91611j) {
                int size = this.f91605d.size() + 1 + this.f91606e.size();
                if (this.f91612k) {
                    size++;
                }
                viewTypeCount += size;
            }
            if (GridViewWithHeaderAndFooter.f91582o) {
                String.format("getViewTypeCount: %s", Integer.valueOf(viewTypeCount));
            }
            return viewTypeCount;
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.f91604c;
        }

        public void h(int numColumns) {
            if (numColumns >= 1 && this.f91607f != numColumns) {
                this.f91607f = numColumns;
                e();
            }
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            ListAdapter listAdapter = this.f91604c;
            return listAdapter != null && listAdapter.hasStableIds();
        }

        public void i(int height) {
            this.f91608g = height;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            ListAdapter listAdapter = this.f91604c;
            return listAdapter == null || listAdapter.isEmpty();
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int position) {
            int iB;
            int iD = d();
            int i10 = this.f91607f;
            int i11 = iD * i10;
            if (position < i11) {
                return position % i10 == 0 && this.f91605d.get(position / i10).f91600d;
            }
            int i12 = position - i11;
            if (this.f91604c != null) {
                iB = b();
                if (i12 < iB) {
                    return i12 < this.f91604c.getCount() && this.f91604c.isEnabled(i12);
                }
            } else {
                iB = 0;
            }
            int i13 = i12 - iB;
            int i14 = this.f91607f;
            return i13 % i14 == 0 && this.f91606e.get(i13 / i14).f91600d;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver observer) {
            this.f91603b.registerObserver(observer);
            ListAdapter listAdapter = this.f91604c;
            if (listAdapter != null) {
                listAdapter.registerDataSetObserver(observer);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver observer) {
            this.f91603b.unregisterObserver(observer);
            ListAdapter listAdapter = this.f91604c;
            if (listAdapter != null) {
                listAdapter.unregisterDataSetObserver(observer);
            }
        }
    }

    private class e implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
        private e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.f91584b == null || (headerViewCount = position - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) < 0) {
                return;
            }
            GridViewWithHeaderAndFooter.this.f91584b.onItemClick(parent, view, headerViewCount, id2);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id2) {
            int headerViewCount;
            if (GridViewWithHeaderAndFooter.this.f91585c == null || (headerViewCount = position - (GridViewWithHeaderAndFooter.this.getHeaderViewCount() * GridViewWithHeaderAndFooter.this.getNumColumnsCompatible())) < 0) {
                return true;
            }
            GridViewWithHeaderAndFooter.this.f91585c.onItemLongClick(parent, view, headerViewCount, id2);
            return true;
        }
    }

    public GridViewWithHeaderAndFooter(Context context) {
        super(context);
        this.f91586d = -1;
        this.f91587e = null;
        this.f91588f = -1;
        this.f91589g = new ArrayList<>();
        this.f91590h = new ArrayList<>();
        i();
    }

    @TargetApi(16)
    private int getColumnWidthCompatible() {
        return super.getColumnWidth();
    }

    private e getItemClickHandler() {
        if (this.f91592j == null) {
            this.f91592j = new e();
        }
        return this.f91592j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public int getNumColumnsCompatible() {
        return super.getNumColumns();
    }

    private void i() {
    }

    private void k(View v10, ArrayList<b> where) {
        int size = where.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (where.get(i10).f91597a == v10) {
                where.remove(i10);
                return;
            }
        }
    }

    public void d(View v10) {
        e(v10, null, true);
    }

    public void e(View v10, Object data, boolean isSelectable) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof d)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        b bVar = new b();
        c cVar = new c(getContext());
        if (layoutParams != null) {
            v10.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            cVar.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        cVar.addView(v10);
        bVar.f91597a = v10;
        bVar.f91598b = cVar;
        bVar.f91599c = data;
        bVar.f91600d = isSelectable;
        this.f91590h.add(bVar);
        if (adapter != null) {
            ((d) adapter).e();
        }
    }

    public void f(View v10) {
        g(v10, null, true);
    }

    public void g(View v10, Object data, boolean isSelectable) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && !(adapter instanceof d)) {
            throw new IllegalStateException("Cannot add header view to grid -- setAdapter has already been called.");
        }
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        b bVar = new b();
        c cVar = new c(getContext());
        if (layoutParams != null) {
            v10.setLayoutParams(new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height));
            cVar.setLayoutParams(new AbsListView.LayoutParams(layoutParams.width, layoutParams.height));
        }
        cVar.addView(v10);
        bVar.f91597a = v10;
        bVar.f91598b = cVar;
        bVar.f91599c = data;
        bVar.f91600d = isSelectable;
        this.f91589g.add(bVar);
        if (adapter != null) {
            ((d) adapter).e();
        }
    }

    public int getFooterViewCount() {
        return this.f91590h.size();
    }

    public int getHeaderViewCount() {
        return this.f91589g.size();
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
        return this.f91591i;
    }

    public int getRowHeight() {
        int i10 = this.f91588f;
        if (i10 > 0) {
            return i10;
        }
        ListAdapter adapter = getAdapter();
        int numColumnsCompatible = getNumColumnsCompatible();
        if (adapter == null || adapter.getCount() <= (this.f91589g.size() + this.f91590h.size()) * numColumnsCompatible) {
            return -1;
        }
        int columnWidthCompatible = getColumnWidthCompatible();
        View view = getAdapter().getView(numColumnsCompatible * this.f91589g.size(), this.f91587e, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2, 0);
            view.setLayoutParams(layoutParams);
        }
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(columnWidthCompatible, 1073741824), 0, layoutParams.width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        this.f91587e = view;
        int measuredHeight = view.getMeasuredHeight();
        this.f91588f = measuredHeight;
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

    public int h(int row) {
        if (row >= 0) {
            return this.f91589g.get(row).f91597a.getMeasuredHeight();
        }
        return 0;
    }

    public void j() {
        this.f91588f = -1;
    }

    public boolean l(View v10) {
        boolean z10 = false;
        if (this.f91590h.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((d) adapter).f(v10)) {
                z10 = true;
            }
            k(v10, this.f91590h);
        }
        return z10;
    }

    public boolean m(View v10) {
        boolean z10 = false;
        if (this.f91589g.size() > 0) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && ((d) adapter).g(v10)) {
                z10 = true;
            }
            k(v10, this.f91589g);
        }
        return z10;
    }

    @TargetApi(11)
    public void n() {
        smoothScrollToPositionFromTop(getAdapter().getCount() - 1, 0);
    }

    @TargetApi(11)
    public void o(int duration) {
        smoothScrollToPositionFromTop(getAdapter().getCount() - 1, 0, duration);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f91587e = null;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            this.f91594l = 0.0f;
            this.f91593k = 0.0f;
            this.f91595m = ev.getX();
            this.f91596n = ev.getY();
        } else if (action == 2) {
            float x10 = ev.getX();
            float y10 = ev.getY();
            this.f91593k += Math.abs(x10 - this.f91595m);
            float fAbs = this.f91594l + Math.abs(y10 - this.f91596n);
            this.f91594l = fAbs;
            this.f91595m = x10;
            this.f91596n = y10;
            if (this.f91593k > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof d)) {
            return;
        }
        d dVar = (d) adapter;
        dVar.h(getNumColumnsCompatible());
        dVar.i(getRowHeight());
    }

    @Override // android.view.ViewGroup
    public void setClipChildren(boolean clipChildren) {
    }

    public void setClipChildrenSupper(boolean clipChildren) {
        super.setClipChildren(false);
    }

    @Override // android.widget.GridView
    public void setNumColumns(int numColumns) {
        super.setNumColumns(numColumns);
        this.f91586d = numColumns;
        ListAdapter adapter = getAdapter();
        if (adapter == null || !(adapter instanceof d)) {
            return;
        }
        ((d) adapter).h(numColumns);
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener l10) {
        this.f91584b = l10;
        super.setOnItemClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener listener) {
        this.f91585c = listener;
        super.setOnItemLongClickListener(getItemClickHandler());
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        this.f91591i = adapter;
        if (this.f91589g.size() <= 0 && this.f91590h.size() <= 0) {
            super.setAdapter(adapter);
            return;
        }
        d dVar = new d(this.f91589g, this.f91590h, adapter);
        int numColumnsCompatible = getNumColumnsCompatible();
        if (numColumnsCompatible > 1) {
            dVar.h(numColumnsCompatible);
        }
        dVar.i(getRowHeight());
        super.setAdapter((ListAdapter) dVar);
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f91586d = -1;
        this.f91587e = null;
        this.f91588f = -1;
        this.f91589g = new ArrayList<>();
        this.f91590h = new ArrayList<>();
        i();
    }

    public GridViewWithHeaderAndFooter(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f91586d = -1;
        this.f91587e = null;
        this.f91588f = -1;
        this.f91589g = new ArrayList<>();
        this.f91590h = new ArrayList<>();
        i();
    }
}
