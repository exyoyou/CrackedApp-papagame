package com.join.mgps.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.join.mgps.base.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseQuickAdapter<T, K extends com.join.mgps.base.b> extends RecyclerView.Adapter<K> {
    public static final int ALPHAIN = 1;
    public static final int EMPTY_VIEW = 1365;
    public static final int FOOTER_VIEW = 819;
    public static final int HEADER_VIEW = 273;
    public static final int LOADING_VIEW = 546;
    public static final int SCALEIN = 2;
    public static final int SLIDEIN_BOTTOM = 3;
    public static final int SLIDEIN_LEFT = 4;
    public static final int SLIDEIN_RIGHT = 5;
    protected static final String TAG = "BaseQuickAdapter";
    private boolean footerViewAsFlow;
    private boolean headerViewAsFlow;
    protected Context mContext;
    private i6.b mCustomAnimation;
    protected List<T> mData;
    private int mDuration;
    private FrameLayout mEmptyLayout;
    private boolean mEnableLoadMoreEndClick;
    private boolean mFirstOnlyEnable;
    private boolean mFootAndEmptyEnable;
    private LinearLayout mFooterLayout;
    private boolean mHeadAndEmptyEnable;
    private LinearLayout mHeaderLayout;
    private Interpolator mInterpolator;
    private boolean mIsUseEmpty;
    private int mLastPosition;
    protected LayoutInflater mLayoutInflater;
    protected int mLayoutResId;
    private boolean mLoadMoreEnable;
    private com.join.mgps.base.c mLoadMoreView;
    private boolean mLoading;
    private boolean mNextLoadEnable;
    private h mOnItemChildClickListener;
    private i mOnItemChildLongClickListener;
    private j mOnItemClickListener;
    private k mOnItemLongClickListener;
    private boolean mOpenAnimationEnable;
    private int mPreLoadNumber;
    private RecyclerView mRecyclerView;
    private l mRequestLoadMoreListener;
    private i6.b mSelectAnimation;
    private m mSpanSizeLookup;
    private int mStartUpFetchPosition;
    private boolean mUpFetchEnable;
    private n mUpFetchListener;
    private boolean mUpFetching;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnimationType {
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LinearLayoutManager f64083b;

        a(final LinearLayoutManager val$linearLayoutManager) {
            this.f64083b = val$linearLayoutManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseQuickAdapter.this.m(this.f64083b)) {
                BaseQuickAdapter.this.setEnableLoadMore(true);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StaggeredGridLayoutManager f64085b;

        b(final StaggeredGridLayoutManager val$staggeredGridLayoutManager) {
            this.f64085b = val$staggeredGridLayoutManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f64085b.getSpanCount()];
            this.f64085b.findLastCompletelyVisibleItemPositions(iArr);
            if (BaseQuickAdapter.this.l(iArr) + 1 != BaseQuickAdapter.this.getItemCount()) {
                BaseQuickAdapter.this.setEnableLoadMore(true);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (BaseQuickAdapter.this.mLoadMoreView.e() == 3) {
                BaseQuickAdapter.this.notifyLoadMoreToLoading();
            }
            if (BaseQuickAdapter.this.mEnableLoadMoreEndClick && BaseQuickAdapter.this.mLoadMoreView.e() == 4) {
                BaseQuickAdapter.this.notifyLoadMoreToLoading();
            }
        }
    }

    class d extends GridLayoutManager.SpanSizeLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GridLayoutManager f64088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GridLayoutManager.SpanSizeLookup f64089b;

        d(final GridLayoutManager val$gridManager, final GridLayoutManager.SpanSizeLookup val$defSpanSizeLookup) {
            this.f64088a = val$gridManager;
            this.f64089b = val$defSpanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            int itemViewType = BaseQuickAdapter.this.getItemViewType(position);
            if (itemViewType == 273 && BaseQuickAdapter.this.isHeaderViewAsFlow()) {
                return 1;
            }
            if (itemViewType == 819 && BaseQuickAdapter.this.isFooterViewAsFlow()) {
                return 1;
            }
            if (BaseQuickAdapter.this.mSpanSizeLookup == null) {
                return BaseQuickAdapter.this.isFixedViewType(itemViewType) ? this.f64088a.getSpanCount() : this.f64089b.getSpanSize(position);
            }
            return BaseQuickAdapter.this.isFixedViewType(itemViewType) ? this.f64088a.getSpanCount() : BaseQuickAdapter.this.mSpanSizeLookup.a(this.f64088a, position - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f64091b;

        e(final com.join.mgps.base.b val$baseViewHolder) {
            this.f64091b = val$baseViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int adapterPosition = this.f64091b.getAdapterPosition();
            if (adapterPosition == -1) {
                return;
            }
            BaseQuickAdapter.this.setOnItemClick(v10, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    class f implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.b f64093b;

        f(final com.join.mgps.base.b val$baseViewHolder) {
            this.f64093b = val$baseViewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            int adapterPosition = this.f64093b.getAdapterPosition();
            if (adapterPosition == -1) {
                return false;
            }
            return BaseQuickAdapter.this.setOnItemLongClick(v10, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseQuickAdapter.this.mRequestLoadMoreListener.onLoadMoreRequested();
        }
    }

    public interface h {
        void onItemChildClick(BaseQuickAdapter adapter, View view, int position);
    }

    public interface i {
        boolean a(BaseQuickAdapter adapter, View view, int position);
    }

    public interface j {
        void onItemClick(BaseQuickAdapter adapter, View view, int position);
    }

    public interface k {
        boolean a(BaseQuickAdapter adapter, View view, int position);
    }

    public interface l {
        void onLoadMoreRequested();
    }

    public interface m {
        int a(GridLayoutManager gridLayoutManager, int position);
    }

    public interface n {
        void a();
    }

    public BaseQuickAdapter(@LayoutRes int layoutResId, @Nullable List<T> data) {
        this.mNextLoadEnable = false;
        this.mLoadMoreEnable = false;
        this.mLoading = false;
        this.mLoadMoreView = new com.join.mgps.base.d();
        this.mEnableLoadMoreEndClick = false;
        this.mFirstOnlyEnable = true;
        this.mOpenAnimationEnable = false;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 300;
        this.mLastPosition = -1;
        this.mSelectAnimation = new i6.a();
        this.mIsUseEmpty = true;
        this.mPreLoadNumber = 1;
        this.mStartUpFetchPosition = 1;
        this.mData = data == null ? new ArrayList<>() : data;
        if (layoutResId != 0) {
            this.mLayoutResId = layoutResId;
        }
    }

    private void a(RecyclerView.ViewHolder holder) {
        if (this.mOpenAnimationEnable) {
            if (!this.mFirstOnlyEnable || holder.getLayoutPosition() > this.mLastPosition) {
                i6.b bVar = this.mCustomAnimation;
                if (bVar == null) {
                    bVar = this.mSelectAnimation;
                }
                for (Animator animator : bVar.a(holder.itemView)) {
                    startAnim(animator, holder.getLayoutPosition());
                }
                this.mLastPosition = holder.getLayoutPosition();
            }
        }
    }

    private void b(int position) {
        if (getLoadMoreViewCount() != 0 && position >= getItemCount() - this.mPreLoadNumber && this.mLoadMoreView.e() == 1) {
            this.mLoadMoreView.j(2);
            if (this.mLoading) {
                return;
            }
            this.mLoading = true;
            if (getRecyclerView() != null) {
                getRecyclerView().post(new g());
            } else {
                this.mRequestLoadMoreListener.onLoadMoreRequested();
            }
        }
    }

    private void c(int positions) {
        n nVar;
        if (!isUpFetchEnable() || isUpFetching() || positions > this.mStartUpFetchPosition || (nVar = this.mUpFetchListener) == null) {
            return;
        }
        nVar.a();
    }

    private void d() {
        if (getRecyclerView() == null) {
            throw new IllegalStateException("please bind recyclerView first!");
        }
    }

    private void e(int size) {
        List<T> list = this.mData;
        if ((list == null ? 0 : list.size()) == size) {
            notifyDataSetChanged();
        }
    }

    private K f(Class z10, View view) {
        try {
            if (!z10.isMemberClass() || Modifier.isStatic(z10.getModifiers())) {
                Constructor<T> declaredConstructor = z10.getDeclaredConstructor(View.class);
                declaredConstructor.setAccessible(true);
                return (K) declaredConstructor.newInstance(view);
            }
            Constructor<T> declaredConstructor2 = z10.getDeclaredConstructor(getClass(), View.class);
            declaredConstructor2.setAccessible(true);
            return (K) declaredConstructor2.newInstance(this, view);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
            return null;
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
            return null;
        }
    }

    private j6.a g(int position) {
        T item = getItem(position);
        if (isExpandable(item)) {
            return (j6.a) item;
        }
        return null;
    }

    private int getItemPosition(T item) {
        List<T> list;
        if (item == null || (list = this.mData) == null || list.isEmpty()) {
            return -1;
        }
        return this.mData.indexOf(item);
    }

    private int h() {
        int i10 = 1;
        if (getEmptyViewCount() != 1) {
            return getHeaderLayoutCount() + this.mData.size();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i10 = 2;
        }
        if (this.mFootAndEmptyEnable) {
            return i10;
        }
        return -1;
    }

    private int i() {
        return (getEmptyViewCount() != 1 || this.mHeadAndEmptyEnable) ? 0 : -1;
    }

    private Class j(Class z10) {
        Type genericSuperclass = z10.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            return null;
        }
        for (Type type : ((ParameterizedType) genericSuperclass).getActualTypeArguments()) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (com.join.mgps.base.b.class.isAssignableFrom(cls)) {
                    return cls;
                }
            } else if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                if (rawType instanceof Class) {
                    Class cls2 = (Class) rawType;
                    if (com.join.mgps.base.b.class.isAssignableFrom(cls2)) {
                        return cls2;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
        return null;
    }

    private K k(ViewGroup viewGroup) {
        K k10 = (K) createBaseViewHolder(getItemView(this.mLoadMoreView.b(), viewGroup));
        k10.itemView.setOnClickListener(new c());
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int l(int[] numbers) {
        int i10 = -1;
        if (numbers != null && numbers.length != 0) {
            for (int i11 : numbers) {
                if (i11 > i10) {
                    i10 = i11;
                }
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m(LinearLayoutManager llm) {
        return (llm.findLastCompletelyVisibleItemPosition() + 1 == getItemCount() && llm.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    private void n(l requestLoadMoreListener) {
        this.mRequestLoadMoreListener = requestLoadMoreListener;
        this.mNextLoadEnable = true;
        this.mLoadMoreEnable = true;
        this.mLoading = false;
    }

    private int o(@IntRange(from = 0) int position) {
        T item = getItem(position);
        if (item == null || !isExpandable(item)) {
            return 0;
        }
        j6.a aVar = (j6.a) item;
        if (!aVar.b()) {
            return 0;
        }
        ArrayList arrayList = new ArrayList();
        int level = aVar.getLevel();
        int size = this.mData.size();
        for (int i10 = position + 1; i10 < size; i10++) {
            T t10 = this.mData.get(i10);
            if ((t10 instanceof j6.a) && ((j6.a) t10).getLevel() <= level) {
                break;
            }
            arrayList.add(t10);
        }
        this.mData.removeAll(arrayList);
        return arrayList.size();
    }

    private int p(int position, @NonNull List list) {
        int size = list.size();
        int size2 = (position + list.size()) - 1;
        int size3 = list.size() - 1;
        while (size3 >= 0) {
            if (list.get(size3) instanceof j6.a) {
                j6.a aVar = (j6.a) list.get(size3);
                if (aVar.b() && hasSubItems(aVar)) {
                    List<T> listC = aVar.c();
                    int i10 = size2 + 1;
                    this.mData.addAll(i10, listC);
                    size += p(i10, listC);
                }
            }
            size3--;
            size2--;
        }
        return size;
    }

    private void q(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Deprecated
    public void add(@IntRange(from = 0) int position, @NonNull T item) {
        addData(position, item);
    }

    public void addData(@IntRange(from = 0) int position, @NonNull T data) {
        this.mData.add(position, data);
        notifyItemInserted(position + getHeaderLayoutCount());
        e(1);
    }

    public int addFooterView(View footer) {
        return addFooterView(footer, -1, 1);
    }

    public int addHeaderView(View header) {
        return addHeaderView(header, -1);
    }

    public void bindToRecyclerView(RecyclerView recyclerView) {
        if (getRecyclerView() == recyclerView) {
            throw new IllegalStateException("Don't bind twice");
        }
        q(recyclerView);
        getRecyclerView().setAdapter(this);
    }

    protected void bindViewClickListener(final K baseViewHolder) {
        if (baseViewHolder == null) {
            return;
        }
        View view = baseViewHolder.itemView;
        if (getOnItemClickListener() != null) {
            view.setOnClickListener(new e(baseViewHolder));
        }
        if (getOnItemLongClickListener() != null) {
            view.setOnLongClickListener(new f(baseViewHolder));
        }
    }

    public void closeLoadAnimation() {
        this.mOpenAnimationEnable = false;
    }

    public int collapse(@IntRange(from = 0) int position, boolean animate, boolean notify) {
        int headerLayoutCount = position - getHeaderLayoutCount();
        j6.a aVarG = g(headerLayoutCount);
        if (aVarG == null) {
            return 0;
        }
        int iO = o(headerLayoutCount);
        aVarG.a(false);
        int headerLayoutCount2 = headerLayoutCount + getHeaderLayoutCount();
        if (notify) {
            if (animate) {
                notifyItemChanged(headerLayoutCount2);
                notifyItemRangeRemoved(headerLayoutCount2 + 1, iO);
            } else {
                notifyDataSetChanged();
            }
        }
        return iO;
    }

    protected abstract void convert(@NonNull K helper, T item);

    protected void convertPayloads(@NonNull K helper, T item, @NonNull List<Object> payloads) {
    }

    protected K createBaseViewHolder(ViewGroup viewGroup, int i10) {
        return (K) createBaseViewHolder(getItemView(i10, viewGroup));
    }

    public void disableLoadMoreIfNotFullPage() {
        d();
        disableLoadMoreIfNotFullPage(getRecyclerView());
    }

    public void enableLoadMoreEndClick(boolean enable) {
        this.mEnableLoadMoreEndClick = enable;
    }

    public int expand(@IntRange(from = 0) int position, boolean animate, boolean shouldNotify) {
        int headerLayoutCount = position - getHeaderLayoutCount();
        j6.a aVarG = g(headerLayoutCount);
        int iP = 0;
        if (aVarG == null) {
            return 0;
        }
        if (!hasSubItems(aVarG)) {
            aVarG.a(true);
            notifyItemChanged(headerLayoutCount);
            return 0;
        }
        if (!aVarG.b()) {
            List<T> listC = aVarG.c();
            int i10 = headerLayoutCount + 1;
            this.mData.addAll(i10, listC);
            iP = 0 + p(i10, listC);
            aVarG.a(true);
        }
        int headerLayoutCount2 = headerLayoutCount + getHeaderLayoutCount();
        if (shouldNotify) {
            if (animate) {
                notifyItemChanged(headerLayoutCount2);
                notifyItemRangeInserted(headerLayoutCount2 + 1, iP);
            } else {
                notifyDataSetChanged();
            }
        }
        return iP;
    }

    public int expandAll(int position, boolean animate, boolean notify) {
        T item;
        int headerLayoutCount = position - getHeaderLayoutCount();
        int i10 = headerLayoutCount + 1;
        T item2 = i10 < this.mData.size() ? getItem(i10) : null;
        j6.a aVarG = g(headerLayoutCount);
        if (aVarG == null) {
            return 0;
        }
        if (!hasSubItems(aVarG)) {
            aVarG.a(true);
            notifyItemChanged(headerLayoutCount);
            return 0;
        }
        int iExpand = expand(getHeaderLayoutCount() + headerLayoutCount, false, false);
        while (i10 < this.mData.size() && ((item = getItem(i10)) == null || !item.equals(item2))) {
            if (isExpandable(item)) {
                iExpand += expand(getHeaderLayoutCount() + i10, false, false);
            }
            i10++;
        }
        if (notify) {
            if (animate) {
                notifyItemRangeInserted(headerLayoutCount + getHeaderLayoutCount() + 1, iExpand);
            } else {
                notifyDataSetChanged();
            }
        }
        return iExpand;
    }

    @NonNull
    public List<T> getData() {
        return this.mData;
    }

    protected int getDefItemViewType(int position) {
        return super.getItemViewType(position);
    }

    public View getEmptyView() {
        return this.mEmptyLayout;
    }

    public int getEmptyViewCount() {
        FrameLayout frameLayout = this.mEmptyLayout;
        return (frameLayout == null || frameLayout.getChildCount() == 0 || !this.mIsUseEmpty || this.mData.size() != 0) ? 0 : 1;
    }

    public LinearLayout getFooterLayout() {
        return this.mFooterLayout;
    }

    public int getFooterLayoutCount() {
        LinearLayout linearLayout = this.mFooterLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getFooterViewsCount() {
        return getFooterLayoutCount();
    }

    public LinearLayout getHeaderLayout() {
        return this.mHeaderLayout;
    }

    public int getHeaderLayoutCount() {
        LinearLayout linearLayout = this.mHeaderLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getHeaderViewsCount() {
        return getHeaderLayoutCount();
    }

    @Nullable
    public T getItem(@IntRange(from = 0) int position) {
        if (position < 0 || position >= this.mData.size()) {
            return null;
        }
        return this.mData.get(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i10 = 1;
        if (1 != getEmptyViewCount()) {
            return getLoadMoreViewCount() + getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i10 = 2;
        }
        return (!this.mFootAndEmptyEnable || getFooterLayoutCount() == 0) ? i10 : i10 + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        return position;
    }

    protected View getItemView(@LayoutRes int layoutResId, ViewGroup parent) {
        return this.mLayoutInflater.inflate(layoutResId, parent, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (getEmptyViewCount() == 1) {
            boolean z10 = this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0;
            if (position != 0) {
                if (position != 1) {
                    return position != 2 ? EMPTY_VIEW : FOOTER_VIEW;
                }
                return z10 ? EMPTY_VIEW : FOOTER_VIEW;
            }
            if (z10) {
                return 273;
            }
            return EMPTY_VIEW;
        }
        int headerLayoutCount = getHeaderLayoutCount();
        if (position < headerLayoutCount) {
            return 273;
        }
        int i10 = position - headerLayoutCount;
        int size = this.mData.size();
        if (i10 < size) {
            return getDefItemViewType(i10);
        }
        return i10 - size < getFooterLayoutCount() ? FOOTER_VIEW : LOADING_VIEW;
    }

    public int getLoadMoreViewCount() {
        if (this.mRequestLoadMoreListener == null || !this.mLoadMoreEnable) {
            return 0;
        }
        return ((this.mNextLoadEnable || !this.mLoadMoreView.h()) && this.mData.size() != 0) ? 1 : 0;
    }

    public int getLoadMoreViewPosition() {
        return getHeaderLayoutCount() + this.mData.size() + getFooterLayoutCount();
    }

    @Nullable
    public final h getOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    @Nullable
    public final i getOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }

    public final j getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final k getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public int getParentPosition(@NonNull T item) {
        int itemPosition = getItemPosition(item);
        if (itemPosition == -1) {
            return -1;
        }
        int level = item instanceof j6.a ? ((j6.a) item).getLevel() : Integer.MAX_VALUE;
        if (level == 0) {
            return itemPosition;
        }
        if (level == -1) {
            return -1;
        }
        while (itemPosition >= 0) {
            T t10 = this.mData.get(itemPosition);
            if (t10 instanceof j6.a) {
                j6.a aVar = (j6.a) t10;
                if (aVar.getLevel() >= 0 && aVar.getLevel() < level) {
                    return itemPosition;
                }
            }
            itemPosition--;
        }
        return -1;
    }

    protected RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Nullable
    public View getViewByPosition(int position, @IdRes int viewId) {
        d();
        return getViewByPosition(getRecyclerView(), position, viewId);
    }

    public boolean hasSubItems(j6.a item) {
        List<T> listC;
        return (item == null || (listC = item.c()) == null || listC.size() <= 0) ? false : true;
    }

    public boolean isExpandable(T item) {
        return item != null && (item instanceof j6.a);
    }

    public void isFirstOnly(boolean firstOnly) {
        this.mFirstOnlyEnable = firstOnly;
    }

    protected boolean isFixedViewType(int type) {
        return type == 1365 || type == 273 || type == 819 || type == 546;
    }

    public boolean isFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public boolean isHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public boolean isLoadMoreEnable() {
        return this.mLoadMoreEnable;
    }

    public boolean isLoading() {
        return this.mLoading;
    }

    public boolean isUpFetchEnable() {
        return this.mUpFetchEnable;
    }

    public boolean isUpFetching() {
        return this.mUpFetching;
    }

    public void isUseEmpty(boolean isUseEmpty) {
        this.mIsUseEmpty = isUseEmpty;
    }

    public void loadMoreComplete() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = true;
        this.mLoadMoreView.j(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void loadMoreEnd() {
        loadMoreEnd(false);
    }

    public void loadMoreFail() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mLoadMoreView.j(3);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void notifyLoadMoreToLoading() {
        if (this.mLoadMoreView.e() == 2) {
            return;
        }
        this.mLoadMoreView.j(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull final RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new d(gridLayoutManager, gridLayoutManager.getSpanSizeLookup()));
        }
    }

    protected K onCreateDefViewHolder(ViewGroup viewGroup, int i10) {
        return (K) createBaseViewHolder(viewGroup, this.mLayoutResId);
    }

    public void openLoadAnimation(int animationType) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = null;
        if (animationType == 1) {
            this.mSelectAnimation = new i6.a();
            return;
        }
        if (animationType == 2) {
            this.mSelectAnimation = new i6.c();
            return;
        }
        if (animationType == 3) {
            this.mSelectAnimation = new i6.d();
        } else if (animationType == 4) {
            this.mSelectAnimation = new i6.e();
        } else {
            if (animationType != 5) {
                return;
            }
            this.mSelectAnimation = new i6.f();
        }
    }

    public final void refreshNotifyItemChanged(int position) {
        notifyItemChanged(position + getHeaderLayoutCount());
    }

    public void remove(@IntRange(from = 0) int position) {
        this.mData.remove(position);
        int headerLayoutCount = position + getHeaderLayoutCount();
        notifyItemRemoved(headerLayoutCount);
        e(0);
        notifyItemRangeChanged(headerLayoutCount, this.mData.size() - headerLayoutCount);
    }

    public void removeAllFooterView() {
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeAllViews();
        int iH = h();
        if (iH != -1) {
            notifyItemRemoved(iH);
        }
    }

    public void removeAllHeaderView() {
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeAllViews();
        int i10 = i();
        if (i10 != -1) {
            notifyItemRemoved(i10);
        }
    }

    public void removeFooterView(View footer) {
        int iH;
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeView(footer);
        if (this.mFooterLayout.getChildCount() != 0 || (iH = h()) == -1) {
            return;
        }
        notifyItemRemoved(iH);
    }

    public void removeHeaderView(View header) {
        int i10;
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeView(header);
        if (this.mHeaderLayout.getChildCount() != 0 || (i10 = i()) == -1) {
            return;
        }
        notifyItemRemoved(i10);
    }

    public void replaceData(@NonNull Collection<? extends T> data) {
        List<T> list = this.mData;
        if (data != list) {
            list.clear();
            this.mData.addAll(data);
        }
        notifyDataSetChanged();
    }

    @Deprecated
    public void setAutoLoadMoreSize(int preLoadNumber) {
        setPreLoadNumber(preLoadNumber);
    }

    public void setData(@IntRange(from = 0) int index, @NonNull T data) {
        this.mData.set(index, data);
        notifyItemChanged(index + getHeaderLayoutCount());
    }

    public void setDuration(int duration) {
        this.mDuration = duration;
    }

    public void setEmptyView(int layoutResId, ViewGroup viewGroup) {
        setEmptyView(LayoutInflater.from(viewGroup.getContext()).inflate(layoutResId, viewGroup, false));
    }

    public void setEnableLoadMore(boolean enable) {
        int loadMoreViewCount = getLoadMoreViewCount();
        this.mLoadMoreEnable = enable;
        int loadMoreViewCount2 = getLoadMoreViewCount();
        if (loadMoreViewCount == 1) {
            if (loadMoreViewCount2 == 0) {
                notifyItemRemoved(getLoadMoreViewPosition());
            }
        } else if (loadMoreViewCount2 == 1) {
            this.mLoadMoreView.j(1);
            notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public int setFooterView(View header) {
        return setFooterView(header, 0, 1);
    }

    public void setFooterViewAsFlow(boolean footerViewAsFlow) {
        this.footerViewAsFlow = footerViewAsFlow;
    }

    protected void setFullSpan(RecyclerView.ViewHolder holder) {
        if (holder.itemView.getLayoutParams() instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) holder.itemView.getLayoutParams()).setFullSpan(true);
        }
    }

    public void setHeaderAndEmpty(boolean isHeadAndEmpty) {
        setHeaderFooterEmpty(isHeadAndEmpty, false);
    }

    public void setHeaderFooterEmpty(boolean isHeadAndEmpty, boolean isFootAndEmpty) {
        this.mHeadAndEmptyEnable = isHeadAndEmpty;
        this.mFootAndEmptyEnable = isFootAndEmpty;
    }

    public int setHeaderView(View header) {
        return setHeaderView(header, 0, 1);
    }

    public void setHeaderViewAsFlow(boolean headerViewAsFlow) {
        this.headerViewAsFlow = headerViewAsFlow;
    }

    public void setLoadMoreView(com.join.mgps.base.c loadingView) {
        this.mLoadMoreView = loadingView;
    }

    public void setNewData(@Nullable List<T> data) {
        if (data == null) {
            data = new ArrayList<>();
        }
        this.mData = data;
        if (this.mRequestLoadMoreListener != null) {
            this.mNextLoadEnable = true;
            this.mLoadMoreEnable = true;
            this.mLoading = false;
            this.mLoadMoreView.j(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void setNewDiffData(@NonNull com.join.mgps.base.diff.b<T> baseQuickDiffCallback) {
        setNewDiffData((com.join.mgps.base.diff.b) baseQuickDiffCallback, false);
    }

    public void setNotDoAnimationCount(int count) {
        this.mLastPosition = count;
    }

    public void setOnItemChildClickListener(h listener) {
        this.mOnItemChildClickListener = listener;
    }

    public void setOnItemChildLongClickListener(i listener) {
        this.mOnItemChildLongClickListener = listener;
    }

    public void setOnItemClick(View v10, int position) {
        getOnItemClickListener().onItemClick(this, v10, position);
    }

    public void setOnItemClickListener(@Nullable j listener) {
        this.mOnItemClickListener = listener;
    }

    public boolean setOnItemLongClick(View v10, int position) {
        return getOnItemLongClickListener().a(this, v10, position);
    }

    public void setOnItemLongClickListener(k listener) {
        this.mOnItemLongClickListener = listener;
    }

    public void setOnLoadMoreListener(l requestLoadMoreListener, RecyclerView recyclerView) {
        n(requestLoadMoreListener);
        if (getRecyclerView() == null) {
            q(recyclerView);
        }
    }

    public void setPreLoadNumber(int preLoadNumber) {
        if (preLoadNumber > 1) {
            this.mPreLoadNumber = preLoadNumber;
        }
    }

    public void setSpanSizeLookup(m spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public void setStartUpFetchPosition(int startUpFetchPosition) {
        this.mStartUpFetchPosition = startUpFetchPosition;
    }

    public void setUpFetchEnable(boolean upFetch) {
        this.mUpFetchEnable = upFetch;
    }

    public void setUpFetchListener(n upFetchListener) {
        this.mUpFetchListener = upFetchListener;
    }

    public void setUpFetching(boolean upFetching) {
        this.mUpFetching = upFetching;
    }

    protected void startAnim(Animator anim, int index) {
        anim.setDuration(this.mDuration).start();
        anim.setInterpolator(this.mInterpolator);
    }

    public int addFooterView(View footer, int index) {
        return addFooterView(footer, index, 1);
    }

    public int addHeaderView(View header, int index) {
        return addHeaderView(header, index, 1);
    }

    protected K createBaseViewHolder(View view) {
        Class clsJ = null;
        for (Class<?> superclass = getClass(); clsJ == null && superclass != null; superclass = superclass.getSuperclass()) {
            clsJ = j(superclass);
        }
        K k10 = clsJ == null ? (K) new com.join.mgps.base.b(view) : (K) f(clsJ, view);
        return k10 != null ? k10 : (K) new com.join.mgps.base.b(view);
    }

    public void loadMoreEnd(boolean gone) {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = false;
        this.mLoadMoreView.i(gone);
        if (gone) {
            notifyItemRemoved(getLoadMoreViewPosition());
        } else {
            this.mLoadMoreView.j(4);
            notifyItemChanged(getLoadMoreViewPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position, @NonNull List payloads) {
        onBindViewHolder((com.join.mgps.base.b) holder, position, (List<Object>) payloads);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public K onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        K k10;
        Context context = viewGroup.getContext();
        this.mContext = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        if (i10 == 273) {
            ViewParent parent = this.mHeaderLayout.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mHeaderLayout);
            }
            k10 = (K) createBaseViewHolder(this.mHeaderLayout);
        } else if (i10 == 546) {
            k10 = (K) k(viewGroup);
        } else if (i10 == 819) {
            ViewParent parent2 = this.mFooterLayout.getParent();
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(this.mFooterLayout);
            }
            k10 = (K) createBaseViewHolder(this.mFooterLayout);
        } else if (i10 != 1365) {
            k10 = (K) onCreateDefViewHolder(viewGroup, i10);
            bindViewClickListener(k10);
        } else {
            ViewParent parent3 = this.mEmptyLayout.getParent();
            if (parent3 instanceof ViewGroup) {
                ((ViewGroup) parent3).removeView(this.mEmptyLayout);
            }
            k10 = (K) createBaseViewHolder(this.mEmptyLayout);
        }
        k10.setAdapter(this);
        return k10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NonNull K holder) {
        super.onViewAttachedToWindow(holder);
        int itemViewType = holder.getItemViewType();
        if (itemViewType == 1365 || itemViewType == 273 || itemViewType == 819 || itemViewType == 546) {
            setFullSpan(holder);
        } else {
            a(holder);
        }
    }

    public final void refreshNotifyItemChanged(int position, @Nullable Object payload) {
        notifyItemChanged(position + getHeaderLayoutCount(), payload);
    }

    public int setFooterView(View header, int index) {
        return setFooterView(header, index, 1);
    }

    public int setHeaderView(View header, int index) {
        return setHeaderView(header, index, 1);
    }

    public void setNewDiffData(@NonNull com.join.mgps.base.diff.b<T> baseQuickDiffCallback, boolean detectMoves) {
        if (getEmptyViewCount() == 1) {
            setNewData(baseQuickDiffCallback.d());
            return;
        }
        baseQuickDiffCallback.f(getData());
        DiffUtil.calculateDiff(baseQuickDiffCallback, detectMoves).dispatchUpdatesTo(new com.join.mgps.base.diff.a(this));
        this.mData = baseQuickDiffCallback.d();
    }

    public int addFooterView(View footer, int index, int orientation) {
        int iH;
        if (this.mFooterLayout == null) {
            LinearLayout linearLayout = new LinearLayout(footer.getContext());
            this.mFooterLayout = linearLayout;
            if (orientation == 1) {
                linearLayout.setOrientation(1);
                this.mFooterLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mFooterLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mFooterLayout.getChildCount();
        if (index < 0 || index > childCount) {
            index = childCount;
        }
        this.mFooterLayout.addView(footer, index);
        if (this.mFooterLayout.getChildCount() == 1 && (iH = h()) != -1) {
            notifyItemInserted(iH);
        }
        return index;
    }

    public int addHeaderView(View header, final int index, int orientation) {
        int i10;
        if (this.mHeaderLayout == null) {
            LinearLayout linearLayout = new LinearLayout(header.getContext());
            this.mHeaderLayout = linearLayout;
            if (orientation == 1) {
                linearLayout.setOrientation(1);
                this.mHeaderLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mHeaderLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mHeaderLayout.getChildCount();
        if (index < 0 || index > childCount) {
            index = childCount;
        }
        this.mHeaderLayout.addView(header, index);
        if (this.mHeaderLayout.getChildCount() == 1 && (i10 = i()) != -1) {
            notifyItemInserted(i10);
        }
        return index;
    }

    public void disableLoadMoreIfNotFullPage(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        setEnableLoadMore(false);
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerView.postDelayed(new a((LinearLayoutManager) layoutManager), 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerView.postDelayed(new b((StaggeredGridLayoutManager) layoutManager), 50L);
        }
    }

    @Nullable
    public View getViewByPosition(RecyclerView recyclerView, int position, @IdRes int viewId) {
        com.join.mgps.base.b bVar;
        if (recyclerView == null || (bVar = (com.join.mgps.base.b) recyclerView.findViewHolderForLayoutPosition(position)) == null) {
            return null;
        }
        return bVar.getView(viewId);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull K holder, int position) {
        c(position);
        b(position);
        int itemViewType = holder.getItemViewType();
        if (itemViewType == 0) {
            convert(holder, getItem(position - getHeaderLayoutCount()));
            return;
        }
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.a(holder);
            } else {
                if (itemViewType == 819 || itemViewType == 1365) {
                    return;
                }
                convert(holder, getItem(position - getHeaderLayoutCount()));
            }
        }
    }

    @Deprecated
    public void setEmptyView(int layoutResId) {
        d();
        setEmptyView(layoutResId, getRecyclerView());
    }

    public int setFooterView(View header, int index, int orientation) {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null && linearLayout.getChildCount() > index) {
            this.mFooterLayout.removeViewAt(index);
            this.mFooterLayout.addView(header, index);
            return index;
        }
        return addFooterView(header, index, orientation);
    }

    public int setHeaderView(View header, int index, int orientation) {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null && linearLayout.getChildCount() > index) {
            this.mHeaderLayout.removeViewAt(index);
            this.mHeaderLayout.addView(header, index);
            return index;
        }
        return addHeaderView(header, index, orientation);
    }

    public void addData(@NonNull T data) {
        this.mData.add(data);
        notifyItemInserted(this.mData.size() + getHeaderLayoutCount());
        e(1);
    }

    public void setEmptyView(View emptyView) {
        boolean z10;
        int itemCount = getItemCount();
        if (this.mEmptyLayout == null) {
            this.mEmptyLayout = new FrameLayout(emptyView.getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            ViewGroup.LayoutParams layoutParams2 = emptyView.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams.width = layoutParams2.width;
                layoutParams.height = layoutParams2.height;
            }
            this.mEmptyLayout.setLayoutParams(layoutParams);
            z10 = true;
        } else {
            z10 = false;
        }
        this.mEmptyLayout.removeAllViews();
        this.mEmptyLayout.addView(emptyView);
        this.mIsUseEmpty = true;
        if (z10 && getEmptyViewCount() == 1) {
            int i10 = (!this.mHeadAndEmptyEnable || getHeaderLayoutCount() == 0) ? 0 : 1;
            if (getItemCount() > itemCount) {
                notifyItemInserted(i10);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public void addData(@IntRange(from = 0) int position, @NonNull Collection<? extends T> newData) {
        this.mData.addAll(position, newData);
        notifyItemRangeInserted(position + getHeaderLayoutCount(), newData.size());
        e(newData.size());
    }

    public void openLoadAnimation(i6.b animation) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = animation;
    }

    public void setNewDiffData(@NonNull DiffUtil.DiffResult diffResult, @NonNull List<T> newData) {
        if (getEmptyViewCount() == 1) {
            setNewData(newData);
        } else {
            diffResult.dispatchUpdatesTo(new com.join.mgps.base.diff.a(this));
            this.mData = newData;
        }
    }

    public int collapse(@IntRange(from = 0) int position) {
        return collapse(position, true, true);
    }

    public void onBindViewHolder(@NonNull K holder, int position, @NonNull List<Object> payloads) {
        if (payloads.isEmpty()) {
            onBindViewHolder((com.join.mgps.base.b) holder, position);
            return;
        }
        c(position);
        b(position);
        int itemViewType = holder.getItemViewType();
        if (itemViewType == 0) {
            convertPayloads(holder, getItem(position - getHeaderLayoutCount()), payloads);
            return;
        }
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.a(holder);
            } else {
                if (itemViewType == 819 || itemViewType == 1365) {
                    return;
                }
                convertPayloads(holder, getItem(position - getHeaderLayoutCount()), payloads);
            }
        }
    }

    public void addData(@NonNull Collection<? extends T> newData) {
        this.mData.addAll(newData);
        notifyItemRangeInserted((this.mData.size() - newData.size()) + getHeaderLayoutCount(), newData.size());
        e(newData.size());
    }

    public int collapse(@IntRange(from = 0) int position, boolean animate) {
        return collapse(position, animate, true);
    }

    public void openLoadAnimation() {
        this.mOpenAnimationEnable = true;
    }

    public int expand(@IntRange(from = 0) int position, boolean animate) {
        return expand(position, animate, true);
    }

    public int expand(@IntRange(from = 0) int position) {
        return expand(position, true, true);
    }

    public int expandAll(int position, boolean init) {
        return expandAll(position, true, !init);
    }

    public void expandAll() {
        for (int size = (this.mData.size() - 1) + getHeaderLayoutCount(); size >= getHeaderLayoutCount(); size--) {
            expandAll(size, false, false);
        }
    }

    public BaseQuickAdapter(@Nullable List<T> data) {
        this(0, data);
    }

    public BaseQuickAdapter(@LayoutRes int layoutResId) {
        this(layoutResId, null);
    }
}
