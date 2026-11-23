package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@SourceDebugExtension({"SMAP\nBaseQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter/base/BaseQuickAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,766:1\n1869#2,2:767\n1869#2,2:769\n360#2,7:771\n1#3:778\n*S KotlinDebug\n*F\n+ 1 BaseQuickAdapter.kt\ncom/chad/library/adapter/base/BaseQuickAdapter\n*L\n280#1:767,2\n287#1:769,2\n434#1:771,7\n*E\n"})
public abstract class BaseQuickAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    @NotNull
    public static final a Companion = new a(null);
    public static final int EMPTY_PAYLOAD = 0;
    public static final int EMPTY_VIEW = 268436821;

    @Nullable
    private RecyclerView _recyclerView;
    private boolean animationEnable;

    @Nullable
    private View emptyView;
    private boolean isAnimationFirstOnly;
    private boolean isEmptyViewEnable;

    @Nullable
    private o2.b itemAnimation;

    @NotNull
    private List<? extends T> items;
    private int mLastPosition;

    @NotNull
    private final SparseArray<b<T>> mOnItemChildClickArray;

    @NotNull
    private final SparseArray<c<T>> mOnItemChildLongClickArray;

    @Nullable
    private d<T> mOnItemClickListener;

    @Nullable
    private e<T> mOnItemLongClickListener;

    @Nullable
    private List<f> onViewAttachStateChangeListeners;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/chad/library/adapter/base/BaseQuickAdapter$AnimationType;", "", "<init>", "(Ljava/lang/String;I)V", "AlphaIn", "ScaleIn", "SlideInBottom", "SlideInLeft", "SlideInRight", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum AnimationType {
        AlphaIn,
        ScaleIn,
        SlideInBottom,
        SlideInLeft,
        SlideInRight;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @NotNull
        public static EnumEntries<AnimationType> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b<T> {
        void onItemClick(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull View view, int i10);
    }

    public interface c<T> {
        boolean a(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull View view, int i10);
    }

    public interface d<T> {
        void onClick(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull View view, int i10);
    }

    public interface e<T> {
        boolean a(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull View view, int i10);
    }

    public interface f {
        void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder viewHolder);

        void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder viewHolder);
    }

    public /* synthetic */ class g {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnimationType.values().length];
            try {
                iArr[AnimationType.AlphaIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationType.ScaleIn.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationType.SlideInBottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationType.SlideInLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnimationType.SlideInRight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseQuickAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean displayEmptyView$default(BaseQuickAdapter baseQuickAdapter, List list, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: displayEmptyView");
        }
        if ((i10 & 1) != 0) {
            list = baseQuickAdapter.getItems();
        }
        return baseQuickAdapter.displayEmptyView(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter baseQuickAdapter, View view) {
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNull(view);
        baseQuickAdapter.onItemChildClick(view, bindingAdapterPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter baseQuickAdapter, View view) {
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNull(view);
        return baseQuickAdapter.onItemChildLongClick(view, bindingAdapterPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter baseQuickAdapter, View view) {
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNull(view);
        baseQuickAdapter.onItemClick(view, bindingAdapterPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(RecyclerView.ViewHolder viewHolder, BaseQuickAdapter baseQuickAdapter, View view) {
        int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
        if (bindingAdapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNull(view);
        return baseQuickAdapter.onItemLongClick(view, bindingAdapterPosition);
    }

    private final List<T> i() {
        List<T> items = getItems();
        if (items instanceof ArrayList) {
            List<T> items2 = getItems();
            Intrinsics.checkNotNull(items2, "null cannot be cast to non-null type java.util.ArrayList<T of com.chad.library.adapter.base.BaseQuickAdapter>");
            return (ArrayList) items2;
        }
        if (TypeIntrinsics.isMutableList(items)) {
            List<T> items3 = getItems();
            Intrinsics.checkNotNull(items3, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.chad.library.adapter.base.BaseQuickAdapter>");
            return TypeIntrinsics.asMutableList(items3);
        }
        List<T> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        setItems(mutableList);
        return mutableList;
    }

    private final void j(RecyclerView.ViewHolder viewHolder) {
        if (this.animationEnable) {
            if (!this.isAnimationFirstOnly || viewHolder.getLayoutPosition() > this.mLastPosition) {
                o2.b aVar = this.itemAnimation;
                if (aVar == null) {
                    aVar = new o2.a(0L, 0.0f, 3, null);
                }
                View itemView = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                startItemAnimator(aVar.a(itemView), viewHolder);
                this.mLastPosition = viewHolder.getLayoutPosition();
            }
        }
    }

    public void add(@IntRange(from = 0) int i10, T t10) {
        if (i10 <= getItems().size() && i10 >= 0) {
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemRemoved(0);
            }
            i().add(i10, t10);
            notifyItemInserted(i10);
            return;
        }
        throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
    }

    public void addAll(@IntRange(from = 0) int i10, @NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (i10 <= getItems().size() && i10 >= 0) {
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemRemoved(0);
            }
            i().addAll(i10, collection);
            notifyItemRangeInserted(i10, collection.size());
            return;
        }
        throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> addOnItemChildClickListener(@IdRes int i10, @NotNull b<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mOnItemChildClickArray.put(i10, listener);
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> addOnItemChildLongClickListener(@IdRes int i10, @NotNull c<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mOnItemChildLongClickArray.put(i10, listener);
        return this;
    }

    public final void addOnViewAttachStateChangeListener(@NotNull f listener) {
        List<f> list;
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.onViewAttachStateChangeListeners == null) {
            this.onViewAttachStateChangeListeners = new ArrayList();
        }
        List<f> list2 = this.onViewAttachStateChangeListeners;
        boolean z10 = false;
        if (list2 != null && list2.contains(listener)) {
            z10 = true;
        }
        if (z10 || (list = this.onViewAttachStateChangeListeners) == null) {
            return;
        }
        list.add(listener);
    }

    protected final void asStaggeredGridFullSpan(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "<this>");
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    protected void bindViewClickListener(@NotNull final VH viewHolder, int i10) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.mOnItemClickListener != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseQuickAdapter.g(viewHolder, this, view);
                }
            });
        }
        if (this.mOnItemLongClickListener != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.e
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return BaseQuickAdapter.h(viewHolder, this, view);
                }
            });
        }
        int size = this.mOnItemChildClickArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            View viewFindViewById = viewHolder.itemView.findViewById(this.mOnItemChildClickArray.keyAt(i11));
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseQuickAdapter.e(viewHolder, this, view);
                    }
                });
            }
        }
        int size2 = this.mOnItemChildLongClickArray.size();
        for (int i12 = 0; i12 < size2; i12++) {
            View viewFindViewById2 = viewHolder.itemView.findViewById(this.mOnItemChildLongClickArray.keyAt(i12));
            if (viewFindViewById2 != null) {
                viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.g
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return BaseQuickAdapter.f(viewHolder, this, view);
                    }
                });
            }
        }
    }

    public final void clearOnViewAttachStateChangeListener() {
        List<f> list = this.onViewAttachStateChangeListeners;
        if (list != null) {
            list.clear();
        }
    }

    public final boolean displayEmptyView(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (this.emptyView == null || !this.isEmptyViewEnable) {
            return false;
        }
        return list.isEmpty();
    }

    public final boolean getAnimationEnable() {
        return this.animationEnable;
    }

    @NotNull
    public final Context getContext() {
        Context context = getRecyclerView().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return context;
    }

    @Nullable
    public final View getEmptyView() {
        return this.emptyView;
    }

    @Nullable
    public final T getItem(@IntRange(from = 0) int i10) {
        return (T) CollectionsKt___CollectionsKt.getOrNull(getItems(), i10);
    }

    @Nullable
    public final o2.b getItemAnimation() {
        return this.itemAnimation;
    }

    protected int getItemCount(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    public final int getItemPosition(@Nullable T t10) {
        Iterator<T> it2 = getItems().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(t10, it2.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    protected int getItemViewType(int i10, @NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return 0;
    }

    @NotNull
    public List<T> getItems() {
        return this.items;
    }

    @Nullable
    public final d<T> getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    @Nullable
    public final e<T> getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this._recyclerView;
        if (recyclerView == null) {
            throw new IllegalStateException("Please get it after onAttachedToRecyclerView()".toString());
        }
        Intrinsics.checkNotNull(recyclerView);
        return recyclerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final VH getVH(@NotNull RecyclerView.ViewHolder holer) {
        Intrinsics.checkNotNullParameter(holer, "holer");
        return holer;
    }

    public final boolean isAnimationFirstOnly() {
        return this.isAnimationFirstOnly;
    }

    public final boolean isEmptyViewEnable() {
        return this.isEmptyViewEnable;
    }

    public final boolean isEmptyViewHolder(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "<this>");
        return viewHolder instanceof v2.b;
    }

    public boolean isFullSpanItem(int i10) {
        return i10 == 268436821;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this._recyclerView = recyclerView;
    }

    protected abstract void onBindViewHolder(@NotNull VH vh, int i10, @Nullable T t10);

    protected void onBindViewHolder(@NotNull VH holder, int i10, @Nullable T t10, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        onBindViewHolder(holder, i10, t10);
    }

    @NotNull
    protected abstract VH onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup viewGroup, int i10);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public final RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 268436821) {
            FrameLayout frameLayout = new FrameLayout(parent.getContext());
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return new v2.b(frameLayout);
        }
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RecyclerView.ViewHolder viewHolderOnCreateViewHolder = onCreateViewHolder(context, parent, i10);
        bindViewClickListener(viewHolderOnCreateViewHolder, i10);
        return viewHolderOnCreateViewHolder;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this._recyclerView = null;
    }

    protected void onItemChildClick(@NotNull View v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        b<T> bVar = this.mOnItemChildClickArray.get(v10.getId());
        if (bVar != null) {
            bVar.onItemClick(this, v10, i10);
        }
    }

    protected boolean onItemChildLongClick(@NotNull View v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        c<T> cVar = this.mOnItemChildLongClickArray.get(v10.getId());
        if (cVar != null) {
            return cVar.a(this, v10, i10);
        }
        return false;
    }

    protected void onItemClick(@NotNull View v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        d<T> dVar = this.mOnItemClickListener;
        if (dVar != null) {
            dVar.onClick(this, v10, i10);
        }
    }

    protected boolean onItemLongClick(@NotNull View v10, int i10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        e<T> eVar = this.mOnItemLongClickListener;
        if (eVar != null) {
            return eVar.a(this, v10, i10);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        if (isFullSpanItem(getItemViewType(holder.getBindingAdapterPosition()))) {
            asStaggeredGridFullSpan(holder);
        } else {
            j(holder);
        }
        List<f> list = this.onViewAttachStateChangeListeners;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((f) it2.next()).onViewAttachedToWindow(holder);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        List<f> list = this.onViewAttachStateChangeListeners;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ((f) it2.next()).onViewDetachedFromWindow(holder);
            }
        }
    }

    public void remove(T t10) {
        int iIndexOf = getItems().indexOf(t10);
        if (iIndexOf == -1) {
            return;
        }
        removeAt(iIndexOf);
    }

    public void removeAt(@IntRange(from = 0) int i10) {
        if (i10 < getItems().size()) {
            i().remove(i10);
            notifyItemRemoved(i10);
            if (displayEmptyView$default(this, null, 1, null)) {
                notifyItemInserted(0);
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> removeOnItemChildClickListener(@IdRes int i10) {
        this.mOnItemChildClickArray.remove(i10);
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> removeOnItemChildLongClickListener(@IdRes int i10) {
        this.mOnItemChildLongClickArray.remove(i10);
        return this;
    }

    public final void removeOnViewAttachStateChangeListener(@NotNull f listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        List<f> list = this.onViewAttachStateChangeListeners;
        if (list != null) {
            list.remove(listener);
        }
    }

    public void set(@IntRange(from = 0) int i10, T t10) {
        if (i10 < getItems().size()) {
            i().set(i10, t10);
            notifyItemChanged(i10);
            return;
        }
        throw new IndexOutOfBoundsException("position: " + i10 + ". size:" + getItems().size());
    }

    public final void setAnimationEnable(boolean z10) {
        this.animationEnable = z10;
    }

    public final void setAnimationFirstOnly(boolean z10) {
        this.isAnimationFirstOnly = z10;
    }

    public final void setEmptyView(@Nullable View view) {
        boolean zDisplayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        this.emptyView = view;
        boolean zDisplayEmptyView$default2 = displayEmptyView$default(this, null, 1, null);
        if (zDisplayEmptyView$default && !zDisplayEmptyView$default2) {
            notifyItemRemoved(0);
            return;
        }
        if (zDisplayEmptyView$default2 && !zDisplayEmptyView$default) {
            notifyItemInserted(0);
        } else if (zDisplayEmptyView$default && zDisplayEmptyView$default2) {
            notifyItemChanged(0, 0);
        }
    }

    public final void setEmptyViewEnable(boolean z10) {
        boolean zDisplayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        this.isEmptyViewEnable = z10;
        boolean zDisplayEmptyView$default2 = displayEmptyView$default(this, null, 1, null);
        if (zDisplayEmptyView$default && !zDisplayEmptyView$default2) {
            notifyItemRemoved(0);
            return;
        }
        if (zDisplayEmptyView$default2 && !zDisplayEmptyView$default) {
            notifyItemInserted(0);
        } else if (zDisplayEmptyView$default && zDisplayEmptyView$default2) {
            notifyItemChanged(0, 0);
        }
    }

    public final void setEmptyViewLayout(@NotNull Context context, @LayoutRes int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setEmptyView(LayoutInflater.from(context).inflate(i10, (ViewGroup) new FrameLayout(context), false));
    }

    public final void setItemAnimation(@Nullable o2.b bVar) {
        this.animationEnable = true;
        this.itemAnimation = bVar;
    }

    public void setItems(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> setOnItemClickListener(@Nullable d<T> dVar) {
        this.mOnItemClickListener = dVar;
        return this;
    }

    @NotNull
    public final BaseQuickAdapter<T, VH> setOnItemLongClickListener(@Nullable e<T> eVar) {
        this.mOnItemLongClickListener = eVar;
        return this;
    }

    protected void startItemAnimator(@NotNull Animator anim, @NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(anim, "anim");
        Intrinsics.checkNotNullParameter(holder, "holder");
        anim.start();
    }

    public void submitList(@Nullable List<? extends T> list) {
        if (list == getItems()) {
            return;
        }
        this.mLastPosition = -1;
        if (list == null) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        boolean zDisplayEmptyView$default = displayEmptyView$default(this, null, 1, null);
        boolean zDisplayEmptyView = displayEmptyView(list);
        if (zDisplayEmptyView$default && !zDisplayEmptyView) {
            setItems(list);
            notifyItemRemoved(0);
            notifyItemRangeInserted(0, list.size());
        } else if (zDisplayEmptyView && !zDisplayEmptyView$default) {
            notifyItemRangeRemoved(0, getItems().size());
            setItems(list);
            notifyItemInserted(0);
        } else if (zDisplayEmptyView$default && zDisplayEmptyView) {
            setItems(list);
            notifyItemChanged(0, 0);
        } else {
            setItems(list);
            notifyDataSetChanged();
        }
    }

    public void swap(int i10, int i11) {
        int size = getItems().size();
        if (i10 >= 0 && i10 < size) {
            if (i11 >= 0 && i11 < size) {
                Collections.swap(getItems(), i10, i11);
                notifyItemMoved(i10, i11);
            }
        }
    }

    public /* synthetic */ BaseQuickAdapter(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        if (displayEmptyView$default(this, null, 1, null)) {
            return 1;
        }
        return getItemCount(getItems());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i10) {
        return displayEmptyView$default(this, null, 1, null) ? EMPTY_VIEW : getItemViewType(i10, getItems());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof v2.b) {
            ((v2.b) holder).a(this.emptyView);
            return;
        }
        RecyclerView.ViewHolder vh = getVH(holder);
        if (vh == null) {
            return;
        }
        onBindViewHolder(vh, i10, getItem(i10));
    }

    public final void setItemAnimation(@NotNull AnimationType animationType) {
        o2.b aVar;
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i10 = g.$EnumSwitchMapping$0[animationType.ordinal()];
        if (i10 == 1) {
            aVar = new o2.a(0L, 0.0f, 3, null);
        } else if (i10 == 2) {
            aVar = new o2.c(0L, 0.0f, 3, null);
        } else if (i10 == 3) {
            aVar = new o2.d(0L, 1, null);
        } else if (i10 == 4) {
            aVar = new o2.e(0L, 1, null);
        } else if (i10 == 5) {
            aVar = new o2.f(0L, 1, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        setItemAnimation(aVar);
    }

    public BaseQuickAdapter(@NotNull List<? extends T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        this.mLastPosition = -1;
        this.mOnItemChildClickArray = new SparseArray<>(3);
        this.mOnItemChildLongClickArray = new SparseArray<>(3);
        this.isAnimationFirstOnly = true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (holder instanceof v2.b) {
            ((v2.b) holder).a(this.emptyView);
            return;
        }
        if (payloads.isEmpty()) {
            RecyclerView.ViewHolder vh = getVH(holder);
            if (vh == null) {
                return;
            }
            onBindViewHolder(vh, i10, getItem(i10));
            return;
        }
        RecyclerView.ViewHolder vh2 = getVH(holder);
        if (vh2 == null) {
            return;
        }
        onBindViewHolder(vh2, i10, getItem(i10), payloads);
    }

    public void add(T t10) {
        if (displayEmptyView$default(this, null, 1, null)) {
            notifyItemRemoved(0);
        }
        i().add(t10);
        notifyItemInserted(getItems().size() - 1);
    }

    public void addAll(@NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (displayEmptyView$default(this, null, 1, null)) {
            notifyItemRemoved(0);
        }
        int size = getItems().size();
        i().addAll(collection);
        notifyItemRangeInserted(size, collection.size());
    }
}
