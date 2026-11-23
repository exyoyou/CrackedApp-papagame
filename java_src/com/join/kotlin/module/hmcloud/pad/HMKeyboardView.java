package com.join.kotlin.module.hmcloud.pad;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.join.android.app.mgsim.wufun.databinding.v90;
import com.join.mgps.Util.l3;
import com.kwad.components.offline.api.explore.model.ExploreConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001#B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\b\u0010\u001e\u001a\u00020\u0013H\u0003J\u000e\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000RL\u0010\u000b\u001a4\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006$"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardBinding;", "onKeyClick", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "key", "", "pressed", "", "getOnKeyClick", "()Lkotlin/jvm/functions/Function2;", "setOnKeyClick", "(Lkotlin/jvm/functions/Function2;)V", "mode", "Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView$Mode;", "isVibrate", "()Z", "setVibrate", "(Z)V", "initKeys", "setMode", "setFunctionLayerVisibility", "visibility", "", "Mode", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMKeyboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyboardView.kt\ncom/join/kotlin/module/hmcloud/pad/HMKeyboardView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n1878#2,3:133\n*S KotlinDebug\n*F\n+ 1 HMKeyboardView.kt\ncom/join/kotlin/module/hmcloud/pad/HMKeyboardView\n*L\n78#1:133,3\n*E\n"})
public final class HMKeyboardView extends FrameLayout {

    @NotNull
    private final v90 binding;
    private boolean isVibrate;

    @NotNull
    private Mode mode;

    @Nullable
    private Function2<? super String, ? super Boolean, Unit> onKeyClick;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView$Mode;", "", "<init>", "(Ljava/lang/String;I)V", "Normal", ExploreConstants.SCENE_FULL, "Combine", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum Mode {
        Normal,
        Full,
        Combine;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @NotNull
        public static EnumEntries<Mode> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Mode.values().length];
            try {
                iArr[Mode.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Mode.Full.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Mode.Combine.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMKeyboardView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        v90 v90VarInflate = v90.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(v90VarInflate, "inflate(...)");
        this.binding = v90VarInflate;
        this.mode = Mode.Full;
        addView(v90VarInflate.getRoot(), -1, -2);
        setMode(this.mode);
        initKeys();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void initKeys() {
        v90 v90Var = this.binding;
        final int i10 = 0;
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FrameLayout[]{v90Var.R1, v90Var.f46129c2, v90Var.f46124a2, v90Var.f46127b2, v90Var.V1, v90Var.f46161q, v90Var.f46157p, v90Var.L, v90Var.N, v90Var.R, v90Var.S, v90Var.T, v90Var.U, v90Var.V, v90Var.W, v90Var.X, v90Var.Y, v90Var.O, v90Var.P, v90Var.Q, v90Var.f46142i1, v90Var.C, v90Var.f46143i2, v90Var.f46140h2, v90Var.f46126b1, v90Var.I, v90Var.f46173v, v90Var.f46130d, v90Var.f46132e, v90Var.f46134f, v90Var.f46137g, v90Var.f46139h, v90Var.f46141i, v90Var.f46144j, v90Var.f46146k, v90Var.f46148l, v90Var.f46128c, v90Var.L1, v90Var.K, v90Var.f46169t, v90Var.f46170t2, v90Var.f46145j2, v90Var.f46177w2, v90Var.H, v90Var.f46147k2, v90Var.f46168s2, v90Var.A2, v90Var.f46172u2, v90Var.f46135f1, v90Var.f46133e2, v90Var.f46136f2, v90Var.f46165r1, v90Var.f46150l2, v90Var.f46171u, v90Var.f46178x, v90Var.f46151m, v90Var.f46152m2, v90Var.B, v90Var.M, v90Var.Z, v90Var.f46158p0, v90Var.f46149l1, v90Var.f46159p1, v90Var.f46162q1, v90Var.f46154n2, v90Var.f46164r, v90Var.J, v90Var.f46156o2, v90Var.B2, v90Var.f46183z2, v90Var.f46176w, v90Var.f46175v2, v90Var.f46167s, v90Var.f46131d2, v90Var.f46174v1, v90Var.f46180y, v90Var.f46138g2, v90Var.f46163q2, v90Var.G, v90Var.f46160p2, v90Var.f46182z, v90Var.f46179x2, v90Var.f46153n, v90Var.f46166r2, v90Var.f46155o, v90Var.f46181y2, v90Var.A, v90Var.E, v90Var.D, v90Var.F});
        String key = HMKeyData.MouseLeft.getKey();
        String key2 = HMKeyData.MouseRight.getKey();
        String key3 = HMKeyData.MouseMiddle.getKey();
        String key4 = HMKeyData.MouseMoveUp.getKey();
        String key5 = HMKeyData.MouseMoveDown.getKey();
        String key6 = HMKeyData.JoyWasd.getKey();
        String key7 = HMKeyData.JoyArrow.getKey();
        String key8 = HMKeyData.VkEscape.getKey();
        String key9 = HMKeyData.VkF1.getKey();
        String key10 = HMKeyData.VkF2.getKey();
        String key11 = HMKeyData.VkF3.getKey();
        String key12 = HMKeyData.VkF4.getKey();
        String key13 = HMKeyData.VkF5.getKey();
        String key14 = HMKeyData.VkF6.getKey();
        String key15 = HMKeyData.VkF7.getKey();
        String key16 = HMKeyData.VkF8.getKey();
        String key17 = HMKeyData.VkF9.getKey();
        String key18 = HMKeyData.VkF10.getKey();
        String key19 = HMKeyData.VkF11.getKey();
        String key20 = HMKeyData.VkF12.getKey();
        String key21 = HMKeyData.VkInsert.getKey();
        String key22 = HMKeyData.VkDelete.getKey();
        String key23 = HMKeyData.VkPageUp.getKey();
        String key24 = HMKeyData.VkPageDown.getKey();
        String key25 = HMKeyData.VkHome.getKey();
        String key26 = HMKeyData.VkEnd.getKey();
        String key27 = HMKeyData.VkBackquote.getKey();
        String key28 = HMKeyData.Key1.getKey();
        String key29 = HMKeyData.Key2.getKey();
        String key30 = HMKeyData.Key3.getKey();
        String key31 = HMKeyData.Key4.getKey();
        String key32 = HMKeyData.Key5.getKey();
        String key33 = HMKeyData.Key6.getKey();
        String key34 = HMKeyData.Key7.getKey();
        String key35 = HMKeyData.Key8.getKey();
        String key36 = HMKeyData.Key9.getKey();
        String key37 = HMKeyData.Key0.getKey();
        String key38 = HMKeyData.VkMinus.getKey();
        String key39 = HMKeyData.VkEquals.getKey();
        String key40 = HMKeyData.VkBackspace.getKey();
        String key41 = HMKeyData.VkTab.getKey();
        String key42 = HMKeyData.KeyQ.getKey();
        String key43 = HMKeyData.KeyW.getKey();
        String key44 = HMKeyData.KeyE.getKey();
        String key45 = HMKeyData.KeyR.getKey();
        String key46 = HMKeyData.KeyT.getKey();
        String key47 = HMKeyData.KeyY.getKey();
        String key48 = HMKeyData.KeyU.getKey();
        String key49 = HMKeyData.KeyI.getKey();
        String key50 = HMKeyData.KeyO.getKey();
        String key51 = HMKeyData.KeyP.getKey();
        String key52 = HMKeyData.VkBracketLeft.getKey();
        String key53 = HMKeyData.VkBracketRight.getKey();
        String key54 = HMKeyData.VkBackslash.getKey();
        String key55 = HMKeyData.VkCapsLock.getKey();
        String key56 = HMKeyData.KeyA.getKey();
        String key57 = HMKeyData.KeyS.getKey();
        String key58 = HMKeyData.KeyD.getKey();
        String key59 = HMKeyData.KeyF.getKey();
        String key60 = HMKeyData.KeyG.getKey();
        String key61 = HMKeyData.KeyH.getKey();
        String key62 = HMKeyData.KeyJ.getKey();
        String key63 = HMKeyData.KeyK.getKey();
        String key64 = HMKeyData.KeyL.getKey();
        String key65 = HMKeyData.VkSemicolon.getKey();
        String key66 = HMKeyData.VkQuote.getKey();
        String key67 = HMKeyData.VkEnter.getKey();
        HMKeyData hMKeyData = HMKeyData.VkShift;
        String key68 = hMKeyData.getKey();
        String key69 = HMKeyData.KeyZ.getKey();
        String key70 = HMKeyData.KeyX.getKey();
        String key71 = HMKeyData.KeyC.getKey();
        String key72 = HMKeyData.KeyV.getKey();
        String key73 = HMKeyData.KeyB.getKey();
        String key74 = HMKeyData.KeyN.getKey();
        String key75 = HMKeyData.KeyM.getKey();
        String key76 = HMKeyData.VkComma.getKey();
        String key77 = HMKeyData.VkPeriod.getKey();
        String key78 = HMKeyData.VkSlash.getKey();
        String key79 = HMKeyData.VkUp.getKey();
        String key80 = hMKeyData.getKey();
        HMKeyData hMKeyData2 = HMKeyData.VkCtrl;
        String key81 = hMKeyData2.getKey();
        String key82 = HMKeyData.VkWinLeft.getKey();
        HMKeyData hMKeyData3 = HMKeyData.VkAlt;
        final List listListOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{key, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16, key17, key18, key19, key20, key21, key22, key23, key24, key25, key26, key27, key28, key29, key30, key31, key32, key33, key34, key35, key36, key37, key38, key39, key40, key41, key42, key43, key44, key45, key46, key47, key48, key49, key50, key51, key52, key53, key54, key55, key56, key57, key58, key59, key60, key61, key62, key63, key64, key65, key66, key67, key68, key69, key70, key71, key72, key73, key74, key75, key76, key77, key78, key79, key80, key81, key82, hMKeyData3.getKey(), HMKeyData.VkSpace.getKey(), hMKeyData3.getKey(), HMKeyData.VkWinRight.getKey(), hMKeyData2.getKey(), HMKeyData.VkLeft.getKey(), HMKeyData.VkDown.getKey(), HMKeyData.VkRight.getKey()});
        for (Object obj : listListOf) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            ((FrameLayout) obj).setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.module.hmcloud.pad.g
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return HMKeyboardView.initKeys$lambda$2$lambda$1$lambda$0(this.f48810b, listListOf2, i10, view, motionEvent);
                }
            });
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean initKeys$lambda$2$lambda$1$lambda$0(HMKeyboardView hMKeyboardView, List list, int i10, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if (hMKeyboardView.isVibrate) {
                l3 l3Var = l3.f49800a;
                Context context = hMKeyboardView.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                l3.b(l3Var, context, 0L, 2, null);
            }
            view.setPressed(true);
            Function2<? super String, ? super Boolean, Unit> function2 = hMKeyboardView.onKeyClick;
            if (function2 != null) {
                function2.invoke(list.get(i10), Boolean.TRUE);
            }
        } else if (action == 1) {
            view.setPressed(false);
            Function2<? super String, ? super Boolean, Unit> function3 = hMKeyboardView.onKeyClick;
            if (function3 != null) {
                function3.invoke(list.get(i10), Boolean.FALSE);
            }
        }
        return true;
    }

    @Nullable
    public final Function2<String, Boolean, Unit> getOnKeyClick() {
        return this.onKeyClick;
    }

    /* JADX INFO: renamed from: isVibrate, reason: from getter */
    public final boolean getIsVibrate() {
        return this.isVibrate;
    }

    public final void setFunctionLayerVisibility(int visibility) {
        this.binding.C2.setVisibility(visibility);
    }

    public final void setMode(@NotNull Mode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.mode = mode;
        int i10 = WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        if (i10 == 1) {
            this.binding.C2.setVisibility(8);
            return;
        }
        if (i10 == 2) {
            v90 v90Var = this.binding;
            v90Var.C2.setVisibility(0);
            v90Var.f46161q.setVisibility(0);
            v90Var.f46157p.setVisibility(0);
            return;
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        v90 v90Var2 = this.binding;
        v90Var2.C2.setVisibility(0);
        v90Var2.f46161q.setVisibility(8);
        v90Var2.f46157p.setVisibility(8);
    }

    public final void setOnKeyClick(@Nullable Function2<? super String, ? super Boolean, Unit> function2) {
        this.onKeyClick = function2;
    }

    public final void setVibrate(boolean z10) {
        this.isVibrate = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMKeyboardView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        v90 v90VarInflate = v90.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(v90VarInflate, "inflate(...)");
        this.binding = v90VarInflate;
        this.mode = Mode.Full;
        addView(v90VarInflate.getRoot(), -1, -2);
        setMode(this.mode);
        initKeys();
    }
}
