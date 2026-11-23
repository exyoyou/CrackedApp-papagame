package com.kwad.sdk.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.kwad.sdk.R;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public class KSRatingBar extends LinearLayout {
    private boolean btj;
    private boolean btk;
    private int btl;
    private int btm;
    private a btn;
    private float bto;
    private float btp;
    private float btq;
    private Drawable btr;
    private Drawable bts;
    private Drawable btt;
    private boolean btu;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f75336y;

    public interface a {
    }

    public KSRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f75336y = 1;
        this.btu = false;
        setOrientation(0);
        setDividerDrawable(getResources().getDrawable(R.drawable.ksad_reward_apk_stars_divider));
        setShowDividers(2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ksad_KSRatingBar);
        this.btt = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starHalf);
        this.btr = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starEmpty);
        this.bts = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ksad_KSRatingBar_ksad_starFill);
        this.bto = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImageWidth, 60.0f);
        this.btp = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImageHeight, 120.0f);
        this.btq = typedArrayObtainStyledAttributes.getDimension(R.styleable.ksad_KSRatingBar_ksad_starImagePadding, 15.0f);
        this.btl = typedArrayObtainStyledAttributes.getInteger(R.styleable.ksad_KSRatingBar_ksad_totalStarCount, 5);
        this.btm = typedArrayObtainStyledAttributes.getInteger(R.styleable.ksad_KSRatingBar_ksad_starCount, 5);
        this.btj = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_KSRatingBar_ksad_clickable, true);
        this.btk = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ksad_KSRatingBar_ksad_halfstart, false);
        for (int i10 = 0; i10 < this.btl; i10++) {
            ImageView imageViewD = D(context, this.btu);
            imageViewD.setOnClickListener(new View.OnClickListener() { // from class: com.kwad.sdk.widget.KSRatingBar.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (KSRatingBar.this.btj) {
                        if (!KSRatingBar.this.btk) {
                            KSRatingBar kSRatingBar = KSRatingBar.this;
                            kSRatingBar.setStar(kSRatingBar.indexOfChild(view) + 1.0f);
                            if (KSRatingBar.this.btn != null) {
                                a unused = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                return;
                            }
                            return;
                        }
                        if (KSRatingBar.this.f75336y % 2 == 0) {
                            KSRatingBar kSRatingBar2 = KSRatingBar.this;
                            kSRatingBar2.setStar(kSRatingBar2.indexOfChild(view) + 1.0f);
                        } else {
                            KSRatingBar kSRatingBar3 = KSRatingBar.this;
                            kSRatingBar3.setStar(kSRatingBar3.indexOfChild(view) + 0.5f);
                        }
                        if (KSRatingBar.this.btn != null) {
                            if (KSRatingBar.this.f75336y % 2 == 0) {
                                a unused2 = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                KSRatingBar.e(KSRatingBar.this);
                            } else {
                                a unused3 = KSRatingBar.this.btn;
                                KSRatingBar.this.indexOfChild(view);
                                KSRatingBar.e(KSRatingBar.this);
                            }
                        }
                    }
                }
            });
            addView(imageViewD);
        }
        setStar(this.btm);
    }

    private ImageView D(Context context, boolean z10) {
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.bto), Math.round(this.btp)));
        imageView.setPadding(0, 0, Math.round(this.btq), 0);
        if (z10) {
            imageView.setImageDrawable(this.btr);
        } else {
            imageView.setImageDrawable(this.bts);
        }
        return imageView;
    }

    static /* synthetic */ int e(KSRatingBar kSRatingBar) {
        int i10 = kSRatingBar.f75336y;
        kSRatingBar.f75336y = i10 + 1;
        return i10;
    }

    public void setImagePadding(float f10) {
        this.btq = f10;
    }

    public void setOnRatingChangeListener(a aVar) {
        this.btn = aVar;
    }

    public void setStar(float f10) {
        int i10 = (int) f10;
        float fFloatValue = new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Integer.toString(i10))).floatValue();
        int i11 = this.btl;
        float f11 = i10 > i11 ? i11 : i10;
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        for (int i12 = 0; i12 < f11; i12++) {
            ((ImageView) getChildAt(i12)).setImageDrawable(this.bts);
        }
        if (fFloatValue > 0.0f) {
            ((ImageView) getChildAt(i10)).setImageDrawable(this.btt);
            int i13 = this.btl;
            while (true) {
                i13--;
                if (i13 < 1.0f + f11) {
                    return;
                } else {
                    ((ImageView) getChildAt(i13)).setImageDrawable(this.btr);
                }
            }
        } else {
            int i14 = this.btl;
            while (true) {
                i14--;
                if (i14 < f11) {
                    return;
                } else {
                    ((ImageView) getChildAt(i14)).setImageDrawable(this.btr);
                }
            }
        }
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.btr = drawable;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.bts = drawable;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.btt = drawable;
    }

    public void setStarImageHeight(float f10) {
        this.btp = f10;
    }

    public void setStarImageWidth(float f10) {
        this.bto = f10;
    }

    public void setTotalStarCount(int i10) {
        this.btl = i10;
    }

    public void setmClickable(boolean z10) {
        this.btj = z10;
    }
}
