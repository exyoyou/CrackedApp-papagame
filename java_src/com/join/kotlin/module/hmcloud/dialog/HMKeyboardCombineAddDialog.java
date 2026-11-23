package com.join.kotlin.module.hmcloud.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import com.join.android.app.mgsim.wufun.databinding.u90;
import com.join.kotlin.module.hmcloud.pad.HMButtonView;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import com.join.kotlin.module.hmcloud.pad.HMKeyboardView;
import com.join.kotlin.module.hmcloud.pad.HMOpSkin;
import com.join.kotlin.module.hmcloud.pad.HMOpSkinWrapper;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.dto.hmcloud.HMKeyItem;
import com.tencent.cos.common.COSHttpResponseKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u001a\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u001a\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0007H\u0016J\u0006\u0010.\u001a\u00020\bJ\u0006\u0010/\u001a\u00020\bJ\u0010\u00100\u001a\u00020\b2\b\b\u0002\u00101\u001a\u00020\u0014R.\u0010\u0004\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001b\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001c¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001e¨\u00062"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "onAddKey", "Lkotlin/Function1;", "", "", "", "getOnAddKey", "()Lkotlin/jvm/functions/Function1;", "setOnAddKey", "(Lkotlin/jvm/functions/Function1;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddCombineBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddCombineBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddCombineBinding;)V", "fold", "", "getFold", "()Z", "setFold", "(Z)V", "isAnimating", "setAnimating", COSHttpResponseKey.Data.KEYS, "", "getKeys", "()[Ljava/lang/String;", "[Ljava/lang/String;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "clear", "updateKeys", "startMenuAnimation", "newFold", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMKeyboardCombineAddDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyboardCombineAddDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,145:1\n1878#2,3:146\n295#2,2:151\n13537#3,2:149\n13539#3:153\n1682#3,6:154\n*S KotlinDebug\n*F\n+ 1 HMKeyboardCombineAddDialog.kt\ncom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog\n*L\n51#1:146,3\n94#1:151,2\n90#1:149,2\n90#1:153\n61#1:154,6\n*E\n"})
public final class HMKeyboardCombineAddDialog extends HMBaseFragmentDialog {
    public u90 binding;
    private boolean fold;
    private boolean isAnimating;

    @NotNull
    private final String[] keys = new String[3];

    @Nullable
    private Function1<? super List<String>, Unit> onAddKey;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8$lambda$1(HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog, View view) {
        hMKeyboardCombineAddDialog.startMenuAnimation(!hMKeyboardCombineAddDialog.fold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8$lambda$2(HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog, View view) {
        ArrayList arrayList = new ArrayList();
        for (String str : hMKeyboardCombineAddDialog.keys) {
            if (str != null) {
                arrayList.add(str);
            }
        }
        Function1<? super List<String>, Unit> function1 = hMKeyboardCombineAddDialog.onAddKey;
        if (function1 != null) {
            function1.invoke(arrayList);
        }
        hMKeyboardCombineAddDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8$lambda$4$lambda$3(HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog, int i10, View view) {
        String[] strArr = hMKeyboardCombineAddDialog.keys;
        if (strArr[i10] != null) {
            strArr[i10] = null;
        }
        hMKeyboardCombineAddDialog.updateKeys();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$8$lambda$6(HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog, String k10) {
        Intrinsics.checkNotNullParameter(k10, "k");
        String[] strArr = hMKeyboardCombineAddDialog.keys;
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
        if (!(i10 >= 0 && i10 < hMKeyboardCombineAddDialog.keys.length)) {
            return false;
        }
        hMKeyboardCombineAddDialog.keys[i10] = k10;
        hMKeyboardCombineAddDialog.updateKeys();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$8$lambda$7(Function1 function1, String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (z10) {
            function1.invoke(key);
        }
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void startMenuAnimation$default(HMKeyboardCombineAddDialog hMKeyboardCombineAddDialog, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        hMKeyboardCombineAddDialog.startMenuAnimation(z10);
    }

    public final void clear() {
        ArraysKt___ArraysJvmKt.fill$default(this.keys, (Object) null, 0, 0, 6, (Object) null);
        if (isAdded()) {
            updateKeys();
        }
    }

    @NotNull
    public final u90 getBinding() {
        u90 u90Var = this.binding;
        if (u90Var != null) {
            return u90Var;
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
        setBinding(u90.inflate(inflater, container, false));
        getBinding().f45617i.setMode(HMKeyboardView.Mode.Combine);
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        u90 binding = getBinding();
        binding.f45612d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48631b.dismiss();
            }
        });
        binding.f45611c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyboardCombineAddDialog.onViewCreated$lambda$8$lambda$1(this.f48632b, view2);
            }
        });
        binding.f45622n.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyboardCombineAddDialog.onViewCreated$lambda$8$lambda$2(this.f48634b, view2);
            }
        });
        final int i10 = 0;
        for (Object obj : CollectionsKt__CollectionsKt.listOf((Object[]) new HMButtonView[]{getBinding().f45614f, getBinding().f45615g, getBinding().f45616h})) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((HMButtonView) obj).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HMKeyboardCombineAddDialog.onViewCreated$lambda$8$lambda$4$lambda$3(this.f48637b, i10, view2);
                }
            });
            i10 = i11;
        }
        final Function1 function1 = new Function1() { // from class: com.join.kotlin.module.hmcloud.dialog.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(HMKeyboardCombineAddDialog.onViewCreated$lambda$8$lambda$6(this.f48640b, (String) obj2));
            }
        };
        binding.f45617i.setOnKeyClick(new Function2() { // from class: com.join.kotlin.module.hmcloud.dialog.l0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                return HMKeyboardCombineAddDialog.onViewCreated$lambda$8$lambda$7(function1, (String) obj2, ((Boolean) obj3).booleanValue());
            }
        });
    }

    public final void setAnimating(boolean z10) {
        this.isAnimating = z10;
    }

    public final void setBinding(@NotNull u90 u90Var) {
        Intrinsics.checkNotNullParameter(u90Var, "<set-?>");
        this.binding = u90Var;
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
        float f11 = -getBinding().f45619k.getMeasuredHeight();
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
        com.nineoldandroids.animation.l lVarS0 = com.nineoldandroids.animation.l.s0(getBinding().f45618j, "translationY", f11, f13);
        lVarS0.l(300L);
        lVarS0.a(new com.nineoldandroids.animation.a.InterfaceC0985a() { // from class: com.join.kotlin.module.hmcloud.dialog.HMKeyboardCombineAddDialog.startMenuAnimation.1
            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
                HMKeyboardCombineAddDialog.this.setAnimating(false);
                HMKeyboardCombineAddDialog.this.setFold(newFold);
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
            }

            @Override // com.nineoldandroids.animation.a.InterfaceC0985a
            public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
                HMKeyboardCombineAddDialog.this.setAnimating(true);
            }
        });
        lVarS0.r();
        ImageView arr = getBinding().f45611c;
        Intrinsics.checkNotNullExpressionValue(arr, "arr");
        com.nineoldandroids.animation.l lVarS1 = com.nineoldandroids.animation.l.s0(arr, "rotation", f12, f10);
        arr.setPivotX(arr.getMeasuredWidth() / 2.0f);
        arr.setPivotY(arr.getMeasuredHeight() / 2.0f);
        lVarS1.l(300L);
        lVarS1.r();
    }

    public final void updateKeys() {
        HMKeyData next;
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HMButtonView[]{getBinding().f45614f, getBinding().f45615g, getBinding().f45616h});
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
