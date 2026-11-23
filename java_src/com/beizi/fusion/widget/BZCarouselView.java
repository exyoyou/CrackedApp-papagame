package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.i;
import com.beizi.ad.lance.a.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class BZCarouselView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f10721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<ImageView> f10722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f10725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AccelerateDecelerateInterpolator f10726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f10727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f10728h;

    /* JADX INFO: renamed from: com.beizi.fusion.widget.BZCarouselView$2, reason: invalid class name */
    class AnonymousClass2 implements h.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f10730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f10731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f10732c;

        AnonymousClass2(int i10, int i11, ImageView imageView) {
            this.f10730a = i10;
            this.f10731b = i11;
            this.f10732c = imageView;
        }

        @Override // com.beizi.ad.internal.e.h.a
        public void a() {
        }

        @Override // com.beizi.ad.internal.e.h.a
        public void a(final Bitmap bitmap) {
            try {
                float fAbs = Math.abs(((float) ((((double) this.f10730a) * 1.0d) / ((double) this.f10731b))) - ((float) ((((double) bitmap.getWidth()) * 1.0d) / ((double) bitmap.getHeight()))));
                if (fAbs > 0.1f) {
                    this.f10732c.setScaleType(ImageView.ScaleType.CENTER);
                    c.b().e().execute(new Runnable() { // from class: com.beizi.fusion.widget.BZCarouselView.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (bitmap != null) {
                                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(i.a(BZCarouselView.this.getContext(), bitmap, 20.0f));
                                    if (BZCarouselView.this.f10727g != null) {
                                        BZCarouselView.this.f10727g.post(new Runnable() { // from class: com.beizi.fusion.widget.BZCarouselView.2.1.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                ImageView imageView;
                                                try {
                                                    BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                                    if (bitmapDrawable2 == null || (imageView = AnonymousClass2.this.f10732c) == null) {
                                                        return;
                                                    }
                                                    imageView.setBackground(bitmapDrawable2);
                                                } catch (Throwable th) {
                                                    th.printStackTrace();
                                                }
                                            }
                                        });
                                    }
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                } else if (fAbs > 0.07d) {
                    this.f10732c.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    this.f10732c.setScaleType(ImageView.ScaleType.FIT_XY);
                }
                this.f10732c.setImageBitmap(bitmap);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public interface a {
        void a(int i10);
    }

    public BZCarouselView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            stopCarousel();
            this.f10727g.removeCallbacksAndMessages(null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void performCarousel() {
        try {
            if (this.f10722b.size() <= 1) {
                return;
            }
            final int i10 = getResources().getDisplayMetrics().widthPixels;
            final ImageView imageView = this.f10722b.get(this.f10723c);
            int size = (this.f10723c + 1) % this.f10722b.size();
            ImageView imageView2 = this.f10722b.get(size);
            float f10 = i10;
            imageView.animate().translationX(-f10).setDuration(500L).setInterpolator(this.f10726f).start();
            imageView2.setTranslationX(f10);
            imageView2.animate().translationX(0.0f).setDuration(500L).setInterpolator(this.f10726f).start();
            this.f10723c = size;
            this.f10727g.postDelayed(new Runnable() { // from class: com.beizi.fusion.widget.BZCarouselView.3
                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView3 = imageView;
                    if (imageView3 != null) {
                        imageView3.setTranslationX(i10);
                    }
                }
            }, 500L);
            a aVar = this.f10725e;
            if (aVar != null) {
                aVar.a(this.f10723c);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void performLastCarousel() {
        try {
            if (this.f10722b.size() <= 1) {
                return;
            }
            stopCarousel();
            final int i10 = getResources().getDisplayMetrics().widthPixels;
            final ImageView imageView = this.f10722b.get(this.f10723c);
            int size = ((this.f10723c - 1) + this.f10722b.size()) % this.f10722b.size();
            ImageView imageView2 = this.f10722b.get(size);
            float f10 = i10;
            imageView.animate().translationX(f10).setDuration(500L).setInterpolator(this.f10726f).start();
            imageView2.setTranslationX(-f10);
            imageView2.animate().translationX(0.0f).setDuration(500L).setInterpolator(this.f10726f).start();
            this.f10723c = size;
            this.f10727g.postDelayed(new Runnable() { // from class: com.beizi.fusion.widget.BZCarouselView.4
                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView3 = imageView;
                    if (imageView3 != null) {
                        imageView3.setTranslationX(-i10);
                    }
                }
            }, 500L);
            a aVar = this.f10725e;
            if (aVar != null) {
                aVar.a(this.f10723c);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void performNextCarousel() {
        try {
            if (this.f10722b.size() > 1) {
                stopCarousel();
                performCarousel();
            } else {
                a aVar = this.f10725e;
                if (aVar != null) {
                    aVar.a(this.f10723c);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setImageUrls(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f10721a = list;
        a(0, 0);
    }

    public void setOnContentChangeListener(a aVar) {
        this.f10725e = aVar;
    }

    public void setScrollInterval(int i10) {
        if (i10 > 0) {
            this.f10724d = i10 * 1000;
        }
    }

    public void startCarousel() {
        try {
            List<String> list = this.f10721a;
            if (list != null && !list.isEmpty()) {
                stopCarousel();
                Handler handler = this.f10727g;
                if (handler != null) {
                    handler.postDelayed(this.f10728h, this.f10724d);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void stopCarousel() {
        try {
            Handler handler = this.f10727g;
            if (handler != null) {
                handler.removeCallbacks(this.f10728h);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public BZCarouselView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(int i10, int i11) {
        try {
            this.f10722b.clear();
            removeAllViews();
            if (i10 <= 0) {
                i10 = getResources().getDisplayMetrics().widthPixels;
            }
            if (i11 <= 0) {
                i11 = getResources().getDisplayMetrics().heightPixels;
            }
            for (String str : this.f10721a) {
                ImageView imageView = new ImageView(getContext());
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                imageView.setLayoutParams(new FrameLayout.LayoutParams(i10, i11));
                imageView.setTranslationX(this.f10722b.isEmpty() ? 0.0f : i10);
                this.f10722b.add(imageView);
                addView(imageView, new ViewGroup.LayoutParams(i10, i11));
                a(str, imageView, i10, i11);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public BZCarouselView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10722b = new ArrayList();
        this.f10723c = 0;
        this.f10724d = 5000L;
        this.f10726f = new AccelerateDecelerateInterpolator();
        this.f10727g = new Handler(Looper.getMainLooper());
        this.f10728h = new Runnable() { // from class: com.beizi.fusion.widget.BZCarouselView.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    BZCarouselView.this.performCarousel();
                    BZCarouselView.this.f10727g.postDelayed(this, BZCarouselView.this.f10724d);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
    }

    public void setImageUrls(List<String> list, int i10, int i11) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f10721a = list;
        a(i10, i11);
    }

    private void a(String str, ImageView imageView, int i10, int i11) {
        h.a(getContext()).a(str, new AnonymousClass2(i10, i11, imageView));
    }
}
