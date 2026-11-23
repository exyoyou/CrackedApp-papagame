package com.facebook.drawee.generic;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.drawee.R;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.ReturnsOwnership;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    @Nullable
    private static Drawable a(Context context, TypedArray gdhAttrs, int attrId) {
        int resourceId = gdhAttrs.getResourceId(attrId, 0);
        if (resourceId == 0) {
            return null;
        }
        return context.getResources().getDrawable(resourceId);
    }

    @ReturnsOwnership
    private static RoundingParams b(b builder) {
        if (builder.r() == null) {
            builder.Y(new RoundingParams());
        }
        return builder.r();
    }

    @Nullable
    private static s.c c(TypedArray gdhAttrs, int attrId) {
        switch (gdhAttrs.getInt(attrId, -2)) {
            case -1:
                return null;
            case 0:
                return s.c.f27284a;
            case 1:
                return s.c.f27287d;
            case 2:
                return s.c.f27288e;
            case 3:
                return s.c.f27289f;
            case 4:
                return s.c.f27290g;
            case 5:
                return s.c.f27291h;
            case 6:
                return s.c.f27292i;
            case 7:
                return s.c.f27293j;
            case 8:
                return s.c.f27294k;
            default:
                throw new RuntimeException("XML attribute not specified!");
        }
    }

    public static b d(Context context, @Nullable AttributeSet attrs) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchyBuilder#inflateBuilder");
        }
        b bVarF = f(new b(context.getResources()), context, attrs);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return bVarF;
    }

    public static a e(Context context, @Nullable AttributeSet attrs) {
        return d(context, attrs).a();
    }

    /* JADX WARN: Code duplicated, block: B:131:0x01e0 A[PHI: r1 r2 r3
      0x01e0: PHI (r1v18 boolean) = (r1v14 boolean), (r1v20 boolean) binds: [B:130:0x01de, B:115:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x01e0: PHI (r2v13 boolean) = (r2v10 boolean), (r2v15 boolean) binds: [B:130:0x01de, B:115:0x01c4] A[DONT_GENERATE, DONT_INLINE]
      0x01e0: PHI (r3v9 boolean) = (r3v6 boolean), (r3v11 boolean) binds: [B:130:0x01de, B:115:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    public static b f(b builder, Context context, @Nullable AttributeSet attrs) throws Throwable {
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Context context2 = context;
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attrs, R.styleable.GenericDraweeHierarchy);
            try {
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                int integer = 0;
                int i12 = 0;
                boolean z15 = true;
                boolean z16 = true;
                boolean z17 = true;
                boolean z18 = true;
                boolean z19 = true;
                boolean z20 = true;
                boolean z21 = true;
                boolean z22 = true;
                int dimensionPixelSize = 0;
                while (i12 < indexCount) {
                    try {
                        int index = typedArrayObtainStyledAttributes.getIndex(i12);
                        if (index == R.styleable.GenericDraweeHierarchy_actualImageScaleType) {
                            builder.x(c(typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImage) {
                            builder.K(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_pressedStateOverlayImage) {
                            builder.N(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImage) {
                            builder.Q(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_fadeDuration) {
                            builder.A(typedArrayObtainStyledAttributes.getInt(index, 0));
                        } else if (index == R.styleable.GenericDraweeHierarchy_viewAspectRatio) {
                            builder.z(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                        } else if (index == R.styleable.GenericDraweeHierarchy_placeholderImageScaleType) {
                            builder.M(c(typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_retryImage) {
                            builder.V(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_retryImageScaleType) {
                            builder.X(c(typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_failureImage) {
                            builder.D(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_failureImageScaleType) {
                            builder.F(c(typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_progressBarImageScaleType) {
                            builder.S(c(typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_progressBarAutoRotateInterval) {
                            integer = typedArrayObtainStyledAttributes.getInteger(index, integer);
                        } else if (index == R.styleable.GenericDraweeHierarchy_backgroundImage) {
                            builder.y(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_overlayImage) {
                            builder.G(a(context2, typedArrayObtainStyledAttributes, index));
                        } else if (index == R.styleable.GenericDraweeHierarchy_roundAsCircle) {
                            b(builder).x(typedArrayObtainStyledAttributes.getBoolean(index, false));
                        } else if (index == R.styleable.GenericDraweeHierarchy_roundedCornerRadius) {
                            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize);
                        } else {
                            int i13 = dimensionPixelSize;
                            if (index == R.styleable.GenericDraweeHierarchy_roundTopLeft) {
                                z15 = typedArrayObtainStyledAttributes.getBoolean(index, z15);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundTopRight) {
                                z17 = typedArrayObtainStyledAttributes.getBoolean(index, z17);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomLeft) {
                                z21 = typedArrayObtainStyledAttributes.getBoolean(index, z21);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomRight) {
                                z19 = typedArrayObtainStyledAttributes.getBoolean(index, z19);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundTopStart) {
                                z16 = typedArrayObtainStyledAttributes.getBoolean(index, z16);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundTopEnd) {
                                z18 = typedArrayObtainStyledAttributes.getBoolean(index, z18);
                            } else if (index == R.styleable.GenericDraweeHierarchy_roundBottomStart) {
                                z22 = typedArrayObtainStyledAttributes.getBoolean(index, z22);
                            } else {
                                if (index == R.styleable.GenericDraweeHierarchy_roundBottomEnd) {
                                    z20 = typedArrayObtainStyledAttributes.getBoolean(index, z20);
                                } else if (index == R.styleable.GenericDraweeHierarchy_roundWithOverlayColor) {
                                    dimensionPixelSize = i13;
                                    b(builder).u(typedArrayObtainStyledAttributes.getColor(index, 0));
                                } else {
                                    dimensionPixelSize = i13;
                                    if (index == R.styleable.GenericDraweeHierarchy_roundingBorderWidth) {
                                        b(builder).q(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderColor) {
                                        b(builder).p(typedArrayObtainStyledAttributes.getColor(index, 0));
                                    } else if (index == R.styleable.GenericDraweeHierarchy_roundingBorderPadding) {
                                        b(builder).v(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                                    }
                                }
                                i12++;
                                context2 = context;
                            }
                            dimensionPixelSize = i13;
                        }
                        i12++;
                        context2 = context;
                    } catch (Throwable th) {
                        th = th;
                        typedArrayObtainStyledAttributes.recycle();
                        context.getResources().getConfiguration().getLayoutDirection();
                        throw th;
                    }
                }
                boolean z23 = false;
                typedArrayObtainStyledAttributes.recycle();
                if (context.getResources().getConfiguration().getLayoutDirection() == 1) {
                    z14 = z15 && z18;
                    z10 = z17 && z16;
                    z11 = z19 && z22;
                    if (z21 && z20) {
                        z23 = true;
                    }
                } else {
                    z14 = z15 && z16;
                    z10 = z17 && z18;
                    z11 = z19 && z20;
                    if (z21 && z22) {
                        z23 = true;
                    }
                }
                z13 = z23;
                i10 = integer;
                z12 = z14;
                i11 = dimensionPixelSize;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            z10 = true;
            i10 = 0;
            i11 = 0;
            z11 = true;
            z12 = true;
            z13 = true;
        }
        if (builder.n() != null && i10 > 0) {
            builder.Q(new com.facebook.drawee.drawable.b(builder.n(), i10));
        }
        if (i11 > 0) {
            b(builder).r(z12 ? i11 : 0.0f, z10 ? i11 : 0.0f, z11 ? i11 : 0.0f, z13 ? i11 : 0.0f);
        }
        return builder;
    }
}
