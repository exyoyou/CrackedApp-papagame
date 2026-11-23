package com.join.kotlin.module.hmcloud.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
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
import com.join.mgps.dto.hmcloud.HMKeyItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0012\u0010%\u001a\u00020\u001d2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u001d2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cJ\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0002R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u0007X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u0006."}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "keyContainer", "Landroid/widget/FrameLayout;", "getKeyContainer", "()Landroid/widget/FrameLayout;", "setKeyContainer", "(Landroid/widget/FrameLayout;)V", "text", "Landroid/widget/TextView;", "getText", "()Landroid/widget/TextView;", "setText", "(Landroid/widget/TextView;)V", "next", "Landroid/view/View;", "getNext", "()Landroid/view/View;", "setNext", "(Landroid/view/View;)V", "mCallback", "Lkotlin/Function0;", "", "getMCallback", "()Lkotlin/jvm/functions/Function0;", "setMCallback", "(Lkotlin/jvm/functions/Function0;)V", "layoutId", "getLayoutId", "()I", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setData", "item", "Lcom/join/mgps/dto/hmcloud/HMKeyItem;", "setCallback", com.alipay.sdk.authjs.a.f7124i, "layoutKey", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HMGuideKeyBaseDialog extends HMBaseDialog {
    public FrameLayout keyContainer;
    private final int layoutId;

    @Nullable
    private Function0<Unit> mCallback;
    public View next;
    public TextView text;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMGuideKeyBaseDialog(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.layoutId = R.layout.layout_hm_key_guide_3_1;
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
        getKeyContainer().removeAllViews();
        getKeyContainer().addView(hMButtonView, -1, -1);
        HMOpSkin.INSTANCE.getDefault().load(hMButtonView, item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(HMGuideKeyBaseDialog hMGuideKeyBaseDialog, View view) {
        Function0<Unit> function0 = hMGuideKeyBaseDialog.mCallback;
        if (function0 != null) {
            function0.invoke();
        }
        hMGuideKeyBaseDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCallback$lambda$2(HMGuideKeyBaseDialog hMGuideKeyBaseDialog, Function0 function0, View view) {
        hMGuideKeyBaseDialog.dismiss();
        function0.invoke();
    }

    @NotNull
    public final FrameLayout getKeyContainer() {
        FrameLayout frameLayout = this.keyContainer;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyContainer");
        return null;
    }

    public int getLayoutId() {
        return this.layoutId;
    }

    @Nullable
    protected final Function0<Unit> getMCallback() {
        return this.mCallback;
    }

    @NotNull
    public final View getNext() {
        View view = this.next;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("next");
        return null;
    }

    @NotNull
    public final TextView getText() {
        TextView textView = this.text;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("text");
        return null;
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getLayoutId());
        setKeyContainer((FrameLayout) findViewById(R.id.fl_btn_container));
        setText((TextView) findViewById(R.id.text));
        setNext(findViewById(R.id.next));
        View viewFindViewById = findViewById(R.id.cl);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        View viewFindViewById2 = findViewById(R.id.cl_tip);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMGuideKeyBaseDialog.onCreate$lambda$0(this.f48629b, view);
            }
        });
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMGuideKeyBaseDialog.onCreate$lambda$1(view);
            }
        });
    }

    public final void setCallback(@NotNull final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.mCallback = callback;
        getNext().setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HMGuideKeyBaseDialog.setCallback$lambda$2(this.f48626b, callback, view);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0033 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:14:0x0025, B:22:0x0033, B:24:0x003f), top: B:44:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x003f A[Catch: Exception -> 0x002e, TRY_LEAVE, TryCatch #0 {Exception -> 0x002e, blocks: (B:14:0x0025, B:22:0x0033, B:24:0x003f), top: B:44:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    public void setData(@NotNull HMKeyItem item) {
        String text;
        boolean z10;
        HMKeyData hMKeyData;
        Intrinsics.checkNotNullParameter(item, "item");
        String nickname = item.getNickname();
        String nickname2 = !(nickname == null || nickname.length() == 0) ? item.getNickname() : item.getName();
        if (nickname2 != null) {
            try {
                z10 = nickname2.length() == 0;
                if (z10) {
                    hMKeyData = HMKeyData.INSTANCE.parse(item.getKey());
                    if (hMKeyData != null) {
                        nickname2 = hMKeyData.getNickname();
                    } else {
                        nickname2 = null;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            if (z10) {
                hMKeyData = HMKeyData.INSTANCE.parse(item.getKey());
                if (hMKeyData != null) {
                    nickname2 = hMKeyData.getNickname();
                } else {
                    nickname2 = null;
                }
            }
        }
        HMKeyItem.Guide guide = item.getGuide();
        String text2 = guide != null ? guide.getText() : null;
        if (text2 == null || text2.length() == 0) {
            text = "点击该键，可执行【" + nickname2 + "】操作";
        } else {
            HMKeyItem.Guide guide2 = item.getGuide();
            if (guide2 == null || (text = guide2.getText()) == null) {
                text = "";
            }
        }
        getText().setText(text);
        layoutKey(item);
    }

    public final void setKeyContainer(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.keyContainer = frameLayout;
    }

    protected final void setMCallback(@Nullable Function0<Unit> function0) {
        this.mCallback = function0;
    }

    public final void setNext(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.next = view;
    }

    public final void setText(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.text = textView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMGuideKeyBaseDialog(@NotNull Context context, int i10) {
        super(context, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.layoutId = R.layout.layout_hm_key_guide_3_1;
    }
}
