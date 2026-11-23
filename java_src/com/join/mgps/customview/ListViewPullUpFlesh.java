package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class ListViewPullUpFlesh extends ListView {
    private static boolean A = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f65213v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f65214w = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f65215x = 2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f65216y = 3;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final float f65217z = 3.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f65218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f65219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f65220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f65221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ProgressBar f65222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f65223g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f65224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f65225i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65228l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Animation f65229m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Animation f65230n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f65231o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f65232p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f65233q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f65234r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f65235s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f65236t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    a f65237u;

    public interface a {
        void a();

        void b();
    }

    public ListViewPullUpFlesh(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65235s = 0.0f;
        this.f65236t = 0.0f;
        a(context);
    }

    private void a(Context context) {
        RotateAnimation rotateAnimation = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f65229m = rotateAnimation;
        rotateAnimation.setDuration(150L);
        this.f65229m.setFillAfter(true);
        this.f65229m.setInterpolator(new LinearInterpolator());
        RotateAnimation rotateAnimation2 = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f65230n = rotateAnimation2;
        rotateAnimation2.setDuration(150L);
        this.f65230n.setFillAfter(true);
        this.f65230n.setInterpolator(new LinearInterpolator());
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.listviewpullheader, (ViewGroup) null);
        this.f65220d = viewInflate;
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.arrow);
        this.f65221e = imageView;
        imageView.startAnimation(this.f65230n);
        this.f65222f = (ProgressBar) this.f65220d.findViewById(R.id.progerssbar);
        this.f65223g = (TextView) this.f65220d.findViewById(R.id.title);
        this.f65225i = (TextView) this.f65220d.findViewById(R.id.noMore);
        this.f65224h = (TextView) this.f65220d.findViewById(R.id.updated);
        this.f65223g.setText("上拉刷新");
        this.f65224h.setText("上拉刷新");
        this.f65221e.setMinimumWidth(70);
        this.f65221e.setMaxHeight(50);
        b(this.f65220d);
        int measuredHeight = this.f65220d.getMeasuredHeight();
        this.f65228l = measuredHeight;
        this.f65220d.setPadding(0, measuredHeight * (-1), 0, 0);
        this.f65220d.invalidate();
        addFooterView(this.f65220d);
        this.f65232p = 3;
        this.f65231o = false;
    }

    private void b(View v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i10 = layoutParams.height;
        v10.measure(childMeasureSpec, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(i10, 0));
    }

    private void d() {
        int i10 = this.f65232p;
        if (i10 == 0) {
            this.f65222f.setVisibility(8);
            if (A) {
                A = false;
                return;
            }
            return;
        }
        if (i10 == 1) {
            this.f65222f.setVisibility(8);
            return;
        }
        if (i10 == 2) {
            this.f65222f.setVisibility(0);
            this.f65220d.setPadding(0, 0, 0, 0);
        } else {
            if (i10 != 3) {
                return;
            }
            this.f65222f.setVisibility(8);
            this.f65220d.setPadding(0, this.f65228l * (-5), 0, 0);
        }
    }

    private void e() {
        a aVar = this.f65237u;
        if (aVar != null) {
            aVar.b();
        }
    }

    private void f() {
        a aVar = this.f65237u;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void c() {
        this.f65222f.setVisibility(8);
        this.f65225i.setVisibility(0);
    }

    public void g() {
        this.f65232p = 3;
        d();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        this.f65224h.setText("最后刷新时间：" + simpleDateFormat.format(new Date()));
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        try {
            this.f65219c = getLastVisiblePosition() - 1;
            getCount();
            if (this.f65231o) {
                int action = ev.getAction();
                if (action == 0) {
                    this.f65235s = ev.getY();
                    this.f65233q = false;
                    if (getFirstVisiblePosition() == 0 && !this.f65233q) {
                        this.f65234r = ev.getY();
                        this.f65233q = true;
                    }
                } else if (action == 1) {
                    int i10 = this.f65232p;
                    if (i10 != 2) {
                        if (i10 == 0) {
                            this.f65232p = 3;
                            if (getLastVisiblePosition() == getCount() - 1 || getLastVisiblePosition() == getCount() - 1) {
                                d();
                            }
                        }
                        if (this.f65232p == 1) {
                            this.f65232p = 2;
                            if (getLastVisiblePosition() == getCount() - 1 || getLastVisiblePosition() == getCount() - 0) {
                                d();
                                f();
                            }
                        }
                    }
                } else if (action == 2 && (getLastVisiblePosition() == getCount() - 2 || getLastVisiblePosition() == getCount() - 1)) {
                    this.f65235s = this.f65236t;
                    float y10 = ev.getY();
                    this.f65236t = y10;
                    if (!this.f65233q) {
                        this.f65234r = y10;
                        this.f65233q = true;
                    }
                    int i11 = this.f65232p;
                    if (i11 != 2) {
                        if (i11 == 3 && this.f65234r - y10 > 0.0f) {
                            this.f65232p = 0;
                            d();
                        }
                        if (this.f65232p == 0) {
                            float f10 = this.f65234r;
                            float f11 = this.f65236t;
                            if ((f10 - f11) / 3.0f > this.f65228l && this.f65235s - f11 >= 9.0f) {
                                this.f65232p = 1;
                                d();
                            } else if (f10 - f11 <= 0.0f) {
                                this.f65232p = 3;
                                d();
                            }
                        }
                        if (this.f65232p == 1) {
                            float f12 = this.f65235s;
                            float f13 = this.f65236t;
                            if (f12 - f13 < -5.0f) {
                                this.f65232p = 0;
                                A = true;
                                d();
                            } else if (f13 - this.f65234r >= 0.0f) {
                                this.f65232p = 3;
                                d();
                            }
                        }
                        int i12 = this.f65232p;
                        if (i12 == 0 || i12 == 1) {
                            float f14 = this.f65236t;
                            float f15 = this.f65234r;
                            if (f14 < f15) {
                                this.f65220d.setPadding(0, 0, 0, (int) (((f15 - f14) / 3.0f) - this.f65228l));
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.onTouchEvent(ev);
    }

    public void setRefreshListener(a l10) {
        this.f65237u = l10;
        this.f65231o = true;
    }

    public ListViewPullUpFlesh(Context context) {
        super(context);
        this.f65235s = 0.0f;
        this.f65236t = 0.0f;
        a(context);
    }
}
