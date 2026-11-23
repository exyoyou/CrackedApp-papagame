package com.beizi.fusion.tool;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.widget.ScrollArcView;
import com.beizi.fusion.widget.ScrollClickView;

/* JADX INFO: loaded from: classes6.dex */
public class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FrameLayout f10468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScrollArcView f10469c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f10470d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f10471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AnimatorSet f10472f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AnimatorSet f10473g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AnimatorSet f10474h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AnimatorSet f10475i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AnimatorSet f10476j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f10477k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f10478l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10479m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f10480n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f10481o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f10482p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10483q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10484r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f10485s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f10486t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f10487u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f10488v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f10489w;

    public interface a {
        void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);
    }

    public an(Context context) {
        this.f10467a = context;
    }

    private void c() {
        String downloadDetails;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f10478l;
            if (scrollClickBean != null) {
                String title = scrollClickBean.getTitle();
                if (this.f10470d != null) {
                    if (!TextUtils.isEmpty(title)) {
                        if (ScrollClickView.DIR_LEFT.equals(this.f10480n) || ScrollClickView.DIR_RIGHT.equals(this.f10480n)) {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                            for (int i10 = 0; i10 < title.length(); i10++) {
                                if (i10 > 0) {
                                    spannableStringBuilder.append((CharSequence) "\n");
                                }
                                spannableStringBuilder.append(title.charAt(i10));
                            }
                            this.f10470d.setText(spannableStringBuilder);
                            this.f10470d.setSingleLine(false);
                            this.f10470d.setMaxLines(title.length());
                        } else {
                            this.f10470d.setText(title);
                        }
                    }
                    int titleFont = this.f10478l.getTitleFont();
                    if (titleFont > 0) {
                        this.f10470d.setTextSize(2, titleFont);
                    }
                }
                if (this.f10482p) {
                    downloadDetails = this.f10478l.getDownloadDetails();
                    if (TextUtils.isEmpty(downloadDetails)) {
                        downloadDetails = "下载应用";
                    }
                } else {
                    downloadDetails = this.f10478l.getDetails();
                }
                int detailsFont = this.f10478l.getDetailsFont();
                if (this.f10471e != null) {
                    if (!TextUtils.isEmpty(downloadDetails)) {
                        if (ScrollClickView.DIR_LEFT.equals(this.f10480n) || ScrollClickView.DIR_RIGHT.equals(this.f10480n)) {
                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                            for (int i11 = 0; i11 < downloadDetails.length(); i11++) {
                                if (i11 > 0) {
                                    spannableStringBuilder2.append((CharSequence) "\n");
                                }
                                spannableStringBuilder2.append(downloadDetails.charAt(i11));
                            }
                            this.f10471e.setText(spannableStringBuilder2);
                            this.f10471e.setSingleLine(false);
                            this.f10471e.setMaxLines(downloadDetails.length());
                        } else {
                            this.f10471e.setText(downloadDetails);
                        }
                    }
                    if (detailsFont > 0) {
                        this.f10471e.setTextSize(2, detailsFont);
                    }
                }
            }
            AdSpacesBean.BuyerBean.ScrollClickPositionBean position = this.f10478l.getPosition();
            String width = position.getWidth();
            String str = "180";
            if (TextUtils.isEmpty(width) || "0".equals(width)) {
                width = "180";
            }
            int i12 = width.endsWith("%") ? (this.f10483q * Integer.parseInt(width.substring(0, width.indexOf("%")))) / 100 : au.a(this.f10467a, Integer.parseInt(width));
            String height = position.getHeight();
            if (!TextUtils.isEmpty(width) && !"0".equals(width)) {
                str = height;
            }
            int i13 = str.endsWith("%") ? (this.f10484r * Integer.parseInt(str.substring(0, str.indexOf("%")))) / 100 : au.a(this.f10467a, Integer.parseInt(str));
            String top = position.getTop();
            String centerX = position.getCenterX();
            if (TextUtils.isEmpty(centerX) || "0".equals(centerX)) {
                centerX = "50%";
            }
            if (TextUtils.isEmpty(top) || "0".equals(top)) {
                top = "50%";
            }
            int i14 = centerX.endsWith("%") ? (this.f10483q * Integer.parseInt(centerX.substring(0, centerX.indexOf("%")))) / 100 : au.a(this.f10467a, Integer.parseInt(centerX));
            int i15 = top.endsWith("%") ? (this.f10484r * Integer.parseInt(top.substring(0, top.indexOf("%")))) / 100 : au.a(this.f10467a, Integer.parseInt(top));
            if (ScrollClickView.DIR_DOWN.equals(this.f10480n)) {
                if (this.f10469c != null) {
                    this.f10469c.setLayoutParams(new FrameLayout.LayoutParams(-1, i13 + 100));
                    this.f10469c.setArcDirection(3);
                }
                if (this.f10468b != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, i13 + 100);
                    layoutParams.topMargin = 50;
                    this.f10468b.setLayoutParams(layoutParams);
                }
                if (this.f10486t != null) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = -100;
                    layoutParams2.height = i13 + 300;
                    layoutParams2.width = -1;
                    this.f10486t.setLayoutParams(layoutParams2);
                }
            } else if (ScrollClickView.DIR_LEFT.equals(this.f10480n)) {
                int i16 = i12 * 2;
                if (this.f10469c != null) {
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i16 + 10, -1);
                    layoutParams3.leftMargin = 150;
                    this.f10469c.setLayoutParams(layoutParams3);
                    this.f10469c.setArcHeight(i16);
                    this.f10469c.setArcDirection(2);
                }
                if (this.f10468b != null) {
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((i16 + 10) / 2, -1);
                    layoutParams4.leftMargin = 150;
                    this.f10468b.setLayoutParams(layoutParams4);
                }
                if (this.f10486t != null) {
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams5.leftMargin = (this.f10483q - ((i16 + 10) / 2)) - 150;
                    layoutParams5.height = -1;
                    layoutParams5.width = i16 + 150;
                    this.f10486t.setLayoutParams(layoutParams5);
                }
            } else if (ScrollClickView.DIR_RIGHT.equals(this.f10480n)) {
                int i17 = i12 * 2;
                if (this.f10469c != null) {
                    this.f10469c.setLayoutParams(new FrameLayout.LayoutParams(i17 + 10, -1));
                    this.f10469c.setArcHeight(i17);
                    this.f10469c.setArcDirection(1);
                }
                if (this.f10468b != null) {
                    FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i17, -1);
                    layoutParams6.leftMargin = i17 / 4;
                    this.f10468b.setLayoutParams(layoutParams6);
                }
                if (this.f10486t != null) {
                    FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams7.leftMargin = (-(i17 + 10)) / 2;
                    layoutParams7.height = -1;
                    layoutParams7.width = i17 + 150;
                    this.f10486t.setLayoutParams(layoutParams7);
                }
            } else if ("all".equals(this.f10480n)) {
                if (this.f10469c != null) {
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i12, i13);
                    layoutParams8.gravity = 17;
                    this.f10469c.setLayoutParams(layoutParams8);
                    this.f10469c.setArcDirection(4);
                }
                if (this.f10486t != null) {
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams9.height = i13 + 200;
                    int i18 = i12 + 200;
                    layoutParams9.width = i18;
                    layoutParams9.leftMargin = i14 - (i18 / 2);
                    layoutParams9.topMargin = i15 - 100;
                    this.f10486t.setLayoutParams(layoutParams9);
                }
            }
            h();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f10478l;
            if (scrollClickBean == null) {
                return;
            }
            int randomClickNum = scrollClickBean.getRandomClickNum();
            int randomClickTime = this.f10478l.getRandomClickTime();
            Pair<Integer, Boolean> pairA = a(randomClickNum);
            if (((Boolean) pairA.second).booleanValue()) {
                w.a(new Runnable() { // from class: com.beizi.fusion.tool.an.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (an.this.f10487u) {
                            return;
                        }
                        int[] iArr = {((int) (((double) an.this.f10483q) * 0.1d)) / 2, (int) (((double) an.this.f10484r) * 0.8d)};
                        int[] iArrA = ai.a(((int) (((double) an.this.f10483q) * 0.9d)) / 2, au.a(an.this.f10467a, 65.0f) / 2);
                        an.this.a(String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]));
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
            if ("up".equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "scaleY", 1.0f, 1.1f, 1.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10480n) || ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "scaleX", 1.1f, 1.0f, 1.1f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "scaleY", 1.1f, 1.0f, 1.1f);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10480n) || "all".equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "scaleX", 1.0f, 1.1f, 1.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "scaleY", 1.0f, 1.1f, 1.0f);
            } else {
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
            this.f10472f = animatorSet;
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.f10472f.setDuration(1000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            ScrollArcView scrollArcView = this.f10469c;
            if (scrollArcView == null) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(scrollArcView, "alpha", 0.3f, 0.45f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "alpha", 0.45f, 0.3f);
            objectAnimatorOfFloat.setDuration(700L);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat2.setDuration(300L);
            objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            AnimatorSet animatorSet = new AnimatorSet();
            this.f10474h = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        try {
            if ("up".equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "translationY", 0.0f, 80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "translationY", 80.0f, 0.0f);
            } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "translationY", 80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "translationY", 0.0f, 80.0f);
            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "translationX", -80.0f, 0.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "translationX", 0.0f, -80.0f);
            } else if (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(this.f10480n)) {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10469c, "translationX", 0.0f, 80.0f);
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f10469c, "translationX", 80.0f, 0.0f);
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
            this.f10473g = animatorSet;
            animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } catch (Exception unused) {
        }
    }

    private void h() {
        try {
            View view = this.f10485s;
            if (view == null) {
                return;
            }
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.tool.an.3

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                float f10493a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                float f10494b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                float f10495c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                float f10496d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                float f10497e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                float f10498f;

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
                        this.f10493a = motionEvent.getX();
                        this.f10494b = motionEvent.getY();
                        this.f10495c = motionEvent.getX();
                        this.f10496d = motionEvent.getY();
                        this.f10497e = motionEvent.getRawX();
                        this.f10498f = motionEvent.getRawY();
                    } else if (action != 1) {
                        if (action == 2) {
                            this.f10495c = motionEvent.getX();
                            this.f10496d = motionEvent.getY();
                        }
                    } else if (an.this.f10489w != 1) {
                        f10 = this.f10496d;
                        f11 = this.f10494b;
                        if (f10 - f11 > 0.0f || Math.abs(f10 - f11) <= an.this.f10479m) {
                            f12 = this.f10496d;
                            f13 = this.f10494b;
                            if (f12 - f13 < 0.0f || Math.abs(f12 - f13) <= an.this.f10479m) {
                                f14 = this.f10495c;
                                f15 = this.f10493a;
                                if (f14 - f15 < 0.0f || Math.abs(f14 - f15) <= an.this.f10479m) {
                                    f16 = this.f10495c;
                                    f17 = this.f10493a;
                                    if (f16 - f17 > 0.0f && Math.abs(f16 - f17) > an.this.f10479m && (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(an.this.f10480n) || an.this.f10481o)) {
                                        an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                    }
                                } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(an.this.f10480n) || an.this.f10481o) {
                                    an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                }
                            } else if ("up".equalsIgnoreCase(an.this.f10480n) || an.this.f10481o) {
                                an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(an.this.f10480n) || an.this.f10481o) {
                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if (an.this.a(this.f10497e, this.f10498f)) {
                        if (an.this.f10488v) {
                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        } else {
                            f10 = this.f10496d;
                            f11 = this.f10494b;
                            if (f10 - f11 > 0.0f) {
                                f12 = this.f10496d;
                                f13 = this.f10494b;
                                if (f12 - f13 < 0.0f) {
                                    f14 = this.f10495c;
                                    f15 = this.f10493a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                } else {
                                    f14 = this.f10495c;
                                    f15 = this.f10493a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                }
                            } else {
                                f12 = this.f10496d;
                                f13 = this.f10494b;
                                if (f12 - f13 < 0.0f) {
                                    f14 = this.f10495c;
                                    f15 = this.f10493a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    }
                                } else {
                                    f14 = this.f10495c;
                                    f15 = this.f10493a;
                                    if (f14 - f15 < 0.0f) {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                        }
                                    } else {
                                        f16 = this.f10495c;
                                        f17 = this.f10493a;
                                        if (f16 - f17 > 0.0f) {
                                            an.this.a(this.f10493a + "", this.f10494b + "", this.f10497e + "", this.f10498f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
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

    private void i() {
        AnimatorSet animatorSet = this.f10472f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f10472f = null;
        AnimatorSet animatorSet2 = this.f10474h;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f10474h = null;
        AnimatorSet animatorSet3 = this.f10473g;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        this.f10473g = null;
        AnimatorSet animatorSet4 = this.f10475i;
        if (animatorSet4 != null) {
            animatorSet4.cancel();
        }
        AnimatorSet animatorSet5 = this.f10476j;
        if (animatorSet5 != null) {
            animatorSet5.cancel();
        }
        this.f10476j = null;
        this.f10475i = null;
    }

    public void b() {
        try {
            i();
            this.f10467a = null;
            this.f10486t = null;
        } catch (Exception unused) {
        }
    }

    public View a(View view) {
        try {
            this.f10485s = view;
            if (ScrollClickView.DIR_DOWN.equals(this.f10480n)) {
                this.f10486t = LayoutInflater.from(this.f10467a).inflate(R.layout.beizi_scroll_slide_view_down, (ViewGroup) null);
            } else if (ScrollClickView.DIR_LEFT.equals(this.f10480n)) {
                this.f10486t = LayoutInflater.from(this.f10467a).inflate(R.layout.beizi_scroll_slide_view_left, (ViewGroup) null);
            } else if (ScrollClickView.DIR_RIGHT.equals(this.f10480n)) {
                this.f10486t = LayoutInflater.from(this.f10467a).inflate(R.layout.beizi_scroll_slide_view_right, (ViewGroup) null);
            } else if ("all".equals(this.f10480n)) {
                this.f10486t = LayoutInflater.from(this.f10467a).inflate(R.layout.beizi_scroll_slide_view_all, (ViewGroup) null);
            }
            this.f10469c = (ScrollArcView) this.f10486t.findViewById(R.id.slide_arc);
            this.f10468b = (FrameLayout) this.f10486t.findViewById(R.id.slide_text_container);
            this.f10470d = (TextView) this.f10486t.findViewById(R.id.slide_title);
            this.f10471e = (TextView) this.f10486t.findViewById(R.id.slide_detail);
            c();
            return this.f10486t;
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(a aVar) {
        this.f10477k = aVar;
    }

    public void a(AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean, boolean z10, boolean z11, int i10, int i11) {
        this.f10478l = scrollClickBean;
        this.f10481o = z10;
        this.f10482p = z11;
        this.f10483q = i10;
        this.f10484r = i11;
        if (i10 <= 0) {
            this.f10483q = au.m(this.f10467a);
        }
        if (this.f10484r <= 0) {
            this.f10484r = au.n(this.f10467a);
        }
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f10478l;
        if (scrollClickBean2 != null) {
            this.f10479m = au.a(this.f10467a, scrollClickBean2.getScrollDistance());
            this.f10480n = this.f10478l.getScrollDirection();
            this.f10488v = this.f10478l.getSupportClick() == 1;
            this.f10489w = this.f10478l.getRegionalSlide();
        }
        if ("all".equals(this.f10480n)) {
            this.f10481o = true;
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
            this.f10469c.post(new Runnable() { // from class: com.beizi.fusion.tool.an.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        an.this.e();
                        an.this.f();
                        an.this.g();
                        an.this.f10475i = new AnimatorSet();
                        if ("all".equals(an.this.f10480n)) {
                            an.this.f10475i.playTogether(an.this.f10472f, an.this.f10474h);
                        } else {
                            an.this.f10475i.playTogether(an.this.f10473g, an.this.f10472f, an.this.f10474h);
                        }
                        an.this.f10475i.addListener(new Animator.AnimatorListener() { // from class: com.beizi.fusion.tool.an.2.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                try {
                                    if (an.this.f10475i != null) {
                                        an.this.f10475i.start();
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
                        an.this.f10475i.start();
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
            if (this.f10469c == null) {
                return false;
            }
            Rect rect = new Rect();
            this.f10469c.getGlobalVisibleRect(rect);
            return rect.contains((int) f10, (int) f11);
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            a aVar = this.f10477k;
            if (aVar == null) {
                return;
            }
            this.f10487u = true;
            aVar.a(str, str2, str3, str4, str5, str6, str7, str8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
