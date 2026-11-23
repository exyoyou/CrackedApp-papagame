package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ha0;
import com.join.kotlin.module.hmcloud.pad.HMAnalogArrowView;
import com.join.kotlin.module.hmcloud.pad.HMAnalogDpadView;
import com.join.kotlin.module.hmcloud.pad.HMAnalogView;
import com.join.kotlin.module.hmcloud.pad.HMAnalogWasdView;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;
import com.join.kotlin.module.hmcloud.pad.HMControllerView;
import com.join.kotlin.module.hmcloud.pad.HMDpadView;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.join.kotlin.module.hmcloud.pad.HMOpSkin;
import com.join.kotlin.module.hmcloud.pad.HMOpSkinDefault;
import com.join.kotlin.module.hmcloud.pad.HMOpSkinWrapper;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010!\u001a\u00020\u00192\b\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010'\u001a\u00020(2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\b\u0010)\u001a\u00020\u0019H\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001d¨\u0006+"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadKeyEditBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadKeyEditBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadKeyEditBinding;)V", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "skin", "Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;", "getSkin", "()Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;", "setSkin", "(Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;)V", "onDelete", "Lkotlin/Function1;", "", "getOnDelete", "()Lkotlin/jvm/functions/Function1;", "setOnDelete", "(Lkotlin/jvm/functions/Function1;)V", "onEdit", "getOnEdit", "setOnEdit", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "changeDefaultSize", "setItem", "loadCombineKeys", "canEdit", "", "checkEnableEditName", "layoutKey", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMKeyEditDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyEditDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1878#2,3:236\n1#3:239\n*S KotlinDebug\n*F\n+ 1 HMKeyEditDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog\n*L\n114#1:236,3\n*E\n"})
public final class HMKeyEditDialog extends HMBaseDialog {
    public ha0 binding;

    @Nullable
    private HMKeyItem item;

    @Nullable
    private Function1<? super HMKeyItem, Unit> onDelete;

    @Nullable
    private Function1<? super HMKeyItem, Unit> onEdit;
    public HMOpSkinWrapper skin;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMKeyEditDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final boolean canEdit(HMKeyItem item) {
        List<HMKeyItem> combine;
        if (!((item == null || (combine = item.getCombine()) == null || !combine.isEmpty()) ? false : true)) {
            return true;
        }
        String nickname = item.getNickname();
        return !(nickname == null || nickname.length() == 0) || HMKeyData.INSTANCE.getGamepadButton().contains(item.getKey());
    }

    private final void changeDefaultSize(HMKeyItem item) {
        String nickname = item.getNickname();
        if (!(nickname == null || nickname.length() == 0)) {
            int dimension = (int) getContext().getResources().getDimension(R.dimen.wdp100);
            item.setWidth(dimension);
            item.setHeight(dimension);
        } else if (SetsKt__SetsKt.setOf((Object[]) new String[]{HMKeyData.BtnLT.getKey(), HMKeyData.BtnLB.getKey(), HMKeyData.BtnRT.getKey(), HMKeyData.BtnRB.getKey()}).contains(item.getKey())) {
            int dimension2 = (int) getContext().getResources().getDimension(R.dimen.wdp160);
            int dimension3 = (int) getContext().getResources().getDimension(R.dimen.wdp80);
            item.setWidth(dimension2);
            item.setHeight(dimension3);
        }
    }

    private final void checkEnableEditName() {
        ha0 binding = getBinding();
        View childAt = binding.f39250k.getChildAt(0);
        if (childAt instanceof HMButtonView) {
            binding.f39245f.setVisibility(0);
            return;
        }
        if ((childAt instanceof HMAnalogView) || (childAt instanceof HMAnalogDpadView) || (childAt instanceof HMAnalogWasdView) || (childAt instanceof HMAnalogArrowView) || (childAt instanceof HMDpadView)) {
            binding.f39245f.setVisibility(8);
        } else if (canEdit(this.item)) {
            binding.f39245f.setVisibility(0);
        } else {
            binding.f39245f.setVisibility(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:67:0x016a  */
    private final void layoutKey(HMKeyItem item) {
        View hMButtonView;
        boolean z10;
        String key = item.getKey();
        if (Intrinsics.areEqual(key, HMKeyData.Dpad.getKey())) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            HMDpadView hMDpadView = new HMDpadView(context);
            hMDpadView.setTouchable(false);
            hMButtonView = hMDpadView;
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyL.getKey()) || Intrinsics.areEqual(key, HMKeyData.JoyR.getKey())) {
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            HMAnalogView hMAnalogView = new HMAnalogView(context2);
            hMAnalogView.setTouchable(false);
            hMButtonView = hMAnalogView;
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyDpad.getKey())) {
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
            HMAnalogDpadView hMAnalogDpadView = new HMAnalogDpadView(context3);
            hMAnalogDpadView.setTouchable(false);
            hMButtonView = hMAnalogDpadView;
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyWasd.getKey())) {
            Context context4 = getContext();
            Intrinsics.checkNotNullExpressionValue(context4, "getContext(...)");
            HMAnalogWasdView hMAnalogWasdView = new HMAnalogWasdView(context4);
            hMAnalogWasdView.setTouchable(false);
            hMButtonView = hMAnalogWasdView;
        } else if (Intrinsics.areEqual(key, HMKeyData.JoyArrow.getKey())) {
            Context context5 = getContext();
            Intrinsics.checkNotNullExpressionValue(context5, "getContext(...)");
            HMAnalogArrowView hMAnalogArrowView = new HMAnalogArrowView(context5);
            hMAnalogArrowView.setTouchable(false);
            hMButtonView = hMAnalogArrowView;
        } else if (Intrinsics.areEqual(key, HMKeyData.MouseLeft.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseRight.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMiddle.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMoveUp.getKey()) || Intrinsics.areEqual(key, HMKeyData.MouseMoveDown.getKey())) {
            Context context6 = getContext();
            Intrinsics.checkNotNullExpressionValue(context6, "getContext(...)");
            hMButtonView = new HMButtonView(context6);
        } else {
            HMOpSkin.Companion companion = HMOpSkin.INSTANCE;
            boolean z11 = true;
            if ((companion.getDefault() instanceof HMOpSkinDefault) && ((HMOpSkinDefault) companion.getDefault()).getGamepad().keySet().contains(item.getKey())) {
                String nickname = item.getNickname();
                if (nickname != null && nickname.length() != 0) {
                    z11 = false;
                }
                if (z11) {
                    ImageView imageView = new ImageView(getContext());
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    hMButtonView = imageView;
                } else {
                    Context context7 = getContext();
                    Intrinsics.checkNotNullExpressionValue(context7, "getContext(...)");
                    hMButtonView = new HMButtonView(context7);
                }
            } else {
                List<HMKeyItem> combine = item.getCombine();
                if (combine != null && (combine.isEmpty() ^ true)) {
                    Context context8 = getContext();
                    Intrinsics.checkNotNullExpressionValue(context8, "getContext(...)");
                    hMButtonView = new HMButtonView(context8);
                } else {
                    String name = item.getName();
                    if (name == null || name.length() == 0) {
                        String nickname2 = item.getNickname();
                        if (nickname2 != null && nickname2.length() != 0) {
                            z11 = false;
                        }
                        if (z11) {
                            ImageView imageView2 = new ImageView(getContext());
                            imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                            hMButtonView = imageView2;
                        } else {
                            Context context9 = getContext();
                            Intrinsics.checkNotNullExpressionValue(context9, "getContext(...)");
                            hMButtonView = new HMButtonView(context9);
                        }
                    } else {
                        Context context10 = getContext();
                        Intrinsics.checkNotNullExpressionValue(context10, "getContext(...)");
                        hMButtonView = new HMButtonView(context10);
                    }
                }
            }
        }
        ha0 binding = getBinding();
        hMButtonView.setTag(item);
        if ((hMButtonView instanceof HMAnalogView) || ((z10 = hMButtonView instanceof HMAnalogDpadView))) {
            int dimension = (int) getContext().getResources().getDimension(R.dimen.wdp160);
            ((HMControllerView) hMButtonView).setLayoutParams(new FrameLayout.LayoutParams(dimension, dimension));
        } else if (z10 || (hMButtonView instanceof HMAnalogWasdView) || (hMButtonView instanceof HMAnalogArrowView)) {
            int dimension2 = (int) getContext().getResources().getDimension(R.dimen.wdp190);
            ((HMControllerView) hMButtonView).setLayoutParams(new FrameLayout.LayoutParams(dimension2, dimension2));
        } else if (hMButtonView instanceof HMButtonView) {
            int dimension3 = (int) getContext().getResources().getDimension(R.dimen.wdp100);
            ((HMButtonView) hMButtonView).setLayoutParams(new FrameLayout.LayoutParams(dimension3, dimension3));
        } else if (HMKeyData.INSTANCE.isShoulder(item.getKey())) {
            hMButtonView.setLayoutParams(new FrameLayout.LayoutParams((int) getContext().getResources().getDimension(R.dimen.wdp160), (int) getContext().getResources().getDimension(R.dimen.wdp80)));
        } else {
            int dimension4 = (int) getContext().getResources().getDimension(R.dimen.wdp100);
            hMButtonView.setLayoutParams(new FrameLayout.LayoutParams(dimension4, dimension4));
        }
        hMButtonView.setClickable(false);
        binding.f39250k.removeAllViews();
        binding.f39250k.addView(hMButtonView);
        getSkin().load(hMButtonView, item);
    }

    private final void loadCombineKeys(HMKeyItem item) {
        ha0 binding = getBinding();
        List<HMKeyItem> combine = item.getCombine();
        int i10 = 0;
        if (!(combine != null && (combine.isEmpty() ^ true))) {
            binding.f39243d.setVisibility(8);
            return;
        }
        binding.f39243d.setVisibility(0);
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HMButtonView[]{getBinding().f39247h, getBinding().f39248i, getBinding().f39249j});
        List<HMKeyItem> combine2 = item.getCombine();
        if (combine2 != null) {
            for (Object obj : combine2) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Object obj2 = listListOf.get(i10);
                Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                HMOpSkin.INSTANCE.getDefault().load((HMButtonView) obj2, (HMKeyItem) obj);
                i10 = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(HMKeyEditDialog hMKeyEditDialog, View view) {
        Function1<? super HMKeyItem, Unit> function1;
        HMKeyItem hMKeyItem = hMKeyEditDialog.item;
        if (hMKeyItem != null && (function1 = hMKeyEditDialog.onDelete) != null) {
            function1.invoke(hMKeyItem);
        }
        hMKeyEditDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$8$lambda$2(ha0 ha0Var, HMKeyEditDialog hMKeyEditDialog, View view) {
        String name;
        ha0Var.f39252m.setVisibility(0);
        EditText editText = ha0Var.f39253n;
        HMKeyItem hMKeyItem = hMKeyEditDialog.item;
        if (hMKeyItem == null || (name = hMKeyItem.getNickname()) == null) {
            HMKeyItem hMKeyItem2 = hMKeyEditDialog.item;
            name = hMKeyItem2 != null ? hMKeyItem2.getName() : null;
        }
        editText.setText(name);
        ha0Var.f39245f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$8$lambda$4(ha0 ha0Var, HMKeyEditDialog hMKeyEditDialog, View view) {
        ha0Var.f39252m.setVisibility(8);
        ha0Var.f39245f.setVisibility(0);
        String string = ha0Var.f39253n.getText().toString();
        HMKeyItem hMKeyItem = hMKeyEditDialog.item;
        if (hMKeyItem != null) {
            if (StringsKt__StringsKt.trim((CharSequence) string).toString().length() == 0) {
                string = null;
            }
            hMKeyItem.setNickname(string);
        }
        HMKeyItem hMKeyItem2 = hMKeyEditDialog.item;
        if (hMKeyItem2 != null) {
            hMKeyEditDialog.changeDefaultSize(hMKeyItem2);
            Function1<? super HMKeyItem, Unit> function1 = hMKeyEditDialog.onEdit;
            if (function1 != null) {
                function1.invoke(hMKeyItem2);
            }
            hMKeyEditDialog.setItem(hMKeyItem2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$8$lambda$7(HMKeyEditDialog hMKeyEditDialog, ha0 ha0Var, int i10) {
        Function1<? super HMKeyItem, Unit> function1;
        float f10 = ((i10 - 5) * 0.1f) + 1.0f;
        HMKeyItem hMKeyItem = hMKeyEditDialog.item;
        if (hMKeyItem != null) {
            hMKeyItem.setScale(Float.valueOf(f10));
        }
        FrameLayout frameLayout = ha0Var.f39250k;
        frameLayout.setScaleX(f10);
        frameLayout.setScaleY(f10);
        HMKeyItem hMKeyItem2 = hMKeyEditDialog.item;
        if (hMKeyItem2 != null && (function1 = hMKeyEditDialog.onEdit) != null) {
            function1.invoke(hMKeyItem2);
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public final ha0 getBinding() {
        ha0 ha0Var = this.binding;
        if (ha0Var != null) {
            return ha0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Function1<HMKeyItem, Unit> getOnDelete() {
        return this.onDelete;
    }

    @Nullable
    public final Function1<HMKeyItem, Unit> getOnEdit() {
        return this.onEdit;
    }

    @NotNull
    public final HMOpSkinWrapper getSkin() {
        HMOpSkinWrapper hMOpSkinWrapper = this.skin;
        if (hMOpSkinWrapper != null) {
            return hMOpSkinWrapper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("skin");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setBinding(ha0.inflate(LayoutInflater.from(getContext())));
        setContentView(getBinding().getRoot());
        setSkin(HMOpSkin.INSTANCE.getDefault());
        getBinding().f39244e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMKeyEditDialog.onCreate$lambda$1(this.f48616b, view);
            }
        });
        final ha0 binding = getBinding();
        binding.f39245f.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMKeyEditDialog.onCreate$lambda$8$lambda$2(binding, this, view);
            }
        });
        Object parent = binding.f39256q.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        ((View) parent).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMKeyEditDialog.onCreate$lambda$8$lambda$4(binding, this, view);
            }
        });
        binding.f39257r.setOnSegmentSelected(new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HMKeyEditDialog.onCreate$lambda$8$lambda$7(this.f48624b, binding, ((Integer) obj).intValue());
            }
        });
    }

    public final void setBinding(@NotNull ha0 ha0Var) {
        Intrinsics.checkNotNullParameter(ha0Var, "<set-?>");
        this.binding = ha0Var;
    }

    public final void setItem(@NotNull HMKeyItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        layoutKey(item);
        loadCombineKeys(item);
        checkEnableEditName();
        ha0 binding = getBinding();
        Float scale = item.getScale();
        binding.f39257r.setSelectedIndex(RangesKt___RangesKt.coerceIn(MathKt__MathJVMKt.roundToInt(((double) ((scale != null ? scale.floatValue() : 1.0f) - 1.0f)) / 0.1d) + 5, 0, 10));
        FrameLayout frameLayout = binding.f39250k;
        Float scale2 = item.getScale();
        frameLayout.setScaleX(scale2 != null ? scale2.floatValue() : 1.0f);
        FrameLayout frameLayout2 = binding.f39250k;
        Float scale3 = item.getScale();
        frameLayout2.setScaleY(scale3 != null ? scale3.floatValue() : 1.0f);
        binding.f39252m.setVisibility(8);
    }

    public final void setOnDelete(@Nullable Function1<? super HMKeyItem, Unit> function1) {
        this.onDelete = function1;
    }

    public final void setOnEdit(@Nullable Function1<? super HMKeyItem, Unit> function1) {
        this.onEdit = function1;
    }

    public final void setSkin(@NotNull HMOpSkinWrapper hMOpSkinWrapper) {
        Intrinsics.checkNotNullParameter(hMOpSkinWrapper, "<set-?>");
        this.skin = hMOpSkinWrapper;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMKeyEditDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
