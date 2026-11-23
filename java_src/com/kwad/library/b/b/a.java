package com.kwad.library.b.b;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends c {
    private Resources aDN;

    public a(Resources resources, Resources resources2) {
        super(resources2);
        this.aDN = resources;
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getAnimation(int i10) {
        try {
            return super.getAnimation(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getAnimation(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final boolean getBoolean(int i10) {
        try {
            return super.getBoolean(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getBoolean(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getColor(int i10) {
        try {
            return super.getColor(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColor(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final ColorStateList getColorStateList(int i10) {
        try {
            return super.getColorStateList(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColorStateList(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final float getDimension(int i10) {
        try {
            return super.getDimension(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimension(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getDimensionPixelOffset(int i10) {
        try {
            return super.getDimensionPixelOffset(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimensionPixelOffset(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getDimensionPixelSize(int i10) {
        try {
            return super.getDimensionPixelSize(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimensionPixelSize(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Drawable getDrawable(int i10) {
        try {
            return super.getDrawable(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawable(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Drawable getDrawableForDensity(int i10, int i11) {
        try {
            return super.getDrawableForDensity(i10, i11);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawableForDensity(i10, i11);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(26)
    public final Typeface getFont(int i10) {
        try {
            return super.getFont(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getFont(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final float getFraction(int i10, int i11, int i12) {
        try {
            return super.getFraction(i10, i11, i12);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getFraction(i10, i11, i12);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int[] getIntArray(int i10) {
        try {
            return super.getIntArray(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getIntArray(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getInteger(int i10) {
        try {
            return super.getInteger(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getInteger(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getLayout(int i10) {
        try {
            return super.getLayout(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getLayout(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Movie getMovie(int i10) {
        try {
            return super.getMovie(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getMovie(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getQuantityString(int i10, int i11) {
        try {
            return super.getQuantityString(i10, i11);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityString(i10, i11);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getQuantityText(int i10, int i11) {
        try {
            return super.getQuantityText(i10, i11);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityText(i10, i11);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getResourceName(int i10) {
        try {
            return super.getResourceName(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getResourceName(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getString(int i10) {
        try {
            return super.getString(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getString(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String[] getStringArray(int i10) {
        try {
            return super.getStringArray(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getStringArray(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getText(int i10) {
        try {
            return super.getText(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getText(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence[] getTextArray(int i10) {
        try {
            return super.getTextArray(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getTextArray(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValue(int i10, TypedValue typedValue, boolean z10) {
        try {
            super.getValue(i10, typedValue, z10);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValue(i10, typedValue, z10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValueForDensity(int i10, int i11, TypedValue typedValue, boolean z10) {
        try {
            super.getValueForDensity(i10, i11, typedValue, z10);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValueForDensity(i10, i11, typedValue, z10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getXml(int i10) {
        try {
            return super.getXml(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getXml(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final TypedArray obtainTypedArray(int i10) {
        try {
            return super.obtainTypedArray(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.obtainTypedArray(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final InputStream openRawResource(int i10) {
        try {
            return super.openRawResource(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResource(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final AssetFileDescriptor openRawResourceFd(int i10) {
        try {
            return super.openRawResourceFd(i10);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResourceFd(i10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(23)
    public final int getColor(int i10, Resources.Theme theme) {
        try {
            return super.getColor(i10, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColor(i10, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(23)
    public final ColorStateList getColorStateList(int i10, Resources.Theme theme) {
        try {
            return super.getColorStateList(i10, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColorStateList(i10, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(21)
    public final Drawable getDrawable(int i10, Resources.Theme theme) {
        try {
            return super.getDrawable(i10, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawable(i10, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(21)
    public final Drawable getDrawableForDensity(int i10, int i11, Resources.Theme theme) {
        try {
            return super.getDrawableForDensity(i10, i11, theme);
        } catch (Exception unused) {
            return this.aDN.getDrawableForDensity(i10, i11, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getQuantityString(int i10, int i11, Object... objArr) {
        try {
            return super.getQuantityString(i10, i11, objArr);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityString(i10, i11, objArr);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getString(int i10, Object... objArr) {
        try {
            return super.getString(i10, objArr);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getString(i10, objArr);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getText(int i10, CharSequence charSequence) {
        try {
            return super.getText(i10, charSequence);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getText(i10, charSequence);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValue(String str, TypedValue typedValue, boolean z10) {
        try {
            super.getValue(str, typedValue, z10);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValue(str, typedValue, z10);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final InputStream openRawResource(int i10, TypedValue typedValue) {
        try {
            return super.openRawResource(i10, typedValue);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResource(i10, typedValue);
        }
    }
}
