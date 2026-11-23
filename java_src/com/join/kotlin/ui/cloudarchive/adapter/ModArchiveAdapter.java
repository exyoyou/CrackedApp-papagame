package com.join.kotlin.ui.cloudarchive.adapter;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Animatable;
import android.text.Html;
import android.text.Layout;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.im0;
import com.join.android.app.mgsim.wufun.databinding.km0;
import com.join.android.app.mgsim.wufun.databinding.mm0;
import com.join.android.app.mgsim.wufun.databinding.om0;
import com.join.android.app.mgsim.wufun.databinding.qm0;
import com.join.android.app.mgsim.wufun.databinding.sm0;
import com.join.android.app.mgsim.wufun.databinding.um0;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.dto.DomainInfoBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00012B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u001eH\u0014J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u001eH\u0016J\"\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\b\u0010/\u001a\u0004\u0018\u000100H\u0014J\"\u00101\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\b\u0010/\u001a\u0004\u0018\u000100H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u001e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010!\u001a\u00020\u001e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010 R\u0011\u0010#\u001a\u00020$¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&¨\u00063"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Landroidx/databinding/ViewDataBinding;", "context", "Landroid/content/Context;", "listener", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "isChoice", "", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V", "()Z", "setChoice", "(Z)V", "defaultDisplay", "Landroid/view/Display;", "kotlin.jvm.PlatformType", "getDefaultDisplay", "()Landroid/view/Display;", "Landroid/view/Display;", "width", "", "getWidth", "()I", "height", "getHeight", "ratio", "", "getRatio", "()F", "getLayoutResId", "viewType", "getItemViewType", "position", "onBindItem", "", "binding", "item", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindItemPayloads", "ModArchiveType", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModArchiveAdapter extends BaseDataBindingAdapter<CommonListMainData, ViewDataBinding> {

    @NotNull
    private Context context;
    private final Display defaultDisplay;
    private final int height;
    private boolean isChoice;

    @NotNull
    private OnClickArchiveListener listener;
    private final float ratio;
    private final int width;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$ModArchiveType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ModArchiveType {
        public static final int ARCHIVELOCAL = 4;
        public static final int ARCHIVESHOP = 3;
        public static final int ARCHIVE_DETAIL = 5;
        public static final int ARCHIVE_DOMAIN = 6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModArchiveAdapter(@NotNull Context context, @NotNull OnClickArchiveListener listener, boolean z10) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.listener = listener;
        this.isChoice = z10;
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
        this.defaultDisplay = defaultDisplay;
        int width = defaultDisplay.getWidth();
        this.width = width;
        int height = defaultDisplay.getHeight();
        this.height = height;
        this.ratio = width > height ? width / height : height / width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$0(Ref.ObjectRef objectRef, ViewDataBinding viewDataBinding) {
        if (((ArchiveData) objectRef.element).getShowMoreStatus() != 0) {
            return;
        }
        qm0 qm0Var = (qm0) viewDataBinding;
        Layout layout = qm0Var.f43916b.getLayout();
        if (layout == null) {
            qm0Var.f43920f.setVisibility(8);
            ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            return;
        }
        int lineCount = layout.getLineCount();
        if (lineCount > 1) {
            qm0Var.f43920f.setVisibility(0);
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
        } else if (lineCount > 0) {
            if (layout.getEllipsisCount(lineCount - 1) > 0) {
                qm0Var.f43920f.setVisibility(0);
                ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            } else {
                qm0Var.f43920f.setVisibility(8);
                ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$1(ViewDataBinding viewDataBinding, Ref.ObjectRef objectRef, View view) {
        qm0 qm0Var = (qm0) viewDataBinding;
        if (Intrinsics.areEqual(qm0Var.f43920f.getText(), "展开")) {
            ((ArchiveData) objectRef.element).setShowMoreStatus(3);
            qm0Var.f43916b.setMaxLines(4);
            qm0Var.f43920f.setText("收起");
        } else {
            qm0Var.f43920f.setText("展开");
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            qm0Var.f43916b.setMaxLines(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$2(Ref.ObjectRef objectRef, ViewDataBinding viewDataBinding) {
        if (((ArchiveData) objectRef.element).getShowMoreStatus() != 0) {
            return;
        }
        om0 om0Var = (om0) viewDataBinding;
        Layout layout = om0Var.f42960b.getLayout();
        if (layout == null) {
            om0Var.f42964f.setVisibility(8);
            ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            return;
        }
        int lineCount = layout.getLineCount();
        if (lineCount > 1) {
            om0Var.f42964f.setVisibility(0);
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
        } else if (lineCount > 0) {
            if (layout.getEllipsisCount(lineCount - 1) > 0) {
                om0Var.f42964f.setVisibility(0);
                ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            } else {
                om0Var.f42964f.setVisibility(8);
                ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$3(ViewDataBinding viewDataBinding, Ref.ObjectRef objectRef, View view) {
        om0 om0Var = (om0) viewDataBinding;
        if (Intrinsics.areEqual(om0Var.f42964f.getText(), "展开")) {
            ((ArchiveData) objectRef.element).setShowMoreStatus(3);
            om0Var.f42960b.setMaxLines(4);
            om0Var.f42964f.setText("收起");
        } else {
            om0Var.f42964f.setText("展开");
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            om0Var.f42960b.setMaxLines(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$4(Ref.ObjectRef objectRef, ViewDataBinding viewDataBinding) {
        if (((ArchiveData) objectRef.element).getShowMoreStatus() != 0) {
            return;
        }
        um0 um0Var = (um0) viewDataBinding;
        Layout layout = um0Var.f45764b.getLayout();
        if (layout == null) {
            um0Var.f45770h.setVisibility(8);
            ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            return;
        }
        int lineCount = layout.getLineCount();
        if (lineCount > 1) {
            um0Var.f45770h.setVisibility(0);
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
        } else if (lineCount > 0) {
            if (layout.getEllipsisCount(lineCount - 1) > 0) {
                um0Var.f45770h.setVisibility(0);
                ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            } else {
                um0Var.f45770h.setVisibility(8);
                ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$5(ViewDataBinding viewDataBinding, Ref.ObjectRef objectRef, View view) {
        um0 um0Var = (um0) viewDataBinding;
        if (Intrinsics.areEqual(um0Var.f45770h.getText(), "展开")) {
            ((ArchiveData) objectRef.element).setShowMoreStatus(3);
            um0Var.f45764b.setMaxLines(4);
            um0Var.f45770h.setText("收起");
        } else {
            um0Var.f45770h.setText("展开");
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            um0Var.f45764b.setMaxLines(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$6(Ref.ObjectRef objectRef, ViewDataBinding viewDataBinding) {
        if (((ArchiveData) objectRef.element).getShowMoreStatus() != 0) {
            return;
        }
        sm0 sm0Var = (sm0) viewDataBinding;
        Layout layout = sm0Var.f44863b.getLayout();
        if (layout == null) {
            sm0Var.f44869h.setVisibility(8);
            ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            return;
        }
        int lineCount = layout.getLineCount();
        if (lineCount > 1) {
            sm0Var.f44869h.setVisibility(0);
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
        } else if (lineCount > 0) {
            if (layout.getEllipsisCount(lineCount - 1) > 0) {
                sm0Var.f44869h.setVisibility(0);
                ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            } else {
                sm0Var.f44869h.setVisibility(8);
                ((ArchiveData) objectRef.element).setShowMoreStatus(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void onBindItem$lambda$7(ViewDataBinding viewDataBinding, Ref.ObjectRef objectRef, View view) {
        sm0 sm0Var = (sm0) viewDataBinding;
        if (Intrinsics.areEqual(sm0Var.f44869h.getText(), "展开")) {
            ((ArchiveData) objectRef.element).setShowMoreStatus(3);
            sm0Var.f44863b.setMaxLines(4);
            sm0Var.f44869h.setText("收起");
        } else {
            sm0Var.f44869h.setText("展开");
            ((ArchiveData) objectRef.element).setShowMoreStatus(2);
            sm0Var.f44863b.setMaxLines(1);
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public final Display getDefaultDisplay() {
        return this.defaultDisplay;
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<CommonListMainData> listDatas = getListDatas();
        Intrinsics.checkNotNull(listDatas);
        return listDatas.get(position).getType();
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int viewType) {
        if (viewType == 3) {
            return this.ratio >= 2.1f ? R.layout.modarchive_list_item : R.layout.modarchive_list_item2;
        }
        if (viewType == 4) {
            return this.ratio >= 2.1f ? R.layout.modarchive_list_local_item : R.layout.modarchive_list_local_item2;
        }
        if (viewType == 5) {
            return R.layout.modarchive_game_detail_list_item;
        }
        if (viewType != 6) {
            return R.layout.modarchive_list_item;
        }
        return this.ratio >= 2.1f ? R.layout.modarchive_list_domain : R.layout.modarchive_list_domain2;
    }

    @NotNull
    public final OnClickArchiveListener getListener() {
        return this.listener;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: isChoice, reason: from getter */
    public final boolean getIsChoice() {
        return this.isChoice;
    }

    public final void setChoice(boolean z10) {
        this.isChoice = z10;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnClickArchiveListener onClickArchiveListener) {
        Intrinsics.checkNotNullParameter(onClickArchiveListener, "<set-?>");
        this.listener = onClickArchiveListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveData] */
    /* JADX WARN: Type inference failed for: r9v30, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveData] */
    /* JADX WARN: Type inference failed for: r9v45, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveData] */
    /* JADX WARN: Type inference failed for: r9v50, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveData] */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull final ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof qm0) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Object any = item.getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r10 = (ArchiveData) any;
            objectRef.element = r10;
            r10.setAvatar(Html.fromHtml(r10.getAvatar()).toString());
            qm0 qm0Var = (qm0) binding;
            qm0Var.E((ArchiveData) objectRef.element);
            qm0Var.B(this.listener);
            if (((ArchiveData) objectRef.element).getShowMoreStatus() == 2 || ((ArchiveData) objectRef.element).getShowMoreStatus() == 3) {
                qm0Var.f43920f.setText("展开");
                qm0Var.f43916b.setMaxLines(1);
                qm0Var.f43920f.setVisibility(0);
            } else {
                qm0Var.f43920f.setVisibility(8);
            }
            TextView textView = qm0Var.f43916b;
            if (textView != null) {
                textView.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModArchiveAdapter.onBindItem$lambda$0(objectRef, binding);
                    }
                });
            }
            qm0Var.f43920f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModArchiveAdapter.onBindItem$lambda$1(binding, objectRef, view);
                }
            });
            return;
        }
        if (binding instanceof om0) {
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Object any2 = item.getAny();
            Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r11 = (ArchiveData) any2;
            objectRef2.element = r11;
            r11.setAvatar(Html.fromHtml(r11.getAvatar()).toString());
            om0 om0Var = (om0) binding;
            om0Var.B((ArchiveData) objectRef2.element);
            om0Var.z(this.listener);
            om0Var.A(Boolean.valueOf(this.isChoice));
            if (((ArchiveData) objectRef2.element).getShowMoreStatus() == 2 || ((ArchiveData) objectRef2.element).getShowMoreStatus() == 3) {
                om0Var.f42964f.setText("展开");
                om0Var.f42960b.setMaxLines(1);
                om0Var.f42964f.setVisibility(0);
            } else {
                om0Var.f42964f.setVisibility(8);
            }
            TextView textView2 = om0Var.f42960b;
            if (textView2 != null) {
                textView2.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModArchiveAdapter.onBindItem$lambda$2(objectRef2, binding);
                    }
                });
            }
            om0Var.f42964f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModArchiveAdapter.onBindItem$lambda$3(binding, objectRef2, view);
                }
            });
            return;
        }
        if (binding instanceof um0) {
            final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Object any3 = item.getAny();
            Intrinsics.checkNotNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r12 = (ArchiveData) any3;
            objectRef3.element = r12;
            um0 um0Var = (um0) binding;
            um0Var.u(r12);
            um0Var.t(this.listener);
            if (((ArchiveData) objectRef3.element).getShowMoreStatus() == 2 || ((ArchiveData) objectRef3.element).getShowMoreStatus() == 3) {
                um0Var.f45770h.setText("展开");
                um0Var.f45764b.setMaxLines(1);
                um0Var.f45770h.setVisibility(0);
            } else {
                um0Var.f45770h.setVisibility(8);
            }
            TextView textView3 = um0Var.f45764b;
            if (textView3 != null) {
                textView3.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModArchiveAdapter.onBindItem$lambda$4(objectRef3, binding);
                    }
                });
            }
            um0Var.f45770h.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModArchiveAdapter.onBindItem$lambda$5(binding, objectRef3, view);
                }
            });
            return;
        }
        if (binding instanceof sm0) {
            final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
            Object any4 = item.getAny();
            Intrinsics.checkNotNull(any4, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r13 = (ArchiveData) any4;
            objectRef4.element = r13;
            sm0 sm0Var = (sm0) binding;
            sm0Var.u(r13);
            sm0Var.t(this.listener);
            if (((ArchiveData) objectRef4.element).getShowMoreStatus() == 2 || ((ArchiveData) objectRef4.element).getShowMoreStatus() == 3) {
                sm0Var.f44869h.setText("展开");
                sm0Var.f44863b.setMaxLines(1);
                sm0Var.f44869h.setVisibility(0);
            } else {
                sm0Var.f44869h.setVisibility(8);
            }
            TextView textView4 = sm0Var.f44863b;
            if (textView4 != null) {
                textView4.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModArchiveAdapter.onBindItem$lambda$6(objectRef4, binding);
                    }
                });
            }
            sm0Var.f44869h.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModArchiveAdapter.onBindItem$lambda$7(binding, objectRef4, view);
                }
            });
            return;
        }
        if (binding instanceof im0) {
            Object any5 = item.getAny();
            Intrinsics.checkNotNull(any5, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ArchiveData archiveData = (ArchiveData) any5;
            archiveData.setAvatar(Html.fromHtml(archiveData.getAvatar()).toString());
            im0 im0Var = (im0) binding;
            im0Var.B(archiveData);
            im0Var.z(this.listener);
            im0Var.A(Boolean.valueOf(this.isChoice));
            return;
        }
        if (binding instanceof mm0) {
            Object any6 = item.getAny();
            Intrinsics.checkNotNull(any6, "null cannot be cast to non-null type com.join.mgps.dto.DomainInfoBean");
            DomainInfoBean domainInfoBean = (DomainInfoBean) any6;
            mm0 mm0Var = (mm0) binding;
            mm0Var.u(domainInfoBean);
            mm0Var.t(this.listener);
            com.facebook.drawee.controller.a aVarBuild = Fresco.newDraweeControllerBuilder().c(mm0Var.f41973b.getController()).I(new com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g>() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$controller$1
                @Override // com.facebook.drawee.controller.c
                public void onFailure(String id2, Throwable throwable) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onIntermediateImageFailed(String id2, Throwable throwable) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onIntermediateImageSet(String str, com.facebook.imagepipeline.image.g gVar) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onRelease(String id2) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onSubmit(String id2, Object callerContext) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onFinalImageSet(String str, com.facebook.imagepipeline.image.g gVar, Animatable animatable) {
                    if (gVar != null) {
                        ViewGroup.LayoutParams layoutParams = ((mm0) binding).f41973b.getLayoutParams();
                        int dimension = (int) this.getContext().getResources().getDimension(R.dimen.wdp219);
                        layoutParams.height = dimension;
                        layoutParams.width = (dimension * gVar.getWidth()) / gVar.getHeight();
                        ((mm0) binding).f41973b.setLayoutParams(layoutParams);
                    }
                }
            }).setUri(domainInfoBean.getPic()).build();
            Intrinsics.checkNotNullExpressionValue(aVarBuild, "build(...)");
            mm0Var.f41973b.setController(aVarBuild);
            return;
        }
        if (binding instanceof km0) {
            Object any7 = item.getAny();
            Intrinsics.checkNotNull(any7, "null cannot be cast to non-null type com.join.mgps.dto.DomainInfoBean");
            DomainInfoBean domainInfoBean2 = (DomainInfoBean) any7;
            km0 km0Var = (km0) binding;
            km0Var.u(domainInfoBean2);
            km0Var.t(this.listener);
            com.facebook.drawee.controller.a aVarBuild2 = Fresco.newDraweeControllerBuilder().c(km0Var.f40871b.getController()).I(new com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g>() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$controller$2
                @Override // com.facebook.drawee.controller.c
                public void onFailure(String id2, Throwable throwable) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onIntermediateImageFailed(String id2, Throwable throwable) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onIntermediateImageSet(String str, com.facebook.imagepipeline.image.g gVar) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onRelease(String id2) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onSubmit(String id2, Object callerContext) {
                }

                @Override // com.facebook.drawee.controller.c
                public void onFinalImageSet(String str, com.facebook.imagepipeline.image.g gVar, Animatable animatable) {
                    if (gVar != null) {
                        ViewGroup.LayoutParams layoutParams = ((km0) binding).f40871b.getLayoutParams();
                        int dimension = (int) this.getContext().getResources().getDimension(R.dimen.wdp219);
                        layoutParams.height = dimension;
                        layoutParams.width = (dimension * gVar.getWidth()) / gVar.getHeight();
                        ((km0) binding).f40871b.setLayoutParams(layoutParams);
                    }
                }
            }).setUri(domainInfoBean2.getPic()).build();
            Intrinsics.checkNotNullExpressionValue(aVarBuild2, "build(...)");
            km0Var.f40871b.setController(aVarBuild2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof qm0) {
            qm0 qm0Var = (qm0) binding;
            Object any = item.getAny();
            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            qm0Var.E((ArchiveData) any);
            qm0Var.B(this.listener);
            return;
        }
        if (binding instanceof um0) {
            um0 um0Var = (um0) binding;
            Object any2 = item.getAny();
            Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            um0Var.u((ArchiveData) any2);
            um0Var.t(this.listener);
        }
    }
}
