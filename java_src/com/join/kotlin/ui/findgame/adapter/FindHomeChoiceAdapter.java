package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.s;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.c9;
import com.join.android.app.mgsim.wufun.databinding.d9;
import com.join.android.app.mgsim.wufun.databinding.is;
import com.join.android.app.mgsim.wufun.databinding.j9;
import com.join.android.app.mgsim.wufun.databinding.js;
import com.join.android.app.mgsim.wufun.databinding.k9;
import com.join.android.app.mgsim.wufun.databinding.l9;
import com.join.android.app.mgsim.wufun.databinding.m9;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.kuaishou.weapon.p0.bo;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\n\u001d\u001e\u001f !\"#$%&B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006'"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "context", "Landroid/content/Context;", "showdatas", "", "Lcom/psk/kotlin/util/CommonListMainData;", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "onCreateViewHolder", "viewGroup", "Landroid/view/ViewGroup;", "type", "", "onBindViewHolder", "", "viewHolder", "position", "getItemViewType", "getItemCount", "ChoiceTagHolder", "ChoiceAdHolder", "ChoiceTitleHolder", "ChoiceGamelistHolder", "FindChoiceType", "ChoiceGameItemViewHolder", "ChoiceGamePicListViewHolder", "ChoiceGameItemPicViewHolder", "ChoiceGameListAdapter", "ChoiceGamePicListAdapter", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FindHomeChoiceAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    @NotNull
    private Context context;

    @NotNull
    private List<CommonListMainData> showdatas;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceAdHolder extends RecyclerView.ViewHolder {

        @NotNull
        private j9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceAdHolder(@NotNull j9 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final j9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull j9 j9Var) {
            Intrinsics.checkNotNullParameter(j9Var, "<set-?>");
            this.binding = j9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemPicViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/GamedetailPicItemBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/GamedetailPicItemBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/GamedetailPicItemBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGameItemPicViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private is binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGameItemPicViewHolder(@NotNull is itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final is getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull is isVar) {
            Intrinsics.checkNotNullParameter(isVar, "<set-?>");
            this.binding = isVar;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/GamedetailRecomItemBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/GamedetailRecomItemBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/GamedetailRecomItemBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGameItemViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private js binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGameItemViewHolder(@NotNull js itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final js getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull js jsVar) {
            Intrinsics.checkNotNullParameter(jsVar, "<set-?>");
            this.binding = jsVar;
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;", "context", "Landroid/content/Context;", "tagList", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getTagList", "()Ljava/util/List;", "setTagList", "(Ljava/util/List;)V", "onCreateViewHolder", bo.f74530g, "Landroid/view/ViewGroup;", "type", "", "onBindViewHolder", "", "p1", "getItemCount", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGameListAdapter extends RecyclerView.Adapter<ChoiceGameItemViewHolder> {

        @NotNull
        private Context context;

        @NotNull
        private List<CollectionBeanSub> tagList;

        public ChoiceGameListAdapter(@NotNull Context context, @NotNull List<CollectionBeanSub> tagList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tagList, "tagList");
            this.context = context;
            this.tagList = tagList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final Unit onBindViewHolder$lambda$0(ChoiceGameListAdapter choiceGameListAdapter, Ref.ObjectRef objectRef) {
            IntentUtil.getInstance().goGameDetialActivity(choiceGameListAdapter.context, ((CollectionBeanSub) objectRef.element).getGame_id(), ((CollectionBeanSub) objectRef.element).get_from_type());
            return Unit.INSTANCE;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.tagList.size();
        }

        @NotNull
        public final List<CollectionBeanSub> getTagList() {
            return this.tagList;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setTagList(@NotNull List<CollectionBeanSub> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.tagList = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.Object] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull ChoiceGameItemViewHolder p10, int p11) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this.tagList.get(p11);
            com.join.android.app.common.utils.l.h(p10.getBinding().f40397c, ((CollectionBeanSub) objectRef.element).getIco_remote());
            p10.getBinding().f40398d.setText(((CollectionBeanSub) objectRef.element).getGame_name());
            LinearLayout root = p10.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            CommonExtKt.onClick(root, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindHomeChoiceAdapter.ChoiceGameListAdapter.onBindViewHolder$lambda$0(this.f49088b, objectRef);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public ChoiceGameItemViewHolder onCreateViewHolder(@NotNull ViewGroup p10, int type) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            js jsVarInflate = js.inflate(LayoutInflater.from(this.context), p10, false);
            Intrinsics.checkNotNullExpressionValue(jsVarInflate, "inflate(...)");
            return new ChoiceGameItemViewHolder(jsVarInflate);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0016H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemPicViewHolder;", "context", "Landroid/content/Context;", "tagList", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getTagList", "()Ljava/util/List;", "setTagList", "(Ljava/util/List;)V", "onCreateViewHolder", bo.f74530g, "Landroid/view/ViewGroup;", "type", "", "onBindViewHolder", "", "p1", "getItemCount", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGamePicListAdapter extends RecyclerView.Adapter<ChoiceGameItemPicViewHolder> {

        @NotNull
        private Context context;

        @NotNull
        private List<CollectionBeanSub> tagList;

        public ChoiceGamePicListAdapter(@NotNull Context context, @NotNull List<CollectionBeanSub> tagList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tagList, "tagList");
            this.context = context;
            this.tagList = tagList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final Unit onBindViewHolder$lambda$0(ChoiceGamePicListAdapter choiceGamePicListAdapter, Ref.ObjectRef objectRef) {
            IntentUtil.getInstance().goGameDetialActivity(choiceGamePicListAdapter.context, ((CollectionBeanSub) objectRef.element).getGame_id(), ((CollectionBeanSub) objectRef.element).get_from_type());
            return Unit.INSTANCE;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.tagList.size();
        }

        @NotNull
        public final List<CollectionBeanSub> getTagList() {
            return this.tagList;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setTagList(@NotNull List<CollectionBeanSub> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.tagList = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull ChoiceGameItemPicViewHolder p10, int p11) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ?? r10 = this.tagList.get(p11);
            objectRef.element = r10;
            if (t2.i(((CollectionBeanSub) r10).getGame_info_top_pic())) {
                com.join.android.app.common.utils.l.h(p10.getBinding().f39915c, ((CollectionBeanSub) objectRef.element).getGame_info_top_pic());
            } else if (((CollectionBeanSub) objectRef.element).getPic_info() != null && ((CollectionBeanSub) objectRef.element).getPic_info().size() > 0) {
                com.join.android.app.common.utils.l.h(p10.getBinding().f39915c, ((CollectionBeanSub) objectRef.element).getPic_info().get(0).getRemote().getPath());
            }
            p10.getBinding().f39916d.setText(((CollectionBeanSub) objectRef.element).getGame_name());
            LinearLayout root = p10.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            CommonExtKt.onClick(root, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindHomeChoiceAdapter.ChoiceGamePicListAdapter.onBindViewHolder$lambda$0(this.f49090b, objectRef);
                }
            });
            ViewGroup.LayoutParams layoutParams = p10.getBinding().f39915c.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            if (p11 == getItemCount() - 1) {
                layoutParams2.rightMargin = (int) this.context.getResources().getDimension(R.dimen.wdp17);
            } else {
                layoutParams2.rightMargin = 0;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public ChoiceGameItemPicViewHolder onCreateViewHolder(@NotNull ViewGroup p10, int type) {
            Intrinsics.checkNotNullParameter(p10, "p0");
            is isVarInflate = is.inflate(LayoutInflater.from(this.context), p10, false);
            Intrinsics.checkNotNullExpressionValue(isVarInflate, "inflate(...)");
            return new ChoiceGameItemPicViewHolder(isVarInflate);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamePicListLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamePicListLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamePicListLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGamePicListViewHolder extends RecyclerView.ViewHolder {

        @NotNull
        private c9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGamePicListViewHolder(@NotNull c9 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final c9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull c9 c9Var) {
            Intrinsics.checkNotNullParameter(c9Var, "<set-?>");
            this.binding = c9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamelistLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamelistLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceGamelistLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceGamelistHolder extends RecyclerView.ViewHolder {

        @NotNull
        private d9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGamelistHolder(@NotNull d9 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final d9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull d9 d9Var) {
            Intrinsics.checkNotNullParameter(d9Var, "<set-?>");
            this.binding = d9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTagLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTagLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTagLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ChoiceTagHolder extends RecyclerView.ViewHolder {

        @NotNull
        private l9 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceTagHolder(@NotNull l9 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final l9 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull l9 l9Var) {
            Intrinsics.checkNotNullParameter(l9Var, "<set-?>");
            this.binding = l9Var;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "bindingi", "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;)V", "binding", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceTitleLayoutBinding;", "setBinding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$FindChoiceType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class FindChoiceType {
        public static final int AD = 3;
        public static final int GAMEICONLIST = 5;
        public static final int GAME_PIC_LIST = 6;
        public static final int TAG = 4;
    }

    public FindHomeChoiceAdapter(@NotNull Context context, @NotNull List<CommonListMainData> showdatas) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(showdatas, "showdatas");
        this.context = context;
        this.showdatas = showdatas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onBindViewHolder$lambda$0(FindHomeChoiceAdapter findHomeChoiceAdapter, CollectionBeanSub collectionBeanSub) {
        IntentUtil.getInstance().goGameDetialActivity(findHomeChoiceAdapter.context, collectionBeanSub.getGame_id(), collectionBeanSub.get_from_type());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onBindViewHolder$lambda$1(FindHomeChoiceAdapter findHomeChoiceAdapter, TagData tagData) {
        Intent intent = new Intent(findHomeChoiceAdapter.context, (Class<?>) CategoryDetailListActivity.class);
        intent.putExtra("typeId", tagData.getType());
        intent.putExtra("tagId", tagData.getId());
        intent.putExtra("tagName", tagData.getTitle());
        Context context = findHomeChoiceAdapter.context;
        if (context != null) {
            context.startActivity(intent);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit onBindViewHolder$lambda$2(Ref.ObjectRef objectRef, FindHomeChoiceAdapter findHomeChoiceAdapter) {
        if ("461506587".equals(((FindChoiceColloctionListData) objectRef.element).getComponent_id())) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(29);
            intentDateBean.setCrc_link_type_val(((FindChoiceColloctionListData) objectRef.element).getComponent_id());
            ExtBean extBean = new ExtBean();
            extBean.setFrom("3");
            intentDateBean.setExtBean(extBean);
            IntentUtil.getInstance().intentActivity(findHomeChoiceAdapter.context, intentDateBean);
        } else {
            IntentUtil.getInstance().goColloctionList(findHomeChoiceAdapter.context, ((FindChoiceColloctionListData) objectRef.element).getTpl_type(), ((FindChoiceColloctionListData) objectRef.element).getComponent_id());
        }
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
    public final List<CommonListMainData> getShowdatas() {
        return this.showdatas;
    }

    /* JADX WARN: Type inference failed for: r7v5, types: [T, com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int position) {
        String title;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int itemViewType = getItemViewType(position);
        if (itemViewType == 1) {
            ChoiceTitleHolder choiceTitleHolder = (ChoiceTitleHolder) viewHolder;
            if (this.showdatas.get(position).getAny() instanceof String) {
                Object any = this.showdatas.get(position).getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type kotlin.String");
                title = (String) any;
                choiceTitleHolder.getBinding().f41786c.setVisibility(8);
            } else if (this.showdatas.get(position).getAny() instanceof FindChoiceColloctionListData) {
                choiceTitleHolder.getBinding().f41786c.setVisibility(0);
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any2 = this.showdatas.get(position).getAny();
                Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData");
                ?? r10 = (FindChoiceColloctionListData) any2;
                objectRef.element = r10;
                title = r10.getTitle();
                TextView more = choiceTitleHolder.getBinding().f41786c;
                Intrinsics.checkNotNullExpressionValue(more, "more");
                CommonExtKt.onClick(more, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return FindHomeChoiceAdapter.onBindViewHolder$lambda$2(objectRef, this);
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
            ChoiceAdHolder choiceAdHolder = (ChoiceAdHolder) viewHolder;
            final CollectionBeanSub game_info = findChoiceBannerData.getGame_info();
            choiceAdHolder.getBinding().f40143d.f(new m6.c(findChoiceBannerData, this.context) { // from class: com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter.onBindViewHolder.1
                @Override // m6.c, com.join.mgps.callbacks.f
                public void onViewClicked(DownloadNormalView downView) {
                    super.onViewClicked(downView);
                    t.l(this.getContext()).R1(Event.clickAdvDownButton, new Ext());
                }
            });
            com.join.android.app.common.utils.l.r(choiceAdHolder.getBinding().f40142c, findChoiceBannerData.getPic(), s.c.f27292i, R.drawable.banner_normal_icon);
            choiceAdHolder.getBinding().f40144e.setText(game_info.getInfo());
            choiceAdHolder.getBinding().f40145f.setText(game_info.getGame_name());
            RelativeLayout root = choiceAdHolder.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            CommonExtKt.onClick(root, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FindHomeChoiceAdapter.onBindViewHolder$lambda$0(this.f49082b, game_info);
                }
            });
            return;
        }
        if (itemViewType == 4) {
            Object any4 = this.showdatas.get(position).getAny();
            Intrinsics.checkNotNull(any4, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.findgame.data.TagData>");
            List<TagData> listAsMutableList = TypeIntrinsics.asMutableList(any4);
            ChoiceTagHolder choiceTagHolder = (ChoiceTagHolder) viewHolder;
            choiceTagHolder.getBinding().f41225c.removeAllViews();
            for (final TagData tagData : listAsMutableList) {
                k9 k9VarInflate = k9.inflate(LayoutInflater.from(this.context));
                Intrinsics.checkNotNullExpressionValue(k9VarInflate, "inflate(...)");
                choiceTagHolder.getBinding().f41225c.addView(k9VarInflate.getRoot());
                LinearLayout root2 = k9VarInflate.getRoot();
                Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
                CommonExtKt.onClick(root2, new Function0() { // from class: com.join.kotlin.ui.findgame.adapter.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return FindHomeChoiceAdapter.onBindViewHolder$lambda$1(this.f49084b, tagData);
                    }
                });
                k9VarInflate.f40656c.setText(tagData.getTitle());
            }
            return;
        }
        if (itemViewType == 5) {
            Object any5 = this.showdatas.get(position).getAny();
            Intrinsics.checkNotNull(any5, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.mgps.dto.CollectionBeanSub>");
            List listAsMutableList2 = TypeIntrinsics.asMutableList(any5);
            RecyclerView recycleView = ((ChoiceGamelistHolder) viewHolder).getBinding().f37328c;
            Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
            recycleView.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
            recycleView.setAdapter(new ChoiceGameListAdapter(this.context, listAsMutableList2));
            return;
        }
        if (itemViewType != 6) {
            return;
        }
        Object any6 = this.showdatas.get(position).getAny();
        Intrinsics.checkNotNull(any6, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.mgps.dto.CollectionBeanSub>");
        List listAsMutableList3 = TypeIntrinsics.asMutableList(any6);
        RecyclerView recycleView2 = ((ChoiceGamePicListViewHolder) viewHolder).getBinding().f36814c;
        Intrinsics.checkNotNullExpressionValue(recycleView2, "recycleView");
        recycleView2.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
        recycleView2.setAdapter(new ChoiceGamePicListAdapter(this.context, listAsMutableList3));
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
            j9 j9VarInflate = j9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(j9VarInflate, "inflate(...)");
            return new ChoiceAdHolder(j9VarInflate);
        }
        if (type == 4) {
            l9 l9VarInflate = l9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(l9VarInflate, "inflate(...)");
            return new ChoiceTagHolder(l9VarInflate);
        }
        if (type == 5) {
            d9 d9VarInflate = d9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d9VarInflate, "inflate(...)");
            return new ChoiceGamelistHolder(d9VarInflate);
        }
        if (type != 6) {
            j9 j9VarInflate2 = j9.inflate(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(j9VarInflate2, "inflate(...)");
            return new ChoiceAdHolder(j9VarInflate2);
        }
        c9 c9VarInflate = c9.inflate(LayoutInflater.from(this.context), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(c9VarInflate, "inflate(...)");
        return new ChoiceGamePicListViewHolder(c9VarInflate);
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
