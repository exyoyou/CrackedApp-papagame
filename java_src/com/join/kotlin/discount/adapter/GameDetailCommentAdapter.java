package com.join.kotlin.discount.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.m10;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.model.bean.CommentTagBean;
import com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import v2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J(\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ItemGameDetailCommentLayoutBinding;", "<init>", "()V", "click", "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;", "getClick", "()Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;", "setClick", "(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V", "onCreateViewHolder", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", "position", "item", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailCommentAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailCommentAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
public final class GameDetailCommentAdapter extends BaseQuickAdapter<CommentDetailBean, a<m10>> {

    @Nullable
    private ItemGameDetailCommentListClickProxy click;

    public GameDetailCommentAdapter() {
        super(null, 1, null);
    }

    @Nullable
    public final ItemGameDetailCommentListClickProxy getClick() {
        return this.click;
    }

    public final void setClick(@Nullable ItemGameDetailCommentListClickProxy itemGameDetailCommentListClickProxy) {
        this.click = itemGameDetailCommentListClickProxy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NotNull a<m10> holder, int i10, @Nullable CommentDetailBean commentDetailBean) {
        View view;
        View view2;
        ImageView imageView;
        List<CommentTagBean> tags;
        Integer type;
        ImageView imageView2;
        CommentTagBean commentTagBean;
        List<CommentTagBean> tags2;
        Object next;
        CommentTagBean commentTagBean2;
        Integer type2;
        TextView textView;
        CommentTagBean commentTagBean3;
        List<CommentTagBean> tags3;
        Object next2;
        CommentTagBean commentTagBean4;
        Integer type3;
        Intrinsics.checkNotNullParameter(holder, "holder");
        m10 m10Var = (m10) holder.a();
        if (m10Var != null) {
            m10Var.u(commentDetailBean);
        }
        m10 m10Var2 = (m10) holder.a();
        if (m10Var2 != null) {
            m10Var2.t(this.click);
        }
        m10 m10Var3 = (m10) holder.a();
        Object obj = null;
        if (m10Var3 != null && (textView = m10Var3.f41677i) != null) {
            if (commentDetailBean == null || (tags3 = commentDetailBean.getTags()) == null) {
                commentTagBean3 = null;
            } else {
                Iterator<T> it2 = tags3.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    } else {
                        next2 = it2.next();
                        commentTagBean4 = (CommentTagBean) next2;
                    }
                } while (!((commentTagBean4 == null || (type3 = commentTagBean4.getType()) == null || type3.intValue() != 1) ? false : true));
                commentTagBean3 = (CommentTagBean) next2;
            }
            if (commentTagBean3 != null) {
                textView.setText(commentTagBean3.getText());
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        m10 m10Var4 = (m10) holder.a();
        if (m10Var4 != null && (imageView2 = m10Var4.f41675g) != null) {
            if (commentDetailBean == null || (tags2 = commentDetailBean.getTags()) == null) {
                commentTagBean = null;
            } else {
                Iterator<T> it3 = tags2.iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it3.next();
                        commentTagBean2 = (CommentTagBean) next;
                    }
                } while (!((commentTagBean2 == null || (type2 = commentTagBean2.getType()) == null || type2.intValue() != 2) ? false : true));
                commentTagBean = (CommentTagBean) next;
            }
            if (commentTagBean != null) {
                imageView2.setVisibility(0);
            } else {
                imageView2.setVisibility(8);
            }
        }
        m10 m10Var5 = (m10) holder.a();
        if (m10Var5 != null && (imageView = m10Var5.f41676h) != null) {
            if (commentDetailBean != null && (tags = commentDetailBean.getTags()) != null) {
                for (Object obj2 : tags) {
                    CommentTagBean commentTagBean5 = (CommentTagBean) obj2;
                    if ((commentTagBean5 == null || (type = commentTagBean5.getType()) == null || type.intValue() != 3) ? false : true) {
                        obj = obj2;
                        break;
                    }
                }
                obj = (CommentTagBean) obj;
            }
            if (obj != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        if (holder.getLayoutPosition() >= getItemCount() - 1) {
            m10 m10Var6 = (m10) holder.a();
            if (m10Var6 == null || (view2 = m10Var6.f41672d) == null) {
                return;
            }
            view2.setVisibility(8);
            return;
        }
        m10 m10Var7 = (m10) holder.a();
        if (m10Var7 == null || (view = m10Var7.f41672d) == null) {
            return;
        }
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    @NotNull
    public a<m10> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new a<>(R.layout.item_game_detail_comment_layout, parent);
    }
}
