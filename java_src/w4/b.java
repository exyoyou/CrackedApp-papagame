package w4;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class b extends AlertDialog.Builder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @AttrRes
    private static final int f97553c = R.attr.alertDialogStyle;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @StyleRes
    private static final int f97554d = R.style.MaterialAlertDialog_MaterialComponents;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @AttrRes
    private static final int f97555e = R.attr.materialAlertDialogTheme;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private Drawable f97556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Rect f97557b;

    public b(@NonNull Context context) {
        this(context, 0);
    }

    private static Context a(@NonNull Context context) {
        int iC = c(context);
        Context contextC = a5.a.c(context, null, f97553c, f97554d);
        return iC == 0 ? contextC : new ContextThemeWrapper(contextC, iC);
    }

    private static int c(@NonNull Context context) {
        TypedValue typedValueA = com.google.android.material.resources.b.a(context, f97555e);
        if (typedValueA == null) {
            return 0;
        }
        return typedValueA.data;
    }

    private static int d(@NonNull Context context, int i10) {
        return i10 == 0 ? c(context) : i10;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public b setNeutralButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNeutralButton(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public b setNeutralButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNeutralButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public b setNeutralButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setNeutralButtonIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public b setOnCancelListener(@Nullable DialogInterface.OnCancelListener onCancelListener) {
        return (b) super.setOnCancelListener(onCancelListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public b setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        return (b) super.setOnDismissListener(onDismissListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public b setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        return (b) super.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public b setOnKeyListener(@Nullable DialogInterface.OnKeyListener onKeyListener) {
        return (b) super.setOnKeyListener(onKeyListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public b setPositiveButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setPositiveButton(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public b setPositiveButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setPositiveButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public b setPositiveButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setPositiveButtonIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public b setSingleChoiceItems(@ArrayRes int i10, int i11, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(i10, i11, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public b setSingleChoiceItems(@Nullable Cursor cursor, int i10, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(cursor, i10, str, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public b setSingleChoiceItems(@Nullable ListAdapter listAdapter, int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(listAdapter, i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public b setSingleChoiceItems(@Nullable CharSequence[] charSequenceArr, int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setSingleChoiceItems(charSequenceArr, i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public b setTitle(@StringRes int i10) {
        return (b) super.setTitle(i10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public b setTitle(@Nullable CharSequence charSequence) {
        return (b) super.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public b setView(int i10) {
        return (b) super.setView(i10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public b setView(@Nullable View view) {
        return (b) super.setView(view);
    }

    @Nullable
    public Drawable b() {
        return this.f97556a;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    public AlertDialog create() {
        AlertDialog alertDialogCreate = super.create();
        Window window = alertDialogCreate.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.f97556a;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).o0(ViewCompat.getElevation(decorView));
        }
        window.setBackgroundDrawable(c.b(this.f97556a, this.f97557b));
        decorView.setOnTouchListener(new a(alertDialogCreate, this.f97557b));
        return alertDialogCreate;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b setAdapter(@Nullable ListAdapter listAdapter, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setAdapter(listAdapter, onClickListener);
    }

    @NonNull
    @CanIgnoreReturnValue
    public b f(@Nullable Drawable drawable) {
        this.f97556a = drawable;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public b g(@Px int i10) {
        this.f97557b.bottom = i10;
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public b h(@Px int i10) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.f97557b.left = i10;
        } else {
            this.f97557b.right = i10;
        }
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public b i(@Px int i10) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.f97557b.right = i10;
        } else {
            this.f97557b.left = i10;
        }
        return this;
    }

    @NonNull
    @CanIgnoreReturnValue
    public b j(@Px int i10) {
        this.f97557b.top = i10;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public b setCancelable(boolean z10) {
        return (b) super.setCancelable(z10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b setCursor(@Nullable Cursor cursor, @Nullable DialogInterface.OnClickListener onClickListener, @NonNull String str) {
        return (b) super.setCursor(cursor, onClickListener, str);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public b setCustomTitle(@Nullable View view) {
        return (b) super.setCustomTitle(view);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public b setIcon(@DrawableRes int i10) {
        return (b) super.setIcon(i10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public b setIcon(@Nullable Drawable drawable) {
        return (b) super.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public b setIconAttribute(@AttrRes int i10) {
        return (b) super.setIconAttribute(i10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public b setItems(@ArrayRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setItems(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public b setItems(@Nullable CharSequence[] charSequenceArr, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setItems(charSequenceArr, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public b setMessage(@StringRes int i10) {
        return (b) super.setMessage(i10);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public b setMessage(@Nullable CharSequence charSequence) {
        return (b) super.setMessage(charSequence);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public b setMultiChoiceItems(@ArrayRes int i10, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(i10, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public b setMultiChoiceItems(@Nullable Cursor cursor, @NonNull String str, @NonNull String str2, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(cursor, str, str2, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public b setMultiChoiceItems(@Nullable CharSequence[] charSequenceArr, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.setMultiChoiceItems(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public b setNegativeButton(@StringRes int i10, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNegativeButton(i10, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public b setNegativeButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (b) super.setNegativeButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    @CanIgnoreReturnValue
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public b setNegativeButtonIcon(@Nullable Drawable drawable) {
        return (b) super.setNegativeButtonIcon(drawable);
    }

    public b(@NonNull Context context, int i10) {
        super(a(context), d(context, i10));
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        int i11 = f97553c;
        int i12 = f97554d;
        this.f97557b = c.a(context2, i11, i12);
        int iC = s.c(context2, R.attr.colorSurface, getClass().getCanonicalName());
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(null, R.styleable.MaterialAlertDialog, i11, i12);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.MaterialAlertDialog_backgroundTint, iC);
        typedArrayObtainStyledAttributes.recycle();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, i11, i12);
        materialShapeDrawable.a0(context2);
        materialShapeDrawable.p0(ColorStateList.valueOf(color));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                materialShapeDrawable.l0(dimension);
            }
        }
        this.f97556a = materialShapeDrawable;
    }
}
