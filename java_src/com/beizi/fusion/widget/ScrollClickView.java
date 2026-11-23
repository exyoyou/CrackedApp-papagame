package com.beizi.fusion.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.au;

/* JADX INFO: loaded from: classes6.dex */
public class ScrollClickView extends LinearLayout {
    public static final String DIR_DOWN = "down";
    public static final String DIR_LEFT = "left";
    public static final String DIR_RIGHT = "right";
    public static final String DIR_UP = "up";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ImageView f10836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ImageView f10837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f10838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f10839d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10840e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f10841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f10842g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f10844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f10845j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f10846k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f10847l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ValueAnimator f10848m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f10849n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private FrameLayout f10850o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private FrameLayout f10851p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayout f10852q;

    public ScrollClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10840e = false;
        this.f10845j = "up";
        this.f10846k = 45;
        this.f10847l = 180;
        this.f10852q = null;
        init(context);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:46:0x0070). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x005a -> B:46:0x0070). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005c -> B:46:0x0070). Please report as a decompilation issue!!! */
    public void buildRealView() {
        try {
            if ("up".equalsIgnoreCase(this.f10845j)) {
                this.f10852q = (LinearLayout) LayoutInflater.from(this.f10849n).inflate(R.layout.beizi_layout_scrollview_up, this);
            } else if (DIR_DOWN.equalsIgnoreCase(this.f10845j)) {
                this.f10852q = (LinearLayout) LayoutInflater.from(this.f10849n).inflate(R.layout.beizi_layout_scrollview_down, this);
            }
        } catch (Throwable unused) {
            if ("up".equalsIgnoreCase(this.f10845j)) {
                this.f10852q = (LinearLayout) LayoutInflater.from(this.f10849n.getApplicationContext()).inflate(R.layout.beizi_layout_scrollview_up, this);
            } else if (DIR_DOWN.equalsIgnoreCase(this.f10845j)) {
                this.f10852q = (LinearLayout) LayoutInflater.from(this.f10849n.getApplicationContext()).inflate(R.layout.beizi_layout_scrollview_down, this);
            }
        }
        try {
            LinearLayout linearLayout = this.f10852q;
            if (linearLayout == null) {
                return;
            }
            this.f10836a = (ImageView) linearLayout.findViewById(R.id.hand);
            this.f10837b = (ImageView) this.f10852q.findViewById(R.id.scrollbar);
            this.f10838c = (TextView) this.f10852q.findViewById(R.id.title);
            this.f10839d = (TextView) this.f10852q.findViewById(R.id.details);
            this.f10850o = (FrameLayout) this.f10852q.findViewById(R.id.scroll_container);
            this.f10851p = (FrameLayout) this.f10852q.findViewById(R.id.scrollbar_container);
            this.f10846k = au.a(this.f10849n, this.f10846k);
            this.f10847l = au.a(this.f10849n, this.f10847l) + this.f10846k;
            TextView textView = this.f10838c;
            if (textView != null) {
                textView.setText(this.f10841f);
                this.f10838c.setTextSize(2, this.f10843h);
            }
            TextView textView2 = this.f10839d;
            if (textView2 != null) {
                textView2.setText(this.f10842g);
                this.f10839d.setTextSize(2, this.f10844i);
            }
            ImageView imageView = this.f10836a;
            if (imageView == null || this.f10837b == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = this.f10837b.getLayoutParams();
            if (layoutParams != null) {
                int i10 = this.f10846k;
                layoutParams.width = i10;
                layoutParams.height = i10;
                if (layoutParams2 != null) {
                    layoutParams2.height = this.f10847l;
                    layoutParams2.width = (int) (i10 * 0.55f);
                }
            }
            if (DIR_DOWN.equalsIgnoreCase(this.f10845j)) {
                b();
            } else if ("up".equalsIgnoreCase(this.f10845j)) {
                a();
            } else {
                if (DIR_LEFT.equalsIgnoreCase(this.f10845j)) {
                    return;
                }
                DIR_RIGHT.equalsIgnoreCase(this.f10845j);
            }
        } catch (Exception unused2) {
        }
    }

    public void init(Context context) {
        if (this.f10840e) {
            return;
        }
        this.f10849n = context;
        this.f10840e = true;
    }

    public void setDetailText(String str) {
        this.f10842g = str;
    }

    public void setDetailsFont(int i10) {
        this.f10844i = i10;
    }

    public void setHandWidth(int i10) {
        this.f10846k = i10;
    }

    public void setScrollDirection(String str) {
        this.f10845j = str;
    }

    public void setScrollbarHeight(int i10) {
        this.f10847l = i10;
    }

    public void setTitleFont(int i10) {
        this.f10843h = i10;
    }

    public void setTitleText(String str) {
        this.f10841f = str;
    }

    public void startAnim() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startAnim animator != null ? ");
        sb2.append(this.f10848m != null);
        ac.b("ScrollClickUtil", sb2.toString());
        try {
            ValueAnimator valueAnimator = this.f10848m;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        } catch (Exception unused) {
        }
    }

    public void stopAnim() {
        try {
            ValueAnimator valueAnimator = this.f10848m;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
                this.f10848m.cancel();
            }
        } catch (Exception unused) {
        }
    }

    private void b() {
        try {
            this.f10836a.post(new Runnable() { // from class: com.beizi.fusion.widget.ScrollClickView.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ScrollClickView.this.f10850o != null && ScrollClickView.this.f10851p != null) {
                            if (ScrollClickView.this.f10836a.getLayoutParams() == null) {
                                return;
                            }
                            final int i10 = ScrollClickView.this.f10836a.getLayoutParams().height;
                            ScrollClickView scrollClickView = ScrollClickView.this;
                            scrollClickView.f10848m = ValueAnimator.ofInt(i10, scrollClickView.f10847l);
                            ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f10837b.getLayoutParams();
                            ac.b("ScrollClickUtil", "handHeight = " + i10);
                            if (layoutParams != null) {
                                layoutParams.height = ScrollClickView.this.f10847l;
                            }
                            ScrollClickView.this.f10848m.setDuration(1000L);
                            ScrollClickView.this.f10848m.setRepeatCount(-1);
                            ScrollClickView.this.f10848m.setRepeatMode(1);
                            ScrollClickView.this.f10848m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.widget.ScrollClickView.2.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    try {
                                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                        ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.f10850o.getLayoutParams();
                                        if (layoutParams2 != null) {
                                            layoutParams2.height = iIntValue;
                                        }
                                        ViewGroup.LayoutParams layoutParams3 = ScrollClickView.this.f10851p.getLayoutParams();
                                        if (layoutParams3 != null) {
                                            layoutParams3.height = iIntValue - (i10 / 3);
                                        }
                                        ScrollClickView.this.f10850o.requestLayout();
                                    } catch (Exception unused) {
                                    }
                                }
                            });
                            return;
                        }
                        ac.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    private void a() {
        try {
            this.f10836a.post(new Runnable() { // from class: com.beizi.fusion.widget.ScrollClickView.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ScrollClickView.this.f10850o != null && ScrollClickView.this.f10851p != null) {
                            if (ScrollClickView.this.f10836a.getLayoutParams() == null) {
                                return;
                            }
                            final int i10 = ScrollClickView.this.f10836a.getLayoutParams().height;
                            ScrollClickView scrollClickView = ScrollClickView.this;
                            scrollClickView.f10848m = ValueAnimator.ofInt(i10, scrollClickView.f10847l);
                            ac.b("ScrollClickUtil", "handHeight = " + i10 + ",scrollbarHeight = " + ScrollClickView.this.f10847l);
                            ViewGroup.LayoutParams layoutParams = ScrollClickView.this.f10837b.getLayoutParams();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("handHeight = ");
                            sb2.append(i10);
                            ac.b("ScrollClickUtil", sb2.toString());
                            if (layoutParams != null) {
                                layoutParams.height = ScrollClickView.this.f10847l;
                            }
                            ScrollClickView.this.f10848m.setDuration(1000L);
                            ScrollClickView.this.f10848m.setRepeatCount(-1);
                            ScrollClickView.this.f10848m.setRepeatMode(1);
                            ScrollClickView.this.f10848m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.widget.ScrollClickView.1.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    try {
                                        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                        ViewGroup.LayoutParams layoutParams2 = ScrollClickView.this.f10836a.getLayoutParams();
                                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                                            ((FrameLayout.LayoutParams) layoutParams2).topMargin = ScrollClickView.this.f10847l - iIntValue;
                                        }
                                        ViewGroup.LayoutParams layoutParams3 = ScrollClickView.this.f10851p.getLayoutParams();
                                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                                            layoutParams3.height = iIntValue - (i10 / 3);
                                            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                                            layoutParams4.topMargin = ScrollClickView.this.f10847l - layoutParams4.height;
                                        }
                                        ScrollClickView.this.f10850o.requestLayout();
                                    } catch (Exception unused) {
                                    }
                                }
                            });
                            return;
                        }
                        ac.b("ScrollClickUtil", "scrollContainer or scrollBarContainer is null , please check !");
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public ScrollClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10840e = false;
        this.f10845j = "up";
        this.f10846k = 45;
        this.f10847l = 180;
        this.f10852q = null;
        init(context);
    }

    public ScrollClickView(Context context) {
        super(context);
        this.f10840e = false;
        this.f10845j = "up";
        this.f10846k = 45;
        this.f10847l = 180;
        this.f10852q = null;
        init(context);
    }
}
