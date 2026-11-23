package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.s;
import com.join.android.app.mgsim.wufun.databinding.aa;
import com.join.android.app.mgsim.wufun.databinding.m9;
import com.join.android.app.mgsim.wufun.databinding.t9;
import com.join.android.app.mgsim.wufun.databinding.u9;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001d\u001e\u001f !B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "context", "Landroid/content/Context;", "showdatas", "", "Lcom/psk/kotlin/util/CommonListMainData;", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "onCreateViewHolder", "viewGroup", "Landroid/view/ViewGroup;", "type", "", "getItemViewType", "position", "onBindViewHolder", "", "viewHolderx", "getItemCount", "FindClassifyType", "ClassifyGameItemViewHolder", "ChoiceTitleHolder", "ChoiceAdHolder", "DiscountTypeHolder", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FindClassifyAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    @NotNull
    private Context context;

    @NotNull
    private List<CommonListMainData> showdatas;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ClassifyMainadLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ClassifyMainadLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ClassifyMainadLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceAdHolder extends RecyclerView.ViewHolder {

        @NotNull
        private aa binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceAdHolder(@NotNull aa bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final aa getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull aa aaVar) {
            Intrinsics.checkNotNullParameter(aaVar, "<set-?>");
            this.binding = aaVar;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceTitleHolder extends RecyclerView.ViewHolder {

        @NotNull
        private m9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceTitleHolder(@NotNull m9 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final m9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull m9 m9Var) {
            Intrinsics.checkNotNullParameter(m9Var, "<set-?>");
            this.binding = m9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/ClassifyGameiconItemBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ClassifyGameiconItemBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ClassifyGameiconItemBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ClassifyGameItemViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private u9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClassifyGameItemViewHolder(@NotNull u9 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final u9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull u9 u9Var) {
            Intrinsics.checkNotNullParameter(u9Var, "<set-?>");
            this.binding = u9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ClassifyDiscountTypeLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ClassifyDiscountTypeLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ClassifyDiscountTypeLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DiscountTypeHolder extends RecyclerView.ViewHolder {

        @NotNull
        private t9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DiscountTypeHolder(@NotNull t9 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final t9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull t9 t9Var) {
            Intrinsics.checkNotNullParameter(t9Var, "<set-?>");
            this.binding = t9Var;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$FindClassifyType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FindClassifyType {
        public static final int AD = 3;
        public static final int DISCOUNT_TYPE = 7;
        public static final int GAMEICONLIST = 5;
        public static final int GAMETEXTTYPE = 7;
        public static final int GAMETYPE = 6;
    }

    public FindClassifyAdapter(@NotNull Context context, @NotNull List<CommonListMainData> showdatas) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(showdatas, "showdatas");
        this.context = context;
        this.showdatas = showdatas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$0(FindClassifyAdapter findClassifyAdapter, Ref.ObjectRef objectRef) {
        IntentUtil.getInstance().goGameDetialActivity(findClassifyAdapter.context, ((CollectionBeanSub) objectRef.element).getGame_id(), ((CollectionBeanSub) objectRef.element).get_from_type());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$1(FindClassifyAdapter findClassifyAdapter, Ref.ObjectRef objectRef) {
        IntentUtil.getInstance().goGameDetialActivity(findClassifyAdapter.context, ((CollectionBeanSub) objectRef.element).getGame_id(), ((CollectionBeanSub) objectRef.element).get_from_type());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$2(FindClassifyAdapter findClassifyAdapter, Ref.ObjectRef objectRef) {
        IntentUtil.getInstance().goColloctionList(findClassifyAdapter.context, ((FindChoiceColloctionListData) objectRef.element).getTpl_type(), ((FindChoiceColloctionListData) objectRef.element).getComponent_id());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$5(FindClassifyAdapter findClassifyAdapter, CommonGameInfoBean commonGameInfoBean, View view) {
        IntentDateBean intentDataBean;
        IntentUtil intentUtil = IntentUtil.getInstance();
        Context context = findClassifyAdapter.context;
        if (commonGameInfoBean == null || (intentDataBean = commonGameInfoBean.getIntentDataBean()) == null) {
            intentDataBean = null;
        } else {
            ExtBean extBean = intentDataBean.getExtBean();
            extBean.setKeepOrginFrom(true);
            extBean.setOrginFrom("208");
            Unit unit = Unit.INSTANCE;
        }
        intentUtil.intentActivity(context, intentDataBean);
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
    public final List<CommonListMainData> getShowdatas() {
        return this.showdatas;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, com.join.mgps.dto.CollectionBeanSub] */
    /* JADX WARN: Type inference failed for: r6v29, types: [T, com.join.mgps.dto.CollectionBeanSub] */
    /* JADX WARN: Type inference failed for: r6v5, types: [T, com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolderx, int position) {
        String title;
        Intrinsics.checkNotNullParameter(viewHolderx, "viewHolderx");
        int itemViewType = getItemViewType(position);
        if (itemViewType == 1) {
            ChoiceTitleHolder choiceTitleHolder = (ChoiceTitleHolder) viewHolderx;
            if (this.showdatas.get(position).getAny() instanceof String) {
                Object any = this.showdatas.get(position).getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type kotlin.String");
                title = (String) any;
                choiceTitleHolder.getBinding().f41786c.setVisibility(8);
            } else if (this.showdatas.get(position).getAny() instanceof FindChoiceColloctionListData) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any2 = this.showdatas.get(position).getAny();
                Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData");
                ?? r10 = (FindChoiceColloctionListData) any2;
                objectRef.element = r10;
                title = r10.getTitle();
                TextView more = choiceTitleHolder.getBinding().f41786c;
                Intrinsics.checkNotNullExpressionValue(more, "more");
                CommonExtKt.onClick(more, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return FindClassifyAdapter.onBindViewHolder$lambda$2(this.f49078b, objectRef);
                    }
                });
            } else {
                title = "";
            }
            choiceTitleHolder.getBinding().f41787d.setText(title);
            return;
        }
        if (itemViewType == 3) {
            Object any3 = this.showdatas.get(position).getAny();
            Intrinsics.checkNotNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
            FindChoiceBannerData findChoiceBannerData = (FindChoiceBannerData) any3;
            ChoiceAdHolder choiceAdHolder = (ChoiceAdHolder) viewHolderx;
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = findChoiceBannerData.getGame_info();
            com.join.android.app.common.utils.l.q(choiceAdHolder.getBinding().f35720c, findChoiceBannerData.getPic(), s.c.f27292i);
            com.join.android.app.common.utils.l.h(choiceAdHolder.getBinding().f35722e, ((CollectionBeanSub) objectRef2.element).getIco_remote());
            choiceAdHolder.getBinding().f35723f.setText(((CollectionBeanSub) objectRef2.element).getInfo());
            choiceAdHolder.getBinding().f35724g.setText(((CollectionBeanSub) objectRef2.element).getGame_name());
            RelativeLayout root = choiceAdHolder.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            CommonExtKt.onClick(root, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindClassifyAdapter.onBindViewHolder$lambda$0(this.f49074b, objectRef2);
                }
            });
            choiceAdHolder.getBinding().f35721d.f(new m6.c(this.context, (Downloadable) objectRef2.element));
            return;
        }
        if (itemViewType != 5) {
            if (itemViewType != 7) {
                return;
            }
            final CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.showdatas.get(position).getAny();
            DiscountTypeHolder discountTypeHolder = (DiscountTypeHolder) viewHolderx;
            com.join.android.app.common.utils.l.o(discountTypeHolder.getBinding().f45159c, commonGameInfoBean != null ? commonGameInfoBean.getBig_pic() : null);
            discountTypeHolder.getBinding().f45160d.setText(commonGameInfoBean != null ? commonGameInfoBean.getTitle() : null);
            discountTypeHolder.getBinding().getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.findgame.adapter.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FindClassifyAdapter.onBindViewHolder$lambda$5(this.f49080b, commonGameInfoBean, view);
                }
            });
            return;
        }
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        Object any4 = this.showdatas.get(position).getAny();
        Intrinsics.checkNotNull(any4, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
        objectRef3.element = (CollectionBeanSub) any4;
        ClassifyGameItemViewHolder classifyGameItemViewHolder = (ClassifyGameItemViewHolder) viewHolderx;
        com.join.android.app.common.utils.l.h(classifyGameItemViewHolder.getBinding().f45608c, ((CollectionBeanSub) objectRef3.element).getIco_remote());
        classifyGameItemViewHolder.getBinding().f45609d.setText(((CollectionBeanSub) objectRef3.element).getGame_name());
        LinearLayout root2 = classifyGameItemViewHolder.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        CommonExtKt.onClick(root2, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FindClassifyAdapter.onBindViewHolder$lambda$1(this.f49076b, objectRef3);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int type) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        if (type == 1) {
            m9 m9VarInflate = m9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(m9VarInflate, "inflate(...)");
            return new ChoiceTitleHolder(m9VarInflate);
        }
        if (type == 3) {
            aa aaVarInflate = aa.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(aaVarInflate, "inflate(...)");
            return new ChoiceAdHolder(aaVarInflate);
        }
        if (type == 5) {
            u9 u9VarInflate = u9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(u9VarInflate, "inflate(...)");
            return new ClassifyGameItemViewHolder(u9VarInflate);
        }
        if (type != 7) {
            m9 m9VarInflate2 = m9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(m9VarInflate2, "inflate(...)");
            return new ChoiceTitleHolder(m9VarInflate2);
        }
        t9 t9VarInflate = t9.inflate(LayoutInflater.from(this.context), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(t9VarInflate, "inflate(...)");
        return new DiscountTypeHolder(t9VarInflate);
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setShowdatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showdatas = list;
    }
}
