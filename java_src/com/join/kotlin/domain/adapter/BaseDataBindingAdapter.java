package com.join.kotlin.domain.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.sdk.base.module.manager.SDKManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004:\u0003=>?B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0016JU\u0010\u001f\u001a\u00020 2K\u0010\"\u001aG\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b((\u0012\u0013\u0012\u00110$¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b()\u0012\u0004\u0012\u00020 0#H\u0016J\u0016\u0010*\u001a\u00020 2\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0016J\u0018\u0010,\u001a\u00020 2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aH\u0016J\u0018\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020$H\u0016J&\u00102\u001a\u00020 2\u0006\u00103\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$2\f\u00104\u001a\b\u0012\u0004\u0012\u00020605H\u0016J\u0018\u00102\u001a\u00020 2\u0006\u00103\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$H\u0016J\b\u00107\u001a\u00020$H\u0016J\u0010\u00108\u001a\u00020$2\u0006\u00101\u001a\u00020$H%J'\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00028\u00012\u0006\u0010(\u001a\u00028\u00002\b\u00103\u001a\u0004\u0018\u00010\u0005H$¢\u0006\u0002\u0010;J'\u0010<\u001a\u00020 2\u0006\u0010:\u001a\u00028\u00012\u0006\u0010(\u001a\u00028\u00002\b\u00103\u001a\u0004\u0018\u00010\u0005H$¢\u0006\u0002\u0010;R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\tR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0014X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006@"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "M", SDKManager.ALGO_B_AES_SHA256_RSA, "Landroidx/databinding/ViewDataBinding;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getMContext", "()Landroid/content/Context;", "setMContext", "mOnItemClickListener", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "getMOnItemClickListener", "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "setMOnItemClickListener", "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V", "mOnItemLongClickListener", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "getMOnItemLongClickListener", "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "setMOnItemLongClickListener", "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V", "listDatas", "", "getListDatas", "()Ljava/util/List;", "setListDatas", "(Ljava/util/List;)V", "setOnItemClickListener", "", "onItemClickListener", com.alipay.sdk.authjs.a.f7128m, "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "viewId", "item", "position", "setOnItemLongClickListener", "onItemLongClickListener", "submitList", "list", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "payloads", "", "", "getItemCount", "getLayoutResId", "onBindItem", "binding", "(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "onBindItemPayloads", "OnItemLongClickListener", "OnItemClickListener", "BaseBindingViewHolder", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseDataBindingAdapter<M, B extends ViewDataBinding> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    @Nullable
    private List<? extends M> listDatas;

    @NotNull
    private Context mContext;

    @Nullable
    private OnItemClickListener<M> mOnItemClickListener;

    @Nullable
    private OnItemLongClickListener<M> mOnItemLongClickListener;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class BaseBindingViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseBindingViewHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00020\u0006H&¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;", "M", "", "onItemClick", "", "viewId", "", "item", "position", "(ILjava/lang/Object;I)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnItemClickListener<M> {
        void onItemClick(int viewId, M item, int position);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0002\u0010\u00012\u00020\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u00022\u0006\u0010\b\u001a\u00020\u0006H&¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;", "M", "", "onItemLongClick", "", "viewId", "", "item", "position", "(ILjava/lang/Object;I)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnItemLongClickListener<M> {
        void onItemLongClick(int viewId, M item, int position);
    }

    public BaseDataBindingAdapter(@NotNull Context mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void onBindViewHolder$lambda$0(BaseDataBindingAdapter baseDataBindingAdapter, RecyclerView.ViewHolder viewHolder, int i10, View view) {
        OnItemClickListener<M> onItemClickListener = baseDataBindingAdapter.mOnItemClickListener;
        if (onItemClickListener == null || onItemClickListener == null) {
            return;
        }
        int id2 = viewHolder.itemView.getId();
        List<? extends M> list = baseDataBindingAdapter.listDatas;
        Intrinsics.checkNotNull(list);
        onItemClickListener.onItemClick(id2, list.get(i10), i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final boolean onBindViewHolder$lambda$1(BaseDataBindingAdapter baseDataBindingAdapter, RecyclerView.ViewHolder viewHolder, int i10, View view) {
        OnItemLongClickListener<M> onItemLongClickListener = baseDataBindingAdapter.mOnItemLongClickListener;
        if (onItemLongClickListener == null) {
            return false;
        }
        if (onItemLongClickListener == null) {
            return true;
        }
        int id2 = viewHolder.itemView.getId();
        List<? extends M> list = baseDataBindingAdapter.listDatas;
        Intrinsics.checkNotNull(list);
        onItemLongClickListener.onItemLongClick(id2, list.get(i10), i10);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<? extends M> list = this.listDatas;
        if (list == null) {
            return 0;
        }
        Intrinsics.checkNotNull(list);
        return list.size();
    }

    @LayoutRes
    protected abstract int getLayoutResId(int viewType);

    @Nullable
    public final List<M> getListDatas() {
        return this.listDatas;
    }

    @NotNull
    public final Context getMContext() {
        return this.mContext;
    }

    @Nullable
    protected final OnItemClickListener<M> getMOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    @Nullable
    protected final OnItemLongClickListener<M> getMOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    protected abstract void onBindItem(@NotNull B binding, M item, @Nullable RecyclerView.ViewHolder holder);

    protected abstract void onBindItemPayloads(@NotNull B binding, M item, @Nullable RecyclerView.ViewHolder holder);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, position, payloads);
            return;
        }
        ViewDataBinding binding = DataBindingUtil.getBinding(holder.itemView);
        Intrinsics.checkNotNull(binding);
        List<? extends M> list = this.listDatas;
        M m10 = list != null ? list.get(position) : null;
        Intrinsics.checkNotNull(m10);
        onBindItemPayloads(binding, m10, holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ViewDataBinding viewDataBindingInflate = DataBindingUtil.inflate(LayoutInflater.from(this.mContext), getLayoutResId(viewType), parent, false);
        Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate, "inflate(...)");
        View root = viewDataBindingInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return new BaseBindingViewHolder(root);
    }

    public final void setListDatas(@Nullable List<? extends M> list) {
        this.listDatas = list;
    }

    public final void setMContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.mContext = context;
    }

    protected final void setMOnItemClickListener(@Nullable OnItemClickListener<M> onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    protected final void setMOnItemLongClickListener(@Nullable OnItemLongClickListener<M> onItemLongClickListener) {
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void setOnItemClickListener(@NotNull OnItemClickListener<M> onItemClickListener) {
        Intrinsics.checkNotNullParameter(onItemClickListener, "onItemClickListener");
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(@NotNull OnItemLongClickListener<M> onItemLongClickListener) {
        Intrinsics.checkNotNullParameter(onItemLongClickListener, "onItemLongClickListener");
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void submitList(@Nullable List<? extends M> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.listDatas = list;
    }

    public void setOnItemClickListener(@NotNull final Function3<? super Integer, ? super M, ? super Integer, Unit> func) {
        Intrinsics.checkNotNullParameter(func, "func");
        this.mOnItemClickListener = new OnItemClickListener<M>() { // from class: com.join.kotlin.domain.adapter.BaseDataBindingAdapter.setOnItemClickListener.1
            @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
            public void onItemClick(int viewId, M item, int position) {
                func.invoke(Integer.valueOf(viewId), item, Integer.valueOf(position));
            }
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull final RecyclerView.ViewHolder holder, final int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ViewDataBinding binding = DataBindingUtil.getBinding(holder.itemView);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.domain.adapter.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseDataBindingAdapter.onBindViewHolder$lambda$0(this.f48603b, holder, position, view);
            }
        });
        holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.join.kotlin.domain.adapter.b
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return BaseDataBindingAdapter.onBindViewHolder$lambda$1(this.f48606b, holder, position, view);
            }
        });
        if (binding != null) {
            List<? extends M> list = this.listDatas;
            M m10 = list != null ? list.get(position) : null;
            Intrinsics.checkNotNull(m10);
            onBindItem(binding, m10, holder);
            binding.executePendingBindings();
        }
    }
}
