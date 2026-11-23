package com.google.android.material.drawable;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.core.graphics.drawable.DrawableCompat;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f30605a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f30606b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f30607c = -1;

    @RequiresApi(21)
    private static class a {
        private a() {
        }

        @DoNotInline
        static void a(@NonNull Outline outline, @NonNull Path path) {
            outline.setConvexPath(path);
        }
    }

    @RequiresApi(30)
    private static class b {
        private b() {
        }

        @DoNotInline
        static void a(@NonNull Outline outline, @NonNull Path path) {
            outline.setPath(path);
        }
    }

    private g() {
    }

    @Nullable
    public static Drawable a(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        return b(drawable, drawable2, -1, -1);
    }

    @Nullable
    public static Drawable b(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Px int i10, @Px int i11) {
        Drawable iVar = drawable2;
        int i12 = i10;
        int intrinsicHeight = i11;
        if (drawable == null) {
            return iVar;
        }
        if (iVar == null) {
            return drawable;
        }
        boolean z10 = (i12 == -1 || intrinsicHeight == -1) ? false : true;
        if (i12 == -1) {
            i12 = i(drawable, drawable2);
        }
        if (intrinsicHeight == -1) {
            intrinsicHeight = h(drawable, drawable2);
        }
        if (i12 > drawable.getIntrinsicWidth() || intrinsicHeight > drawable.getIntrinsicHeight()) {
            float f10 = i12 / intrinsicHeight;
            if (f10 >= drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                intrinsicHeight = (int) (intrinsicWidth / f10);
                i12 = intrinsicWidth;
            } else {
                intrinsicHeight = drawable.getIntrinsicHeight();
                i12 = (int) (f10 * intrinsicHeight);
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, iVar});
            layerDrawable.setLayerSize(1, i12, intrinsicHeight);
            layerDrawable.setLayerGravity(1, 17);
            return layerDrawable;
        }
        if (z10) {
            iVar = new i(iVar, i12, intrinsicHeight);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{drawable, iVar});
        int iMax = Math.max((drawable.getIntrinsicWidth() - i12) / 2, 0);
        int iMax2 = Math.max((drawable.getIntrinsicHeight() - intrinsicHeight) / 2, 0);
        layerDrawable2.setLayerInset(1, iMax, iMax2, iMax, iMax2);
        return layerDrawable2;
    }

    @Nullable
    public static Drawable c(@Nullable Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode) {
        return e(drawable, colorStateList, mode, false);
    }

    @Nullable
    public static Drawable d(@Nullable Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode) {
        return e(drawable, colorStateList, mode, Build.VERSION.SDK_INT < 23);
    }

    @Nullable
    private static Drawable e(@Nullable Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, boolean z10) {
        if (drawable == null) {
            return null;
        }
        if (colorStateList != null) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (mode != null) {
                DrawableCompat.setTintMode(drawable, mode);
            }
        } else if (z10) {
            drawable.mutate();
        }
        return drawable;
    }

    @NonNull
    public static int[] f(@NonNull int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int i11 = iArr[i10];
            if (i11 == 16842912) {
                return iArr;
            }
            if (i11 == 0) {
                int[] iArr2 = (int[]) iArr.clone();
                iArr2[i10] = 16842912;
                return iArr2;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArr.length] = 16842912;
        return iArrCopyOf;
    }

    @Nullable
    public static ColorStateList g(@Nullable Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !com.google.android.material.drawable.a.a(drawable)) {
            return null;
        }
        return com.google.android.material.drawable.b.a(drawable).getColorStateList();
    }

    private static int h(@NonNull Drawable drawable, @NonNull Drawable drawable2) {
        int intrinsicHeight = drawable2.getIntrinsicHeight();
        return intrinsicHeight != -1 ? intrinsicHeight : drawable.getIntrinsicHeight();
    }

    private static int i(@NonNull Drawable drawable, @NonNull Drawable drawable2) {
        int intrinsicWidth = drawable2.getIntrinsicWidth();
        return intrinsicWidth != -1 ? intrinsicWidth : drawable.getIntrinsicWidth();
    }

    @NonNull
    public static int[] j(@NonNull int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 != 16842912) {
                iArr2[i10] = i11;
                i10++;
            }
        }
        return iArr2;
    }

    @NonNull
    public static AttributeSet k(@NonNull Context context, @XmlRes int i10, @NonNull CharSequence charSequence) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i10);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (TextUtils.equals(xml.getName(), charSequence)) {
                return Xml.asAttributeSet(xml);
            }
            throw new XmlPullParserException("Must have a <" + ((Object) charSequence) + "> start tag");
        } catch (IOException | XmlPullParserException e10) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i10));
            notFoundException.initCause(e10);
            throw notFoundException;
        }
    }

    public static void l(@NonNull Outline outline, @NonNull Path path) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            b.a(outline, path);
            return;
        }
        if (i10 >= 29) {
            try {
                a.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            a.a(outline, path);
        }
    }

    @TargetApi(21)
    public static void m(@Nullable RippleDrawable rippleDrawable, int i10) {
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i10);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i10));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e10);
        }
    }

    public static void n(@NonNull Drawable drawable, @ColorInt int i10) {
        boolean z10 = i10 != 0;
        if (Build.VERSION.SDK_INT == 21) {
            if (z10) {
                drawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
                return;
            } else {
                drawable.setColorFilter(null);
                return;
            }
        }
        if (z10) {
            DrawableCompat.setTint(drawable, i10);
        } else {
            DrawableCompat.setTintList(drawable, null);
        }
    }

    @Nullable
    public static PorterDuffColorFilter o(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
