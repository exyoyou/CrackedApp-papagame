package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import com.facebook.common.internal.i;
import com.facebook.common.internal.l;
import com.facebook.common.util.f;
import com.facebook.drawee.R;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class SimpleDraweeView extends GenericDraweeView {
    private static l<? extends AbstractDraweeControllerBuilder> sDraweecontrollerbuildersupplier;
    private AbstractDraweeControllerBuilder mControllerBuilder;

    public SimpleDraweeView(Context context, com.facebook.drawee.generic.a hierarchy) {
        super(context, hierarchy);
        c(context, null);
    }

    private void c(Context context, @Nullable AttributeSet attrs) {
        int resourceId;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("SimpleDraweeView#init");
            }
            if (isInEditMode()) {
                getTopLevelDrawable().setVisible(true, false);
                getTopLevelDrawable().invalidateSelf();
            } else {
                i.j(sDraweecontrollerbuildersupplier, "SimpleDraweeView was not initialized!");
                this.mControllerBuilder = sDraweecontrollerbuildersupplier.get();
            }
            if (attrs != null) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.SimpleDraweeView);
                try {
                    int i10 = R.styleable.SimpleDraweeView_actualImageUri;
                    if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                        setImageURI(Uri.parse(typedArrayObtainStyledAttributes.getString(i10)), (Object) null);
                    } else {
                        int i11 = R.styleable.SimpleDraweeView_actualImageResource;
                        if (typedArrayObtainStyledAttributes.hasValue(i11) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i11, -1)) != -1) {
                            if (isInEditMode()) {
                                setImageResource(resourceId);
                            } else {
                                setActualImageResource(resourceId);
                            }
                        }
                    }
                    typedArrayObtainStyledAttributes.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } catch (Throwable th2) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th2;
        }
    }

    public static void initialize(l<? extends AbstractDraweeControllerBuilder> draweeControllerBuilderSupplier) {
        sDraweecontrollerbuildersupplier = draweeControllerBuilderSupplier;
    }

    public static void shutDown() {
        sDraweecontrollerbuildersupplier = null;
    }

    protected AbstractDraweeControllerBuilder getControllerBuilder() {
        return this.mControllerBuilder;
    }

    public void setActualImageResource(@DrawableRes int resourceId) {
        setActualImageResource(resourceId, null);
    }

    public void setImageRequest(ImageRequest request) {
        setController(this.mControllerBuilder.N(request).c(getController()).build());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int resId) {
        super.setImageResource(resId);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setActualImageResource(@DrawableRes int resourceId, @Nullable Object callerContext) {
        setImageURI(f.f(resourceId), callerContext);
    }

    public void setImageURI(@Nullable String uriString) {
        setImageURI(uriString, (Object) null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        c(context, null);
    }

    public void setImageURI(Uri uri, @Nullable Object callerContext) {
        setController(this.mControllerBuilder.a(callerContext).b(uri).c(getController()).build());
    }

    public SimpleDraweeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        c(context, attrs);
    }

    public SimpleDraweeView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        c(context, attrs);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        c(context, attrs);
    }

    public void setImageURI(@Nullable String uriString, @Nullable Object callerContext) {
        setImageURI(uriString != null ? Uri.parse(uriString) : null, callerContext);
    }
}
