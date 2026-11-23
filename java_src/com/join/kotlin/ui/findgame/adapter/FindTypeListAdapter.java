package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.databinding.q9;
import com.join.android.app.mgsim.wufun.databinding.r9;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004*+,-B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0006J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0006H\u0016J\u0018\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u0006H\u0016J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u0006H\u0016J\b\u0010)\u001a\u00020\u0006H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006."}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "context", "Landroid/content/Context;", "typeId", "", "showdatas", "", "Lcom/psk/kotlin/util/CommonListMainData;", "listener", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "<init>", "(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getTypeId", "()I", "setTypeId", "(I)V", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "getListener", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "setListener", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V", "updateDatas", "", "typeIdx", "onCreateViewHolder", "viewgroup", "Landroid/view/ViewGroup;", "type", "onBindViewHolder", "viewHolder", "position", "getItemViewType", "getItemCount", "ViewTypeImage", "ViewTypeText", "FindClassifyType", "OnItenSelected", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FindTypeListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    @NotNull
    private Context context;

    @NotNull
    private OnItenSelected listener;

    @NotNull
    private List<CommonListMainData> showdatas;
    private int typeId;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$FindClassifyType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FindClassifyType {
        public static final int GAMETEXTTYPE = 7;
        public static final int TYPEIMAGE = 3;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "", "onItemselected", "", "type", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnItenSelected {
        void onItemselected(@NotNull GameSubTypeData type);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeImageLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeImageLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeImageLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewTypeImage extends RecyclerView.ViewHolder {

        @NotNull
        private q9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewTypeImage(@NotNull q9 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final q9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull q9 q9Var) {
            Intrinsics.checkNotNullParameter(q9Var, "<set-?>");
            this.binding = q9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeTextLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeTextLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ClassfyTypeTextLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewTypeText extends RecyclerView.ViewHolder {

        @NotNull
        private r9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewTypeText(@NotNull r9 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final r9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull r9 r9Var) {
            Intrinsics.checkNotNullParameter(r9Var, "<set-?>");
            this.binding = r9Var;
        }
    }

    public FindTypeListAdapter(@NotNull Context context, int i10, @NotNull List<CommonListMainData> showdatas, @NotNull OnItenSelected listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(showdatas, "showdatas");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.typeId = i10;
        this.showdatas = showdatas;
        this.listener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$0(FindTypeListAdapter findTypeListAdapter, Ref.ObjectRef objectRef) {
        findTypeListAdapter.listener.onItemselected((GameSubTypeData) objectRef.element);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$1(FindTypeListAdapter findTypeListAdapter, Ref.ObjectRef objectRef) {
        findTypeListAdapter.listener.onItemselected((GameSubTypeData) objectRef.element);
        return Unit.INSTANCE;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.showdatas.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return this.showdatas.get(position).getType();
    }

    @NotNull
    public final OnItenSelected getListener() {
        return this.listener;
    }

    @NotNull
    public final List<CommonListMainData> getShowdatas() {
        return this.showdatas;
    }

    public final int getTypeId() {
        return this.typeId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v17, types: [T, com.join.kotlin.ui.findgame.data.GameSubTypeData] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, com.join.kotlin.ui.findgame.data.GameSubTypeData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int itemViewType = getItemViewType(position);
        if (itemViewType == 3) {
            ViewTypeImage viewTypeImage = (ViewTypeImage) viewHolder;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Object any = this.showdatas.get(position).getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
            objectRef.element = (GameSubTypeData) any;
            viewTypeImage.getBinding().getRoot().setSelected(((GameSubTypeData) objectRef.element).isSelected());
            viewTypeImage.getBinding().f43729d.setSelected(((GameSubTypeData) objectRef.element).isSelected());
            com.join.android.app.common.utils.l.h(viewTypeImage.getBinding().f43728c, ((GameSubTypeData) objectRef.element).getPic());
            viewTypeImage.getBinding().f43729d.setText(((GameSubTypeData) objectRef.element).getTitle());
            LinearLayout root = viewTypeImage.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            CommonExtKt.onClick(root, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindTypeListAdapter.onBindViewHolder$lambda$0(this.f49094b, objectRef);
                }
            });
            return;
        }
        if (itemViewType != 7) {
            return;
        }
        ViewTypeText viewTypeText = (ViewTypeText) viewHolder;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Object any2 = this.showdatas.get(position).getAny();
        Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
        objectRef2.element = (GameSubTypeData) any2;
        viewTypeText.getBinding().f44263c.setText(((GameSubTypeData) objectRef2.element).getTitle());
        viewTypeText.getBinding().getRoot().setSelected(((GameSubTypeData) objectRef2.element).isSelected());
        viewTypeText.getBinding().f44263c.setSelected(((GameSubTypeData) objectRef2.element).isSelected());
        LinearLayout root2 = viewTypeText.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        CommonExtKt.onClick(root2, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindTypeListAdapter.onBindViewHolder$lambda$1(this.f49096b, objectRef2);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewgroup, int type) {
        Intrinsics.checkNotNullParameter(viewgroup, "viewgroup");
        if (type == 3) {
            q9 q9VarInflate = q9.inflate(LayoutInflater.from(this.context), viewgroup, false);
            Intrinsics.checkNotNullExpressionValue(q9VarInflate, "inflate(...)");
            return new ViewTypeImage(q9VarInflate);
        }
        if (type != 7) {
            r9 r9VarInflate = r9.inflate(LayoutInflater.from(this.context), viewgroup, false);
            Intrinsics.checkNotNullExpressionValue(r9VarInflate, "inflate(...)");
            return new ViewTypeText(r9VarInflate);
        }
        r9 r9VarInflate2 = r9.inflate(LayoutInflater.from(this.context), viewgroup, false);
        Intrinsics.checkNotNullExpressionValue(r9VarInflate2, "inflate(...)");
        return new ViewTypeText(r9VarInflate2);
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnItenSelected onItenSelected) {
        Intrinsics.checkNotNullParameter(onItenSelected, "<set-?>");
        this.listener = onItenSelected;
    }

    public final void setShowdatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showdatas = list;
    }

    public final void setTypeId(int i10) {
        this.typeId = i10;
    }

    public final void updateDatas(int typeIdx) {
        this.typeId = typeIdx;
        notifyDataSetChanged();
    }
}
