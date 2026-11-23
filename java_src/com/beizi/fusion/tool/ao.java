package com.beizi.fusion.tool;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollArcView;
import com.beizi.fusion.widget.ScrollClickView;

/* JADX INFO: loaded from: classes6.dex */
public class ao {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f10501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f10502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FrameLayout f10503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScrollArcView f10504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f10505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f10506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AnimatorSet f10507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AnimatorSet f10508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AnimatorSet f10509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AnimatorSet f10510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AnimatorSet f10511l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private AnimatorSet f10512m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f10513n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f10514o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f10515p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f10516q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10517r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f10518s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f10519t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f10520u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f10521v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View f10522w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f10523x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f10524y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10525z;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public ao(Context context) {
        this.f10500a = context;
    }

    private void k() {
        AnimatorSet animatorSet = this.f10508i;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f10508i = null;
        AnimatorSet animatorSet2 = this.f10510k;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f10510k = null;
        AnimatorSet animatorSet3 = this.f10509j;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        this.f10509j = null;
        AnimatorSet animatorSet4 = this.f10507h;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
        this.f10507h = null;
        AnimatorSet animatorSet5 = this.f10511l;
        if (animatorSet5 != null) {
            animatorSet5.cancel();
        }
        AnimatorSet animatorSet6 = this.f10512m;
        if (animatorSet6 != null) {
            animatorSet6.cancel();
        }
        this.f10512m = null;
        this.f10511l = null;
    }

    private void c() {
        int iA;
        String downloadDetails;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f10514o;
            if (scrollClickBean != null) {
                String title = scrollClickBean.getTitle();
                if (this.f10505f != null) {
                    if (!TextUtils.isEmpty(title)) {
                        this.f10505f.setText(title);
                    }
                    int titleFont = this.f10514o.getTitleFont();
                    if (titleFont > 0) {
                        this.f10505f.setTextSize(2, titleFont);
                    }
                }
                if (!this.f10518s) {
                    downloadDetails = this.f10514o.getDetails();
                } else {
                    downloadDetails = this.f10514o.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                }
                int detailsFont = this.f10514o.getDetailsFont();
                if (this.f10506g != null) {
                    if (!TextUtils.isEmpty(downloadDetails)) {
                        this.f10506g.setText(downloadDetails);
                    }
                    if (detailsFont > 0) {
                        this.f10506g.setTextSize(2, detailsFont);
                    }
                }
            }
            String height = this.f10514o.getPosition().getHeight();
            if (TextUtils.isEmpty(height) || "0".equals(height)) {
                height = "180";
            }
            if (height.endsWith("%")) {
                iA = (this.f10520u * Integer.parseInt(height.substring(0, height.indexOf("%")))) / 100;
            } else {
                iA = au.a(this.f10500a, Integer.parseInt(height));
            }
            int iA2 = au.a(this.f10500a, 110.0f);
            if (this.f10504e != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, iA + 100);
                layoutParams.topMargin = iA2;
                this.f10504e.setLayoutParams(layoutParams);
            }
            int iA3 = au.a(this.f10500a, 200.0f);
            if (this.f10501b != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA3, iA3);
                layoutParams2.topMargin = iA2 - (iA3 / 2);
                layoutParams2.gravity = 1;
                this.f10501b.setLayoutParams(layoutParams2);
            }
            if (this.f10502c != null) {
                int iA4 = au.a(this.f10500a, 45.0f);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(iA4, iA4);
                if ("up".equalsIgnoreCase(this.f10516q)) {
                    layoutParams3.gravity = 17;
                } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10516q)) {
                    layoutParams3.gravity = 49;
                } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10516q) || ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10516q) || "all".equalsIgnoreCase(this.f10516q)) {
                    layoutParams3.gravity = 17;
                }
                this.f10502c.setLayoutParams(layoutParams3);
            }
            if (this.f10503d != null) {
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, iA + 100);
                layoutParams4.topMargin = iA2 - 50;
                this.f10503d.setLayoutParams(layoutParams4);
            }
            if (this.f10522w != null) {
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams5.topMargin = (this.f10520u - iA) - iA2;
                this.f10522w.setLayoutParams(layoutParams5);
            }
            i();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f10514o;
            if (scrollClickBean == null) {
                return;
            }
            int randomClickNum = scrollClickBean.getRandomClickNum();
            int randomClickTime = this.f10514o.getRandomClickTime();
            Pair<Integer, Boolean> pairA = a(randomClickNum);
            if (((Boolean) pairA.second).booleanValue()) {
                w.a(new Runnable() { // from class: com.beizi.fusion.tool.ao.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ao.this.f10523x) {
                            return;
                        }
                        int[] iArr = {((int) (((double) ao.this.f10519t) * 0.1d)) / 2, (int) (((double) ao.this.f10520u) * 0.8d)};
                        int[] iArrA = ai.a(((int) (((double) ao.this.f10519t) * 0.9d)) / 2, au.a(ao.this.f10500a, 65.0f) / 2);
                        ao.this.a(String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]));
                    }
                }, randomClickTime + (((Integer) pairA.first).intValue() * 10));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            int iA = au.a(this.f10500a, 80.0f);
            if ("up".equalsIgnoreCase(this.f10516q)) {
                float f10 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10502c, "translationY", 0.0f, f10);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10502c, "translationY", f10, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10516q)) {
                float f11 = iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10502c, "translationY", 0.0f, f11);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10502c, "translationY", f11, 0.0f);
            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10516q)) {
                int i10 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10502c, "translationX", iA / 2, i10 / 2);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10502c, "translationX", i10 / 2, iA / 2);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10516q)) {
                int i11 = -iA;
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10502c, "translationX", i11 / 2, iA / 2);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10502c, "translationX", iA / 2, i11 / 2);
            } else {
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setDuration(700L);
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setDuration(300L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10507h = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f10516q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10504e, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10504e, "scaleY", 1.0f, 1.1f, 1.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10516q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10504e, "scaleX", 1.1f, 1.0f, 1.1f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10504e, "scaleY", 1.1f, 1.0f, 1.1f);
            } else {
                if (!ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10516q)) {
                    ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10516q);
                }
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10508i = animatorSet;
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f10508i.setDuration(1000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            ScrollArcView scrollArcView = this.f10504e;
            if (scrollArcView == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(scrollArcView, "alpha", 0.3f, 0.45f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10504e, "alpha", 0.45f, 0.3f);
            objectAnimatorOfFloat.setDuration(700L);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat2.setDuration(300L);
            objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10510k = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f10516q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10504e, "translationY", 0.0f, -80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10504e, "translationY", -80.0f, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10516q)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10504e, "translationY", -80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10504e, "translationY", 0.0f, -80.0f);
            } else {
                if (!ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10516q)) {
                    ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10516q);
                }
                objectAnimatorOfFloat = null;
                objectAnimatorOfFloat2 = null;
            }
            if (objectAnimatorOfFloat != null) {
                objectAnimatorOfFloat.setDuration(700L);
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat2 != null) {
                objectAnimatorOfFloat2.setDuration(300L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            }
            if (objectAnimatorOfFloat == null || objectAnimatorOfFloat2 == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10509j = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    private void i() {
        try {
            View view = this.f10521v;
            if (view == null) {
                return;
            }
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.tool.ao.3

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                float f10529a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                float f10530b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                float f10531c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                float f10532d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                float f10533e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                float f10534f;

                /* JADX WARN: Code duplicated, block: B:17:0x00d3  */
                /* JADX WARN: Code duplicated, block: B:26:0x019b  */
                /* JADX WARN: Code duplicated, block: B:28:0x01a5  */
                /* JADX WARN: Code duplicated, block: B:35:0x0262  */
                /* JADX WARN: Code duplicated, block: B:37:0x026c  */
                /* JADX WARN: Code duplicated, block: B:44:0x0329  */
                /* JADX WARN: Code duplicated, block: B:46:0x0333  */
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    float f10;
                    float f11;
                    float f12;
                    float f13;
                    float f14;
                    float f15;
                    float f16;
                    float f17;
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        this.f10529a = motionEvent.getX();
                        this.f10530b = motionEvent.getY();
                        this.f10531c = motionEvent.getX();
                        this.f10532d = motionEvent.getY();
                        this.f10533e = motionEvent.getRawX();
                        this.f10534f = motionEvent.getRawY();
                    } else if (action != 1) {
                        if (action == 2) {
                            this.f10531c = motionEvent.getX();
                            this.f10532d = motionEvent.getY();
                        }
                    } else if (ao.this.f10525z != 1) {
                        f10 = this.f10532d;
                        f11 = this.f10530b;
                        if (f10 - f11 > 0.0f || Math.abs(f10 - f11) <= ao.this.f10515p) {
                            f12 = this.f10532d;
                            f13 = this.f10530b;
                            if (f12 - f13 < 0.0f || Math.abs(f12 - f13) <= ao.this.f10515p) {
                                f14 = this.f10531c;
                                f15 = this.f10529a;
                                if (f14 - f15 < 0.0f || Math.abs(f14 - f15) <= ao.this.f10515p) {
                                    f16 = this.f10531c;
                                    f17 = this.f10529a;
                                    if (f16 - f17 > 0.0f && Math.abs(f16 - f17) > ao.this.f10515p && (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(ao.this.f10516q) || ao.this.f10517r)) {
                                        ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                    }
                                } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(ao.this.f10516q) || ao.this.f10517r) {
                                    ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                }
                            } else if ("up".equalsIgnoreCase(ao.this.f10516q) || ao.this.f10517r) {
                                ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(ao.this.f10516q) || ao.this.f10517r) {
                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if (ao.this.a(this.f10533e, this.f10534f)) {
                        if (ao.this.f10524y) {
                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        } else {
                            f10 = this.f10532d;
                            f11 = this.f10530b;
                            if (f10 - f11 > 0.0f) {
                                f12 = this.f10532d;
                                f13 = this.f10530b;
                                if (f12 - f13 < 0.0f) {
                                    f14 = this.f10531c;
                                    f15 = this.f10529a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                } else {
                                    f14 = this.f10531c;
                                    f15 = this.f10529a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                }
                            } else {
                                f12 = this.f10532d;
                                f13 = this.f10530b;
                                if (f12 - f13 < 0.0f) {
                                    f14 = this.f10531c;
                                    f15 = this.f10529a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                } else {
                                    f14 = this.f10531c;
                                    f15 = this.f10529a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10531c;
                                        f17 = this.f10529a;
                                        if (f16 - f17 > 0.0f) {
                                            ao.this.a(this.f10529a + "", this.f10530b + "", this.f10533e + "", this.f10534f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return true;
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            this.f10501b.post(new Runnable() { // from class: com.beizi.fusion.tool.ao.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ao.this.f10501b != null && ao.this.f10502c != null) {
                            ao aoVar = ao.this;
                            aoVar.A = aoVar.f10501b.getWidth();
                            ao aoVar2 = ao.this;
                            aoVar2.B = aoVar2.f10501b.getHeight();
                            ao aoVar3 = ao.this;
                            aoVar3.C = aoVar3.f10502c.getWidth();
                            ao aoVar4 = ao.this;
                            aoVar4.D = aoVar4.f10502c.getHeight();
                            ao aoVar5 = ao.this;
                            aoVar5.E = aoVar5.C / 2;
                            ao aoVar6 = ao.this;
                            aoVar6.F = aoVar6.D / 2;
                            ao aoVar7 = ao.this;
                            aoVar7.G = aoVar7.E;
                            ao aoVar8 = ao.this;
                            aoVar8.H = aoVar8.A - ao.this.E;
                            ao aoVar9 = ao.this;
                            aoVar9.I = aoVar9.F;
                            ao aoVar10 = ao.this;
                            aoVar10.J = aoVar10.B - ao.this.F;
                            ao.this.f10512m = new AnimatorSet();
                            AnimatorSet animatorSet = ao.this.f10512m;
                            ao aoVar11 = ao.this;
                            ao aoVar12 = ao.this;
                            ao aoVar13 = ao.this;
                            ao aoVar14 = ao.this;
                            animatorSet.playSequentially(aoVar11.a(aoVar11.G + ((ao.this.H - ao.this.G) / 2), ao.this.I, ao.this.G + ((ao.this.H - ao.this.G) / 2), ao.this.J), aoVar12.a(aoVar12.G, ao.this.I + ((ao.this.J - ao.this.I) / 2), ao.this.H, ao.this.I + ((ao.this.J - ao.this.I) / 2)), aoVar13.a(aoVar13.G, ao.this.I, ao.this.H, ao.this.J), aoVar14.a(aoVar14.H, ao.this.I, ao.this.G, ao.this.J));
                            ao.this.f10512m.setDuration(1000L);
                            ao.this.f10512m.setInterpolator(new AccelerateDecelerateInterpolator());
                            ao.this.f10512m.addListener(new Animator.AnimatorListener() { // from class: com.beizi.fusion.tool.ao.5.1
                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    try {
                                        if (ao.this.f10512m != null) {
                                            ao.this.f10512m.start();
                                        }
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationRepeat(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public void onAnimationStart(Animator animator) {
                                }
                            });
                            ao.this.f10512m.start();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b() {
        try {
            k();
            this.f10500a = null;
            this.f10522w = null;
        } catch (Exception unused) {
        }
    }

    public View a(View view) {
        try {
            this.f10521v = view;
            View viewInflate = LayoutInflater.from(this.f10500a).inflate(R.layout.beizi_scroll_slide_view, (ViewGroup) null);
            this.f10522w = viewInflate;
            this.f10501b = (FrameLayout) viewInflate.findViewById(R.id.slide_hand_container);
            this.f10502c = (ImageView) this.f10522w.findViewById(R.id.slide_hand);
            this.f10504e = (ScrollArcView) this.f10522w.findViewById(R.id.slide_arc);
            this.f10503d = (FrameLayout) this.f10522w.findViewById(R.id.slide_text_container);
            this.f10505f = (TextView) this.f10522w.findViewById(R.id.slide_title);
            this.f10506g = (TextView) this.f10522w.findViewById(R.id.slide_detail);
            c();
            return this.f10522w;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(a aVar) {
        this.f10513n = aVar;
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, boolean z10, boolean z11, int i10, int i11) {
        this.f10514o = scrollClickBean;
        this.f10517r = z10;
        this.f10518s = z11;
        this.f10519t = i10;
        this.f10520u = i11;
        if (i10 <= 0) {
            this.f10519t = au.m(this.f10500a);
        }
        if (this.f10520u <= 0) {
            this.f10520u = au.n(this.f10500a);
        }
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f10514o;
        if (scrollClickBean2 != null) {
            this.f10515p = au.a(this.f10500a, scrollClickBean2.getScrollDistance());
            this.f10516q = this.f10514o.getScrollDirection();
            this.f10524y = this.f10514o.getSupportClick() == 1;
            this.f10525z = this.f10514o.getRegionalSlide();
        }
        if (this.f10514o.getAnimation() == 0 && this.f10517r) {
            this.f10516q = "all";
        }
        d();
    }

    public static Pair<Integer, Boolean> a(int i10) {
        int iRandom = (int) ((Math.random() * 100.0d) + 1.0d);
        if (iRandom <= i10) {
            return new Pair<>(Integer.valueOf(iRandom), Boolean.TRUE);
        }
        return new Pair<>(Integer.valueOf(iRandom), Boolean.FALSE);
    }

    public void a() {
        try {
            this.f10504e.post(new Runnable() { // from class: com.beizi.fusion.tool.ao.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if ("all".equalsIgnoreCase(ao.this.f10516q)) {
                            ao.this.j();
                            return;
                        }
                        ao.this.e();
                        ao.this.f();
                        ao.this.g();
                        ao.this.h();
                        ao.this.f10511l = new AnimatorSet();
                        if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(ao.this.f10516q) || "up".equalsIgnoreCase(ao.this.f10516q)) {
                            ao.this.f10511l.playTogether(ao.this.f10507h, ao.this.f10509j, ao.this.f10508i, ao.this.f10510k);
                        } else {
                            ao.this.f10511l.playTogether(ao.this.f10507h, ao.this.f10510k);
                        }
                        ao.this.f10511l.addListener(new Animator.AnimatorListener() { // from class: com.beizi.fusion.tool.ao.2.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                try {
                                    if (ao.this.f10511l != null) {
                                        ao.this.f10511l.start();
                                    }
                                } catch (Exception unused) {
                                }
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }
                        });
                        ao.this.f10511l.start();
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(float f10, float f11) {
        try {
            if (this.f10504e == null) {
                return false;
            }
            Rect rect = new Rect();
            this.f10504e.getGlobalVisibleRect(rect);
            return rect.contains((int) f10, (int) f11);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ValueAnimator a(final float f10, final float f11, final float f12, final float f13) {
        try {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.tool.ao.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    try {
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        float f14 = f10;
                        float f15 = f14 + ((f12 - f14) * animatedFraction);
                        float f16 = f11;
                        float f17 = f16 + ((f13 - f16) * animatedFraction);
                        float fMax = Math.max(ao.this.G, Math.min(f15, ao.this.H));
                        float fMax2 = Math.max(ao.this.I, Math.min(f17, ao.this.J));
                        if (ao.this.f10502c != null) {
                            ao.this.f10502c.setX(fMax - ao.this.E);
                            ao.this.f10502c.setY(fMax2 - ao.this.F);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            return valueAnimatorOfFloat;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            a aVar = this.f10513n;
            if (aVar == null) {
                return;
            }
            this.f10523x = true;
            aVar.a(str, str2, str3, str4, str5, str6, str7, str8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
