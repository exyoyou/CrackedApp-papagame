package com.join.kotlin.quark.pop;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.PopupWindow;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.pop.SortPopWindow;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B!\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0004\u0010\nJ\u0006\u0010\u001d\u001a\u00020\u001eJ\b\u0010\u001f\u001a\u00020\u001eH\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016¨\u0006 "}, d2 = {"Lcom/join/kotlin/quark/pop/SortPopWindow;", "Landroid/widget/PopupWindow;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mContext", "width", "", "height", "(Landroid/content/Context;II)V", "currentOrder", "", "getCurrentOrder", "()Ljava/lang/String;", "setCurrentOrder", "(Ljava/lang/String;)V", "btnSxz", "Landroid/widget/Button;", "getBtnSxz", "()Landroid/widget/Button;", "setBtnSxz", "(Landroid/widget/Button;)V", "btnYsx", "getBtnYsx", "setBtnYsx", "btnAll", "getBtnAll", "setBtnAll", "init", "", "setupAttrs", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SortPopWindow extends PopupWindow {
    public Button btnAll;
    public Button btnSxz;
    public Button btnYsx;

    @Nullable
    private String currentOrder;

    @NotNull
    private Context mContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortPopWindow(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mContext = context;
        init();
    }

    private final void setupAttrs() {
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new View.OnTouchListener() { // from class: c6.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SortPopWindow.setupAttrs$lambda$0(this.f517b, view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean setupAttrs$lambda$0(SortPopWindow sortPopWindow, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 4) {
            return false;
        }
        sortPopWindow.dismiss();
        return true;
    }

    @NotNull
    public final Button getBtnAll() {
        Button button = this.btnAll;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("btnAll");
        return null;
    }

    @NotNull
    public final Button getBtnSxz() {
        Button button = this.btnSxz;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("btnSxz");
        return null;
    }

    @NotNull
    public final Button getBtnYsx() {
        Button button = this.btnYsx;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("btnYsx");
        return null;
    }

    @Nullable
    public final String getCurrentOrder() {
        return this.currentOrder;
    }

    public final void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_wish_list_sort, (ViewGroup) null);
        setContentView(viewInflate);
        setWidth(-2);
        setHeight(-2);
        setupAttrs();
        setBtnSxz((Button) viewInflate.findViewById(R.id.btn_sxz));
        setBtnYsx((Button) viewInflate.findViewById(R.id.btn_ysx));
        setBtnAll((Button) viewInflate.findViewById(R.id.btn_all));
    }

    public final void setBtnAll(@NotNull Button button) {
        Intrinsics.checkNotNullParameter(button, "<set-?>");
        this.btnAll = button;
    }

    public final void setBtnSxz(@NotNull Button button) {
        Intrinsics.checkNotNullParameter(button, "<set-?>");
        this.btnSxz = button;
    }

    public final void setBtnYsx(@NotNull Button button) {
        Intrinsics.checkNotNullParameter(button, "<set-?>");
        this.btnYsx = button;
    }

    public final void setCurrentOrder(@Nullable String str) {
        this.currentOrder = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortPopWindow(@NotNull Context mContext, int i10, int i11) {
        super(i10, i11);
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
        init();
    }
}
