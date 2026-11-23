package com.byazt.oq;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.nr.eo;
import com.byazt.nr.z;
import com.byazt.tm.DynamicImageFlipSlide;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1112})
public class ImageFlipSlideGroup extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f18261a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FrameLayout f18262c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f18263da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f18264i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ObjectAnimator f18265n;
    public String sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f18266t;
    public BookPageView tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public List<String> f18267u;
    public float uj;
    public ImageView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ImageFlipSlide f18268x;

    public ImageFlipSlideGroup(Context context, boolean z10) {
        super(context);
        this.uj = 0.0f;
        this.sp = z10;
        uj();
        setVisibility(4);
        post(new Runnable() { // from class: com.byazt.oq.ImageFlipSlideGroup.1
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup.this.setVisibility(0);
            }
        });
    }

    private void uj() {
        ImageFlipSlide imageFlipSlide = new ImageFlipSlide(getContext(), this.sp);
        this.f18268x = imageFlipSlide;
        addView(imageFlipSlide);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f18262c = frameLayout;
        addView(frameLayout);
        if (!this.sp) {
            BookPageView bookPageView = new BookPageView(getContext());
            this.tt = bookPageView;
            this.f18262c.addView(bookPageView);
            return;
        }
        View view = new View(getContext());
        view.setBackgroundColor(-1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(eo.c(getContext(), 2.0f), -1);
        layoutParams.gravity = 17;
        this.f18262c.addView(view, layoutParams);
        ImageView imageView = new ImageView(getContext());
        z.c(getContext(), "tt_im_fs_handle", imageView, 320);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(eo.c(getContext(), 44.0f), eo.c(getContext(), 44.0f));
        layoutParams2.gravity = 17;
        this.f18262c.addView(imageView, layoutParams2);
        this.ve = new ImageView(getContext());
        z.c(getContext(), "tt_im_fs_tip", this.ve, 320);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(eo.c(getContext(), 196.0f), eo.c(getContext(), 300.0f));
        layoutParams3.gravity = 17;
        layoutParams3.topMargin = eo.c(getContext(), 6.0f);
        this.f18262c.addView(this.ve, layoutParams3);
    }

    public float getRatio() {
        return this.uj;
    }

    public void setFilterColors(List<String> list) {
        this.f18267u = list;
    }

    public void setRatio(float f10) {
        this.uj = f10;
        post(new Runnable() { // from class: com.byazt.oq.ImageFlipSlideGroup.2
            @Override // java.lang.Runnable
            public void run() {
                ImageFlipSlideGroup imageFlipSlideGroup = ImageFlipSlideGroup.this;
                if (imageFlipSlideGroup.sp) {
                    imageFlipSlideGroup.f18268x.c(ImageFlipSlideGroup.this.uj);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ImageFlipSlideGroup.this.f18262c.getLayoutParams();
                    ImageFlipSlideGroup imageFlipSlideGroup2 = ImageFlipSlideGroup.this;
                    layoutParams.leftMargin = (int) (((1.0f - imageFlipSlideGroup2.uj) - 0.5f) * imageFlipSlideGroup2.getWidth() * 2);
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    ImageFlipSlideGroup.this.f18262c.setLayoutParams(layoutParams);
                    return;
                }
                Point point = new Point();
                float width = ImageFlipSlideGroup.this.getWidth();
                float width2 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup3 = ImageFlipSlideGroup.this;
                point.x = ((int) (width - (width2 * imageFlipSlideGroup3.uj))) - 100;
                float height = imageFlipSlideGroup3.getHeight();
                float width3 = ImageFlipSlideGroup.this.getWidth();
                ImageFlipSlideGroup imageFlipSlideGroup4 = ImageFlipSlideGroup.this;
                float f11 = imageFlipSlideGroup4.uj;
                point.y = ((int) (height - (width3 * f11))) - 100;
                if (f11 > 0.3f) {
                    double d10 = point.x;
                    double width4 = imageFlipSlideGroup4.getWidth() * 2;
                    ImageFlipSlideGroup imageFlipSlideGroup5 = ImageFlipSlideGroup.this;
                    point.x = (int) (d10 - (width4 * (((double) imageFlipSlideGroup5.uj) - 0.3d)));
                    point.y = (int) (((double) point.y) + (((double) (imageFlipSlideGroup5.getHeight() / 2)) * (((double) ImageFlipSlideGroup.this.uj) - 0.3d)));
                }
                ImageFlipSlideGroup.this.tt.c(point);
                ImageFlipSlideGroup imageFlipSlideGroup6 = ImageFlipSlideGroup.this;
                imageFlipSlideGroup6.tt.setAlpha(1.0f - (imageFlipSlideGroup6.uj - 0.3f));
                ImageFlipSlideGroup.this.f18268x.c(ImageFlipSlideGroup.this.tt.getFilterAreaPath());
            }
        });
    }

    public void tt() {
        ObjectAnimator objectAnimator = this.f18265n;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public void ve() {
        if (TextUtils.isEmpty(this.f18263da)) {
            this.f18268x.c(this.f18264i, this.sl, this.f18267u);
        } else {
            this.f18268x.c(this.f18263da, this.f18266t, (List<String>) null);
        }
    }

    public void c(final DynamicImageFlipSlide.c cVar) {
        if (this.f18261a) {
            if (cVar != null) {
                cVar.c();
                return;
            }
            return;
        }
        this.f18261a = true;
        this.f18265n.cancel();
        if (this.ve != null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(300L);
            alphaAnimation.setFillAfter(true);
            this.ve.setAnimation(alphaAnimation);
            alphaAnimation.start();
        }
        float[] fArr = new float[2];
        fArr[0] = this.uj;
        fArr[1] = this.sp ? 1.1f : 1.3f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "ratio", fArr);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.oq.ImageFlipSlideGroup.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ImageFlipSlideGroup.this.f18262c.setVisibility(8);
                DynamicImageFlipSlide.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        objectAnimatorOfFloat.start();
    }

    public void tt(String str, String str2) {
        this.f18263da = str;
        this.f18266t = str2;
    }

    public void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "ratio", 0.15f, 0.25f);
        this.f18265n = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(700L);
        this.f18265n.setInterpolator(new LinearInterpolator());
        this.f18265n.setRepeatCount(-1);
        this.f18265n.setRepeatMode(2);
        this.f18265n.start();
    }

    public void c(String str, String str2) {
        this.f18264i = str;
        this.sl = str2;
    }
}
