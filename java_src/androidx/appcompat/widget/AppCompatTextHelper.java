package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    private boolean mAsyncFontPending;

    @NonNull
    private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableStartTint;
    private TintInfo mDrawableTint;
    private TintInfo mDrawableTopTint;
    private Typeface mFontTypeface;

    @NonNull
    private final TextView mView;
    private int mStyle = 0;
    private int mFontWeight = -1;

    @RequiresApi(17)
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static Drawable[] getCompoundDrawablesRelative(TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        @DoNotInline
        static void setCompoundDrawablesRelativeWithIntrinsicBounds(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        @DoNotInline
        static void setTextLocale(TextView textView, Locale locale) {
            textView.setTextLocale(locale);
        }
    }

    @RequiresApi(21)
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    @RequiresApi(24)
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static LocaleList forLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }

        @DoNotInline
        static void setTextLocales(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    @RequiresApi(26)
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static int getAutoSizeStepGranularity(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i10, int i11, int i12, int i13) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        @DoNotInline
        static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i10) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        @DoNotInline
        static boolean setFontVariationSettings(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    @RequiresApi(28)
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static Typeface create(Typeface typeface, int i10, boolean z10) {
            return Typeface.create(typeface, i10, z10);
        }
    }

    AppCompatTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
    }

    private static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i10) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i10);
        if (tintList == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.mHasTintList = true;
        tintInfo.mTintList = tintList;
        return tintInfo;
    }

    private void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = Api17Impl.getCompoundDrawablesRelative(this.mView);
            TextView textView = this.mView;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            Api17Impl.setCompoundDrawablesRelativeWithIntrinsicBounds(textView, drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = Api17Impl.getCompoundDrawablesRelative(this.mView);
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            TextView textView2 = this.mView;
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            Drawable drawable8 = compoundDrawablesRelative2[2];
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            Api17Impl.setCompoundDrawablesRelativeWithIntrinsicBounds(textView2, drawable7, drawable2, drawable8, drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
        TextView textView3 = this.mView;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void setCompoundTints() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void setTextSizeInternal(int i10, float f10) {
        this.mAutoSizeTextHelper.setTextSizeInternal(i10, f10);
    }

    private void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.mStyle = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int i11 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = i11;
            if (i11 != -1) {
                this.mStyle = (this.mStyle & 2) | 0;
            }
        }
        int i12 = R.styleable.TextAppearance_android_fontFamily;
        if (!tintTypedArray.hasValue(i12) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            int i13 = R.styleable.TextAppearance_android_typeface;
            if (tintTypedArray.hasValue(i13)) {
                this.mAsyncFontPending = false;
                int i14 = tintTypedArray.getInt(i13, 1);
                if (i14 == 1) {
                    this.mFontTypeface = Typeface.SANS_SERIF;
                    return;
                } else if (i14 == 2) {
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                } else {
                    if (i14 != 3) {
                        return;
                    }
                    this.mFontTypeface = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.mFontTypeface = null;
        int i15 = R.styleable.TextAppearance_fontFamily;
        if (tintTypedArray.hasValue(i15)) {
            i12 = i15;
        }
        final int i16 = this.mFontWeight;
        final int i17 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i12, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* JADX INFO: renamed from: onFontRetrievalFailed */
                    public void lambda$callbackFailAsync$1(int i18) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* JADX INFO: renamed from: onFontRetrieved */
                    public void lambda$callbackSuccessAsync$0(@NonNull Typeface typeface) {
                        int i18;
                        if (Build.VERSION.SDK_INT >= 28 && (i18 = i16) != -1) {
                            typeface = Api28Impl.create(typeface, i18, (i17 & 2) != 0);
                        }
                        AppCompatTextHelper.this.onAsyncTypefaceReceived(weakReference, typeface);
                    }
                });
                if (font != null) {
                    if (i10 < 28 || this.mFontWeight == -1) {
                        this.mFontTypeface = font;
                    } else {
                        this.mFontTypeface = Api28Impl.create(Typeface.create(font, 0), this.mFontWeight, (this.mStyle & 2) != 0);
                    }
                }
                this.mAsyncFontPending = this.mFontTypeface == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface != null || (string = tintTypedArray.getString(i12)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.mFontWeight == -1) {
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        } else {
            this.mFontTypeface = Api28Impl.create(Typeface.create(string, 0), this.mFontWeight, (this.mStyle & 2) != 0);
        }
    }

    void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint == null && this.mDrawableEndTint == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = Api17Impl.getCompoundDrawablesRelative(this.mView);
        applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
        applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    int getAutoSizeMaxTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    int getAutoSizeMinTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    int getAutoSizeStepGranularity() {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    @Nullable
    ColorStateList getCompoundDrawableTintList() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    @Nullable
    PorterDuff.Mode getCompoundDrawableTintMode() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    boolean isAutoSizeEnabled() {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:45:0x0100  */
    /* JADX WARN: Code duplicated, block: B:46:0x0105  */
    /* JADX WARN: Code duplicated, block: B:48:0x0108  */
    /* JADX WARN: Code duplicated, block: B:50:0x0110  */
    /* JADX WARN: Code duplicated, block: B:51:0x0115  */
    /* JADX WARN: Code duplicated, block: B:59:0x013c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0183  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a2  */
    @SuppressLint({"NewApi"})
    void loadFromAttributes(@Nullable AttributeSet attributeSet, int i10) {
        String string;
        ColorStateList colorStateList;
        String string2;
        boolean z10;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        boolean z11;
        int i11;
        String string3;
        AppCompatDrawableManager appCompatDrawableManager;
        int i12;
        int i13;
        int i14;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager2 = AppCompatDrawableManager.get();
        int[] iArr = R.styleable.AppCompatTextHelper;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i10, 0);
        TextView textView = this.mView;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i10, 0);
        int resourceId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i15 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i15)) {
            this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i15, 0));
        }
        int i16 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i16)) {
            this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i16, 0));
        }
        int i17 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i17)) {
            this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i17, 0));
        }
        int i18 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i18)) {
            this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i18, 0));
        }
        int i19 = Build.VERSION.SDK_INT;
        int i20 = R.styleable.AppCompatTextHelper_android_drawableStart;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i20)) {
            this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i20, 0));
        }
        int i21 = R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i21)) {
            this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager2, tintTypedArrayObtainStyledAttributes.getResourceId(i21, 0));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        boolean z12 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId != -1) {
            TintTypedArray tintTypedArrayObtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, resourceId, R.styleable.TextAppearance);
            if (z12) {
                z10 = false;
                z11 = false;
            } else {
                int i22 = R.styleable.TextAppearance_textAllCaps;
                if (tintTypedArrayObtainStyledAttributes2.hasValue(i22)) {
                    z10 = tintTypedArrayObtainStyledAttributes2.getBoolean(i22, false);
                    z11 = true;
                } else {
                    z10 = false;
                    z11 = false;
                }
            }
            updateTypefaceAndStyle(context, tintTypedArrayObtainStyledAttributes2);
            if (i19 < 23) {
                int i23 = R.styleable.TextAppearance_android_textColor;
                colorStateList = tintTypedArrayObtainStyledAttributes2.hasValue(i23) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(i23) : null;
                int i24 = R.styleable.TextAppearance_android_textColorHint;
                colorStateList2 = tintTypedArrayObtainStyledAttributes2.hasValue(i24) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(i24) : null;
                int i25 = R.styleable.TextAppearance_android_textColorLink;
                colorStateList3 = tintTypedArrayObtainStyledAttributes2.hasValue(i25) ? tintTypedArrayObtainStyledAttributes2.getColorStateList(i25) : null;
                i13 = R.styleable.TextAppearance_textLocale;
                if (tintTypedArrayObtainStyledAttributes2.hasValue(i13)) {
                    string2 = tintTypedArrayObtainStyledAttributes2.getString(i13);
                } else {
                    string2 = null;
                }
                if (i19 >= 26) {
                    i14 = R.styleable.TextAppearance_fontVariationSettings;
                    if (tintTypedArrayObtainStyledAttributes2.hasValue(i14)) {
                        string = tintTypedArrayObtainStyledAttributes2.getString(i14);
                    } else {
                        string = null;
                    }
                } else {
                    string = null;
                }
                tintTypedArrayObtainStyledAttributes2.recycle();
            } else {
                colorStateList = null;
                colorStateList2 = null;
            }
            i13 = R.styleable.TextAppearance_textLocale;
            if (tintTypedArrayObtainStyledAttributes2.hasValue(i13)) {
                string2 = tintTypedArrayObtainStyledAttributes2.getString(i13);
            } else {
                string2 = null;
            }
            if (i19 >= 26) {
                i14 = R.styleable.TextAppearance_fontVariationSettings;
                if (tintTypedArrayObtainStyledAttributes2.hasValue(i14)) {
                    string = tintTypedArrayObtainStyledAttributes2.getString(i14);
                } else {
                    string = null;
                }
            } else {
                string = null;
            }
            tintTypedArrayObtainStyledAttributes2.recycle();
        } else {
            string = null;
            colorStateList = null;
            string2 = null;
            z10 = false;
            colorStateList2 = null;
            colorStateList3 = null;
            z11 = false;
        }
        TintTypedArray tintTypedArrayObtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i10, 0);
        if (z12) {
            i11 = 23;
        } else {
            int i26 = R.styleable.TextAppearance_textAllCaps;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i26)) {
                z10 = tintTypedArrayObtainStyledAttributes3.getBoolean(i26, false);
                i11 = 23;
                z11 = true;
            } else {
                i11 = 23;
            }
        }
        if (i19 < i11) {
            int i27 = R.styleable.TextAppearance_android_textColor;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i27)) {
                colorStateList = tintTypedArrayObtainStyledAttributes3.getColorStateList(i27);
            }
            int i28 = R.styleable.TextAppearance_android_textColorHint;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i28)) {
                colorStateList2 = tintTypedArrayObtainStyledAttributes3.getColorStateList(i28);
            }
            int i29 = R.styleable.TextAppearance_android_textColorLink;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i29)) {
                colorStateList3 = tintTypedArrayObtainStyledAttributes3.getColorStateList(i29);
            }
        }
        int i30 = R.styleable.TextAppearance_textLocale;
        if (tintTypedArrayObtainStyledAttributes3.hasValue(i30)) {
            string2 = tintTypedArrayObtainStyledAttributes3.getString(i30);
        }
        if (i19 >= 26) {
            int i31 = R.styleable.TextAppearance_fontVariationSettings;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i31)) {
                string3 = tintTypedArrayObtainStyledAttributes3.getString(i31);
            } else {
                string3 = string;
            }
        } else {
            string3 = string;
        }
        if (i19 >= 28) {
            int i32 = R.styleable.TextAppearance_android_textSize;
            if (tintTypedArrayObtainStyledAttributes3.hasValue(i32)) {
                appCompatDrawableManager = appCompatDrawableManager2;
                if (tintTypedArrayObtainStyledAttributes3.getDimensionPixelSize(i32, -1) == 0) {
                    this.mView.setTextSize(0, 0.0f);
                }
            } else {
                appCompatDrawableManager = appCompatDrawableManager2;
            }
        } else {
            appCompatDrawableManager = appCompatDrawableManager2;
        }
        updateTypefaceAndStyle(context, tintTypedArrayObtainStyledAttributes3);
        tintTypedArrayObtainStyledAttributes3.recycle();
        if (colorStateList != null) {
            this.mView.setTextColor(colorStateList);
        }
        if (colorStateList2 != null) {
            this.mView.setHintTextColor(colorStateList2);
        }
        if (colorStateList3 != null) {
            this.mView.setLinkTextColor(colorStateList3);
        }
        if (!z12 && z11) {
            setAllCaps(z10);
        }
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            if (this.mFontWeight == -1) {
                this.mView.setTypeface(typeface, this.mStyle);
            } else {
                this.mView.setTypeface(typeface);
            }
        }
        if (string3 != null) {
            Api26Impl.setFontVariationSettings(this.mView, string3);
        }
        if (string2 != null) {
            if (i19 >= 24) {
                Api24Impl.setTextLocales(this.mView, Api24Impl.forLanguageTags(string2));
            } else {
                Api17Impl.setTextLocale(this.mView, Api21Impl.forLanguageTag(string2.split(",")[0]));
            }
        }
        this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i10);
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.getAutoSizeTextType() != 0) {
            int[] autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
            if (autoSizeTextAvailableSizes.length > 0) {
                if (Api26Impl.getAutoSizeStepGranularity(this.mView) != -1.0f) {
                    Api26Impl.setAutoSizeTextTypeUniformWithConfiguration(this.mView, this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
                } else {
                    Api26Impl.setAutoSizeTextTypeUniformWithPresetSizes(this.mView, autoSizeTextAvailableSizes, 0);
                }
            }
        }
        TintTypedArray tintTypedArrayObtainStyledAttributes4 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
        int resourceId2 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        AppCompatDrawableManager appCompatDrawableManager3 = appCompatDrawableManager;
        Drawable drawable = resourceId2 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId2) : null;
        int resourceId3 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawable2 = resourceId3 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId3) : null;
        int resourceId4 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawable3 = resourceId4 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId4) : null;
        int resourceId5 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawable4 = resourceId5 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId5) : null;
        int resourceId6 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawable5 = resourceId6 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId6) : null;
        int resourceId7 = tintTypedArrayObtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, resourceId7 != -1 ? appCompatDrawableManager3.getDrawable(context, resourceId7) : null);
        int i33 = R.styleable.AppCompatTextView_drawableTint;
        if (tintTypedArrayObtainStyledAttributes4.hasValue(i33)) {
            TextViewCompat.setCompoundDrawableTintList(this.mView, tintTypedArrayObtainStyledAttributes4.getColorStateList(i33));
        }
        int i34 = R.styleable.AppCompatTextView_drawableTintMode;
        if (tintTypedArrayObtainStyledAttributes4.hasValue(i34)) {
            i12 = -1;
            TextViewCompat.setCompoundDrawableTintMode(this.mView, DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes4.getInt(i34, -1), null));
        } else {
            i12 = -1;
        }
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i12);
        int dimensionPixelSize2 = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i12);
        int dimensionPixelSize3 = tintTypedArrayObtainStyledAttributes4.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, i12);
        tintTypedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != i12) {
            TextViewCompat.setFirstBaselineToTopHeight(this.mView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i12) {
            TextViewCompat.setLastBaselineToBottomHeight(this.mView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != i12) {
            TextViewCompat.setLineHeight(this.mView, dimensionPixelSize3);
        }
    }

    void onAsyncTypefaceReceived(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (!ViewCompat.isAttachedToWindow(textView)) {
                    textView.setTypeface(typeface, this.mStyle);
                } else {
                    final int i10 = this.mStyle;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i10);
                        }
                    });
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
            return;
        }
        autoSizeText();
    }

    void onSetCompoundDrawables() {
        applyCompoundDrawablesTints();
    }

    void onSetTextAppearance(Context context, int i10) {
        String string;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i10, R.styleable.TextAppearance);
        int i11 = R.styleable.TextAppearance_textAllCaps;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i11)) {
            setAllCaps(tintTypedArrayObtainStyledAttributes.getBoolean(i11, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 23) {
            int i13 = R.styleable.TextAppearance_android_textColor;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i13) && (colorStateList3 = tintTypedArrayObtainStyledAttributes.getColorStateList(i13)) != null) {
                this.mView.setTextColor(colorStateList3);
            }
            int i14 = R.styleable.TextAppearance_android_textColorLink;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i14) && (colorStateList2 = tintTypedArrayObtainStyledAttributes.getColorStateList(i14)) != null) {
                this.mView.setLinkTextColor(colorStateList2);
            }
            int i15 = R.styleable.TextAppearance_android_textColorHint;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i15) && (colorStateList = tintTypedArrayObtainStyledAttributes.getColorStateList(i15)) != null) {
                this.mView.setHintTextColor(colorStateList);
            }
        }
        int i16 = R.styleable.TextAppearance_android_textSize;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i16) && tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(i16, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, tintTypedArrayObtainStyledAttributes);
        if (i12 >= 26) {
            int i17 = R.styleable.TextAppearance_fontVariationSettings;
            if (tintTypedArrayObtainStyledAttributes.hasValue(i17) && (string = tintTypedArrayObtainStyledAttributes.getString(i17)) != null) {
                Api26Impl.setFontVariationSettings(this.mView, string);
            }
        }
        tintTypedArrayObtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    void populateSurroundingTextIfNeeded(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    void setAllCaps(boolean z10) {
        this.mView.setAllCaps(z10);
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
    }

    void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i10) throws IllegalArgumentException {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
    }

    void setAutoSizeTextTypeWithDefaults(int i10) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(i10);
    }

    void setCompoundDrawableTintList(@Nullable ColorStateList colorStateList) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        setCompoundTints();
    }

    void setCompoundDrawableTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        setCompoundTints();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    void setTextSize(int i10, float f10) {
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE || isAutoSizeEnabled()) {
            return;
        }
        setTextSizeInternal(i10, f10);
    }
}
