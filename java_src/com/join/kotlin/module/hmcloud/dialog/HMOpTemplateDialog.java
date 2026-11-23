package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.hg;
import com.join.kotlin.module.hmcloud.pad.HMOpView;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.join.mgps.dto.hmcloud.HMOpConfig;
import com.join.mgps.dto.hmcloud.HandleCfg;
import com.join.mgps.dto.hmcloud.HandleType;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010>\u001a\u00020$2\b\u0010?\u001a\u0004\u0018\u00010@H\u0014J\u0016\u0010A\u001a\u00020$2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020\u0007J\u001a\u0010E\u001a\u00020$2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0\"J \u0010F\u001a\u00020$2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020#0H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010#J\u000e\u0010J\u001a\u00020$2\u0006\u0010K\u001a\u00020LJ\u0010\u0010M\u001a\u00020$2\b\u0010N\u001a\u0004\u0018\u00010OR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010!\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R(\u0010)\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R.\u0010,\u001a\u0016\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0018\u00010-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u00108\u001a\u000209X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006P"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "rvTemplate", "Landroidx/recyclerview/widget/RecyclerView;", "getRvTemplate", "()Landroidx/recyclerview/widget/RecyclerView;", "setRvTemplate", "(Landroidx/recyclerview/widget/RecyclerView;)V", "vClose", "Landroid/view/View;", "getVClose", "()Landroid/view/View;", "setVClose", "(Landroid/view/View;)V", "tvTip", "Landroid/widget/TextView;", "getTvTip", "()Landroid/widget/TextView;", "setTvTip", "(Landroid/widget/TextView;)V", "adapter", "Lcom/join/mgps/adapter/hmcloud/HMOpTemplateAdapter;", "getAdapter", "()Lcom/join/mgps/adapter/hmcloud/HMOpTemplateAdapter;", "setAdapter", "(Lcom/join/mgps/adapter/hmcloud/HMOpTemplateAdapter;)V", "onItemClick", "Lkotlin/Function1;", "Lcom/join/mgps/dto/hmcloud/HandleCfg;", "", "getOnItemClick", "()Lkotlin/jvm/functions/Function1;", "setOnItemClick", "(Lkotlin/jvm/functions/Function1;)V", "onItemDelete", "getOnItemDelete", "setOnItemDelete", "onItemSelected", "Lkotlin/Function2;", "Landroid/widget/FrameLayout;", "getOnItemSelected", "()Lkotlin/jvm/functions/Function2;", "setOnItemSelected", "(Lkotlin/jvm/functions/Function2;)V", AbsIjkVideoView.OP_TYPE, "getOpType", "()I", "setOpType", "(I)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/DialogHmOpTemplateBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/DialogHmOpTemplateBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/DialogHmOpTemplateBinding;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setTip", "gameName", "", "type", "setCallback", "setTemplateList", "list", "", "current", "setPlaceholderVisible", "visible", "", "setTemplateKeys", "opConfig", "Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMOpTemplateDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpTemplateDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"})
public final class HMOpTemplateDialog extends HMBaseDialog {

    @Nullable
    private h6.n adapter;
    public hg binding;

    @Nullable
    private Function1<? super HandleCfg, Unit> onItemClick;

    @Nullable
    private Function1<? super HandleCfg, Unit> onItemDelete;

    @Nullable
    private Function2<? super FrameLayout, ? super HandleCfg, Unit> onItemSelected;
    private int opType;
    public RecyclerView rvTemplate;

    @Nullable
    private TextView tvTip;
    public View vClose;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpTemplateDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$1(HMOpTemplateDialog hMOpTemplateDialog, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Function1<? super HandleCfg, Unit> function1 = hMOpTemplateDialog.onItemClick;
        if (function1 != null) {
            function1.invoke(it2);
        }
        hMOpTemplateDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$2(HMOpTemplateDialog hMOpTemplateDialog, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Function1<? super HandleCfg, Unit> function1 = hMOpTemplateDialog.onItemDelete;
        if (function1 != null) {
            function1.invoke(it2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$3(HMOpTemplateDialog hMOpTemplateDialog, HandleCfg it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Function2<? super FrameLayout, ? super HandleCfg, Unit> function2 = hMOpTemplateDialog.onItemSelected;
        if (function2 != null) {
            FrameLayout templateHolder = hMOpTemplateDialog.getBinding().f39323f;
            Intrinsics.checkNotNullExpressionValue(templateHolder, "templateHolder");
            function2.invoke(templateHolder, it2);
        }
        hMOpTemplateDialog.getBinding().f39324g.setVisibility(8);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setTemplateKeys$lambda$8$lambda$7$lambda$6(HMOpConfig hMOpConfig, float f10, Integer num, Integer num2, List keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        hMOpConfig.setDensity(Float.valueOf(f10));
        hMOpConfig.setLayoutWidth(num);
        hMOpConfig.setLayoutHeight(num2);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void setTemplateList$default(HMOpTemplateDialog hMOpTemplateDialog, List list, HandleCfg handleCfg, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            handleCfg = null;
        }
        hMOpTemplateDialog.setTemplateList(list, handleCfg);
    }

    @Nullable
    public final h6.n getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final hg getBinding() {
        hg hgVar = this.binding;
        if (hgVar != null) {
            return hgVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Function1<HandleCfg, Unit> getOnItemClick() {
        return this.onItemClick;
    }

    @Nullable
    public final Function1<HandleCfg, Unit> getOnItemDelete() {
        return this.onItemDelete;
    }

    @Nullable
    public final Function2<FrameLayout, HandleCfg, Unit> getOnItemSelected() {
        return this.onItemSelected;
    }

    public final int getOpType() {
        return this.opType;
    }

    @NotNull
    public final RecyclerView getRvTemplate() {
        RecyclerView recyclerView = this.rvTemplate;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rvTemplate");
        return null;
    }

    @Nullable
    public final TextView getTvTip() {
        return this.tvTip;
    }

    @NotNull
    public final View getVClose() {
        View view = this.vClose;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("vClose");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setBinding(hg.inflate(getLayoutInflater()));
        setContentView(getBinding().getRoot(), new FrameLayout.LayoutParams(-1, -1));
        setWindowSize(0.816f, 0.914f);
        setRvTemplate((RecyclerView) findViewById(R.id.rvTemplate));
        setVClose(findViewById(R.id.ivClose));
        this.tvTip = (TextView) findViewById(R.id.tvTip);
        getVClose().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48654b.dismiss();
            }
        });
        this.adapter = new h6.n(new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMOpTemplateDialog.onCreate$lambda$1(this.f48656b, (HandleCfg) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMOpTemplateDialog.onCreate$lambda$2(this.f48659b, (HandleCfg) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMOpTemplateDialog.onCreate$lambda$3(this.f48661b, (HandleCfg) obj);
            }
        });
        getRvTemplate().setAdapter(this.adapter);
        getRvTemplate().setLayoutManager(new LinearLayoutManager(getContext()));
    }

    public final void setAdapter(@Nullable h6.n nVar) {
        this.adapter = nVar;
    }

    public final void setBinding(@NotNull hg hgVar) {
        Intrinsics.checkNotNullParameter(hgVar, "<set-?>");
        this.binding = hgVar;
    }

    public final void setCallback(@NotNull Function1<? super HandleCfg, Unit> onItemClick) {
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.onItemClick = onItemClick;
    }

    public final void setOnItemClick(@Nullable Function1<? super HandleCfg, Unit> function1) {
        this.onItemClick = function1;
    }

    public final void setOnItemDelete(@Nullable Function1<? super HandleCfg, Unit> function1) {
        this.onItemDelete = function1;
    }

    public final void setOnItemSelected(@Nullable Function2<? super FrameLayout, ? super HandleCfg, Unit> function2) {
        this.onItemSelected = function2;
    }

    public final void setOpType(int i10) {
        this.opType = i10;
    }

    public final void setPlaceholderVisible(boolean visible) {
        getBinding().f39324g.setVisibility(visible ? 0 : 8);
    }

    public final void setRvTemplate(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.rvTemplate = recyclerView;
    }

    public final void setTemplateKeys(@Nullable final HMOpConfig opConfig) {
        List<HMKeyItem> listEmptyList;
        if (isShowing()) {
            FrameLayout frameLayout = getBinding().f39323f;
            frameLayout.removeAllViews();
            Context context = frameLayout.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            HMOpView hMOpView = new HMOpView(context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            hMOpView.setIntercept(true);
            frameLayout.addView(hMOpView, layoutParams);
            if (opConfig == null || (listEmptyList = opConfig.getKeys()) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            if (opConfig != null) {
                hMOpView.setOnInsetsChanged(new Function4() { // from class: com.join.kotlin.module.hmcloud.dialog.v0
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                        return HMOpTemplateDialog.setTemplateKeys$lambda$8$lambda$7$lambda$6(opConfig, ((Float) obj).floatValue(), (Integer) obj2, (Integer) obj3, (List) obj4);
                    }
                });
                hMOpView.loadKeys(opConfig.getDensity(), opConfig.getLayoutWidth(), opConfig.getLayoutHeight(), listEmptyList);
            }
            setPlaceholderVisible(listEmptyList.isEmpty());
        }
    }

    public final void setTemplateList(@NotNull List<HandleCfg> list, @Nullable HandleCfg current) {
        Function2<? super FrameLayout, ? super HandleCfg, Unit> function2;
        h6.n nVar;
        Intrinsics.checkNotNullParameter(list, "list");
        if (current != null && (nVar = this.adapter) != null) {
            nVar.l(current);
        }
        h6.n nVar2 = this.adapter;
        if (nVar2 != null) {
            nVar2.setItems(list);
        }
        h6.n nVar3 = this.adapter;
        if (nVar3 != null) {
            nVar3.notifyDataSetChanged();
        }
        HandleCfg handleCfg = (HandleCfg) CollectionsKt___CollectionsKt.firstOrNull((List) list);
        if (handleCfg == null || (function2 = this.onItemSelected) == null) {
            return;
        }
        FrameLayout templateHolder = getBinding().f39323f;
        Intrinsics.checkNotNullExpressionValue(templateHolder, "templateHolder");
        function2.invoke(templateHolder, handleCfg);
    }

    public final void setTip(@NotNull String gameName, int type) {
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        this.opType = type;
        TextView textView = this.tvTip;
        if (textView != null) {
            Context context = getContext();
            Object[] objArr = new Object[2];
            objArr[0] = gameName;
            objArr[1] = type == HandleType.GAME_PAD.getValue() ? "手柄" : "键鼠";
            textView.setText(context.getString(R.string.hm_op_template_tip, objArr));
        }
    }

    public final void setTvTip(@Nullable TextView textView) {
        this.tvTip = textView;
    }

    public final void setVClose(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.vClose = view;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMOpTemplateDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
