package com.join.kotlin.module.hmcloud.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import com.join.android.app.mgsim.wufun.databinding.ba0;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.join.kotlin.module.hmcloud.pad.HMOpSkin;
import com.join.kotlin.module.hmcloud.pad.HMOpSkinWrapper;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u001a\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u001a\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010.\u001a\u00020\bH\u0002J\u0006\u0010/\u001a\u00020\bJ\u0006\u00100\u001a\u00020\bJ\u0010\u00101\u001a\u00020\b2\b\b\u0002\u00102\u001a\u00020\u0014R.\u0010\u0004\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001b\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001c¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "onAddKey", "Lkotlin/Function1;", "", "", "", "getOnAddKey", "()Lkotlin/jvm/functions/Function1;", "setOnAddKey", "(Lkotlin/jvm/functions/Function1;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddCombineBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddCombineBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddCombineBinding;)V", "fold", "", "getFold", "()Z", "setFold", "(Z)V", "isAnimating", "setAnimating", COSHttpResponseKey.Data.KEYS, "", "getKeys", "()[Ljava/lang/String;", "[Ljava/lang/String;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "removePressed", "updateKeys", "clear", "startMenuAnimation", "newFold", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMKeyCombineAddDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyCombineAddDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,173:1\n1878#2,3:174\n1869#2,2:177\n1869#2,2:179\n295#2,2:183\n13537#3,2:181\n13539#3:185\n1682#3,6:186\n*S KotlinDebug\n*F\n+ 1 HMKeyCombineAddDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog\n*L\n44#1:174,3\n77#1:177,2\n91#1:179,2\n116#1:183,2\n112#1:181,2\n112#1:185\n53#1:186,6\n*E\n"})
public final class HMKeyCombineAddDialog extends HMBaseFragmentDialog {
    public ba0 binding;
    private boolean fold;
    private boolean isAnimating;

    @NotNull
    private final String[] keys = new String[3];

    @Nullable
    private Function1<? super List<String>, Unit> onAddKey;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(HMKeyCombineAddDialog hMKeyCombineAddDialog, View view) {
        hMKeyCombineAddDialog.startMenuAnimation(!hMKeyCombineAddDialog.fold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnRB.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$11(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnRS.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnA.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$13(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnB.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$14(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnX.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$15(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnY.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$16(HMKeyCombineAddDialog hMKeyCombineAddDialog, View view) {
        Function1<? super List<String>, Unit> function1 = hMKeyCombineAddDialog.onAddKey;
        if (function1 != null) {
            function1.invoke(ArraysKt___ArraysKt.filterNotNull(hMKeyCombineAddDialog.keys));
        }
        hMKeyCombineAddDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3$lambda$2(HMKeyCombineAddDialog hMKeyCombineAddDialog, int i10, View view) {
        String[] strArr = hMKeyCombineAddDialog.keys;
        if (strArr[i10] != null) {
            strArr[i10] = null;
        }
        hMKeyCombineAddDialog.updateKeys();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$5(HMKeyCombineAddDialog hMKeyCombineAddDialog, String k10) {
        Intrinsics.checkNotNullParameter(k10, "k");
        String[] strArr = hMKeyCombineAddDialog.keys;
        int length = strArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (strArr[i10] == null) {
                break;
            }
            i10++;
        }
        if (!(i10 >= 0 && i10 < hMKeyCombineAddDialog.keys.length)) {
            return false;
        }
        hMKeyCombineAddDialog.keys[i10] = k10;
        hMKeyCombineAddDialog.updateKeys();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnLT.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$7(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnLB.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnLS.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$9(Function1 function1, View view) {
        function1.invoke(HMKeyData.BtnRT.getKey());
    }

    private final void removePressed() {
        ba0 binding = getBinding();
        for (final View view : CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{binding.f36301n, binding.f36299l, binding.f36300m, binding.f36308u, binding.f36306s, binding.f36307t, binding.f36290c, binding.f36292e, binding.f36310w, binding.f36311x, binding.f36296i, binding.f36297j, binding.f36298k})) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.module.hmcloud.dialog.s
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return HMKeyCombineAddDialog.removePressed$lambda$21$lambda$20$lambda$19(view, view2, motionEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removePressed$lambda$21$lambda$20$lambda$19(View view, View view2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            view2.performClick();
            return true;
        }
        if (action != 1) {
            return true;
        }
        view.setPressed(false);
        return true;
    }

    public static /* synthetic */ void startMenuAnimation$default(HMKeyCombineAddDialog hMKeyCombineAddDialog, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        hMKeyCombineAddDialog.startMenuAnimation(z10);
    }

    public final void clear() {
        ArraysKt___ArraysJvmKt.fill$default(this.keys, (Object) null, 0, 0, 6, (Object) null);
        if (isAdded()) {
            updateKeys();
        }
    }

    @NotNull
    public final ba0 getBinding() {
        ba0 ba0Var = this.binding;
        if (ba0Var != null) {
            return ba0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final boolean getFold() {
        return this.fold;
    }

    @NotNull
    public final String[] getKeys() {
        return this.keys;
    }

    @Nullable
    public final Function1<List<String>, Unit> getOnAddKey() {
        return this.onAddKey;
    }

    /* JADX INFO: renamed from: isAnimating, reason: from getter */
    public final boolean getIsAnimating() {
        return this.isAnimating;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(ba0.inflate(inflater));
        getBinding().f36294g.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f48639b.dismiss();
            }
        });
        getBinding().f36291d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMKeyCombineAddDialog.onCreateView$lambda$1(this.f48653b, view);
            }
        });
        removePressed();
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final int i10 = 0;
        for (Object obj : CollectionsKt__CollectionsKt.listOf((Object[]) new HMButtonView[]{getBinding().f36296i, getBinding().f36297j, getBinding().f36298k})) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((HMButtonView) obj).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HMKeyCombineAddDialog.onViewCreated$lambda$3$lambda$2(this.f48657b, i10, view2);
                }
            });
            i10 = i11;
        }
        final Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(HMKeyCombineAddDialog.onViewCreated$lambda$5(this.f48666b, (String) obj2));
            }
        };
        getBinding().f36301n.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$6(function1, view2);
            }
        });
        getBinding().f36299l.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$7(function1, view2);
            }
        });
        getBinding().f36300m.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$8(function1, view2);
            }
        });
        getBinding().f36308u.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$9(function1, view2);
            }
        });
        getBinding().f36306s.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$10(function1, view2);
            }
        });
        getBinding().f36307t.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$11(function1, view2);
            }
        });
        getBinding().f36290c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$12(function1, view2);
            }
        });
        getBinding().f36292e.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$13(function1, view2);
            }
        });
        getBinding().f36310w.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$14(function1, view2);
            }
        });
        getBinding().f36311x.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$15(function1, view2);
            }
        });
        getBinding().f36309v.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyCombineAddDialog.onViewCreated$lambda$16(this.f48664b, view2);
            }
        });
        ba0 binding = getBinding();
        for (ImageView imageView : CollectionsKt__CollectionsKt.listOf((Object[]) new ImageView[]{binding.f36301n, binding.f36299l, binding.f36300m, binding.f36308u, binding.f36306s, binding.f36307t, binding.f36290c, binding.f36292e, binding.f36310w, binding.f36311x})) {
            imageView.setDuplicateParentStateEnabled(false);
            imageView.setStateListAnimator(null);
        }
    }

    public final void setAnimating(boolean z10) {
        this.isAnimating = z10;
    }

    public final void setBinding(@NotNull ba0 ba0Var) {
        Intrinsics.checkNotNullParameter(ba0Var, "<set-?>");
        this.binding = ba0Var;
    }

    public final void setFold(boolean z10) {
        this.fold = z10;
    }

    public final void setOnAddKey(@Nullable Function1<? super List<String>, Unit> function1) {
        this.onAddKey = function1;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, tag);
        clear();
    }

    public final void startMenuAnimation(final boolean newFold) {
        float f10;
        if (this.isAnimating) {
            return;
        }
        float f11 = -getBinding().f36303p.getMeasuredHeight();
        float f12 = 180.0f;
        float f13 = 0.0f;
        if (newFold) {
            f13 = f11;
            f11 = 0.0f;
            f12 = 0.0f;
            f10 = 180.0f;
        } else {
            f10 = 0.0f;
        }
        com.nineoldandroids.animation.l lVarS0 = com.nineoldandroids.animation.l.s0(getBinding().f36302o, "translationY", f11, f13);
        lVarS0.l(300L);
        lVarS0.a(new com.nineoldandroids.animation.a.InterfaceC0985a() { // from class: com.join.kotlin.module.hmcloud.dialog.HMKeyCombineAddDialog.startMenuAnimation.1
            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
                HMKeyCombineAddDialog.this.setAnimating(false);
                HMKeyCombineAddDialog.this.setFold(newFold);
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
                HMKeyCombineAddDialog.this.setAnimating(true);
            }
        });
        lVarS0.r();
        ImageView arr = getBinding().f36291d;
        Intrinsics.checkNotNullExpressionValue(arr, "arr");
        com.nineoldandroids.animation.l lVarS1 = com.nineoldandroids.animation.l.s0(arr, "rotation", f12, f10);
        arr.setPivotX(arr.getMeasuredWidth() / 2.0f);
        arr.setPivotY(arr.getMeasuredHeight() / 2.0f);
        lVarS1.l(300L);
        lVarS1.r();
    }

    public final void updateKeys() {
        HMKeyData next;
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HMButtonView[]{getBinding().f36296i, getBinding().f36297j, getBinding().f36298k});
        String[] strArr = this.keys;
        int length = strArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str = strArr[i10];
            int i12 = i11 + 1;
            if (str == null || str.length() == 0) {
                HMButtonView.setTextButton$default((HMButtonView) listListOf.get(i11), "", null, 2, null);
            } else {
                Iterator<HMKeyData> it2 = HMKeyData.getEntries().iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.areEqual(next.getKey(), str));
                HMKeyData hMKeyData = next;
                HMOpSkinWrapper hMOpSkinWrapper = HMOpSkin.INSTANCE.getDefault();
                Object obj = listListOf.get(i11);
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                View view = (View) obj;
                HMKeyItem hMKeyItem = new HMKeyItem();
                hMKeyItem.setKey(str);
                hMKeyItem.setName(hMKeyData != null ? hMKeyData.getNickname() : null);
                Unit unit = Unit.INSTANCE;
                hMOpSkinWrapper.load(view, hMKeyItem);
            }
            i10++;
            i11 = i12;
        }
    }
}
