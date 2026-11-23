package com.beizi.fusion.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.fusion.R;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ar;
import com.beizi.fusion.tool.f;
import com.beizi.fusion.update.ShakeArcView;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class EulerAngleView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f10778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleViewRuleBean f10779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.EulerAngleRenderBean f10780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f10781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f10782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f10783g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ShakeArcView f10784h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f10785i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f10786j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f10787k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f10788l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f10789m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f10790n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f10791o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f10792p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private double f10793q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private double f10794r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f10795s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f10796t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f10797u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f10798v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private AnimatorSet f10799w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Boolean f10800x;

    public EulerAngleView(Context context) {
        super(context);
        this.f10777a = false;
        this.f10787k = 60.0f;
        this.f10788l = 60.0f;
        this.f10789m = 30.0f;
        this.f10790n = TcMouseManager.MOUSE_STARY;
        this.f10793q = 0.0d;
        this.f10794r = 0.0d;
        this.f10795s = 0.0d;
        init(context);
    }

    public void buildEulerAngleView() {
        String downloadSubTitle;
        TextView textView;
        TextView textView2;
        List<String> imgs;
        try {
            if (this.f10779c == null) {
                return;
            }
            View.inflate(getContext(), R.layout.beizi_interaction_euler_angle_view, this);
            this.f10781e = (LinearLayout) findViewById(R.id.bz_eav_container_ll);
            this.f10782f = (RelativeLayout) findViewById(R.id.bz_eav_img_container_rl);
            this.f10783g = (ImageView) findViewById(R.id.bz_eav_img_iv);
            this.f10784h = (ShakeArcView) findViewById(R.id.bz_eav_sav_iv);
            this.f10785i = (TextView) findViewById(R.id.bz_eav_title_tv);
            this.f10786j = (TextView) findViewById(R.id.bz_eav_subtitle_tv);
            RelativeLayout relativeLayout = this.f10782f;
            if (relativeLayout != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.width = this.f10791o;
                layoutParams.height = this.f10792p;
                this.f10782f.setLayoutParams(layoutParams);
            }
            ImageView imageView = this.f10783g;
            if (imageView != null) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams2.width = (int) (((double) this.f10791o) * 0.35d);
                int i10 = this.f10792p;
                layoutParams2.height = (int) (((double) i10) * 0.5d);
                layoutParams2.setMargins(0, 0, 0, (int) (((double) i10) * 0.2d));
                this.f10783g.setLayoutParams(layoutParams2);
            }
            ShakeArcView shakeArcView = this.f10784h;
            if (shakeArcView != null) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) shakeArcView.getLayoutParams();
                layoutParams3.width = (int) (((double) Math.min(this.f10791o, this.f10792p)) * 0.7d);
                layoutParams3.height = (int) (((double) Math.min(this.f10791o, this.f10792p)) * 0.7d);
                this.f10784h.setLayoutParams(layoutParams3);
                if (!TextUtils.isEmpty(this.f10796t)) {
                    this.f10784h.setArrowDirection(0);
                } else if (("1".equals(this.f10797u) && "1".equals(this.f10798v)) || ((TextUtils.isEmpty(this.f10797u) && "1".equals(this.f10798v)) || (TextUtils.isEmpty(this.f10798v) && "1".equals(this.f10797u)))) {
                    this.f10784h.setArrowDirection(1);
                } else if (("2".equals(this.f10797u) && "2".equals(this.f10798v)) || ((TextUtils.isEmpty(this.f10797u) && "2".equals(this.f10798v)) || (TextUtils.isEmpty(this.f10798v) && "2".equals(this.f10797u)))) {
                    this.f10784h.setArrowDirection(2);
                }
                try {
                    this.f10784h.setLineWidth(Math.min(this.f10791o, this.f10792p) / 30);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean = this.f10780d;
            String color = eulerAngleRenderBean != null ? eulerAngleRenderBean.getColor() : "#66333333";
            String title = null;
            if (!TextUtils.isEmpty(color) && color.startsWith("#")) {
                ar.a(this.f10782f, color, 0, null, this.f10791o / 2);
            }
            AdSpacesBean.BuyerBean.EulerAngleStyleBean style = this.f10779c.getStyle();
            String str = (style == null || (imgs = style.getImgs()) == null || imgs.size() <= 0) ? null : imgs.get(0);
            if (!TextUtils.isEmpty(str)) {
                f.a(this.f10778b).b(str, new f.a() { // from class: com.beizi.fusion.widget.EulerAngleView.1
                    @Override // com.beizi.fusion.tool.f.a
                    public void a() {
                    }

                    @Override // com.beizi.fusion.tool.f.a
                    public void a(Bitmap bitmap) {
                        try {
                            if (EulerAngleView.this.f10783g == null || bitmap == null) {
                                return;
                            }
                            EulerAngleView.this.f10783g.setImageBitmap(bitmap);
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                });
            }
            ShakeArcView shakeArcView2 = this.f10784h;
            if (shakeArcView2 != null) {
                shakeArcView2.setMaxProgress(100.0d);
            }
            if (style != null) {
                title = style.getTitle();
                if (this.f10800x.booleanValue()) {
                    downloadSubTitle = style.getDownloadSubTitle();
                    if (TextUtils.isEmpty(downloadSubTitle)) {
                        downloadSubTitle = "下载应用";
                    }
                } else {
                    downloadSubTitle = style.getSubTitle();
                }
            } else {
                downloadSubTitle = null;
            }
            if (!TextUtils.isEmpty(title) && (textView2 = this.f10785i) != null) {
                textView2.setText(title);
                this.f10785i.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.f10785i.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
            }
            if (TextUtils.isEmpty(downloadSubTitle) || (textView = this.f10786j) == null) {
                return;
            }
            textView.setText(downloadSubTitle);
            this.f10786j.setTextColor(Color.parseColor("#FFFFFFFF"));
            this.f10786j.setShadowLayer(5.0f, 4.0f, 4.0f, Color.parseColor("#8C000000"));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void init(Context context) {
        if (this.f10777a) {
            return;
        }
        this.f10778b = context;
        this.f10777a = true;
    }

    public void onDestroy() {
        try {
            this.f10778b = null;
            AnimatorSet animatorSet = this.f10799w;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.f10799w = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setAngle(double d10, double d11, double d12) {
        this.f10793q = d10;
        this.f10794r = d11;
        this.f10795s = d12;
    }

    public void setAnimationViewWidthAndHeight(int i10, int i11) {
        this.f10791o = i10;
        this.f10792p = i11;
    }

    public void setCurrentProgress(double d10, double d11, double d12) {
        try {
            if (this.f10784h != null) {
                double dAbs = 0.0d;
                double dAbs2 = (this.f10793q <= 0.0d || ((!"2".equals(this.f10796t) || d10 <= 0.0d) && !(("1".equals(this.f10796t) && d10 < 0.0d) || "0".equals(this.f10796t) || "3".equals(this.f10796t)))) ? 0.0d : (Math.abs(d10) * 100.0d) / this.f10793q;
                double dAbs3 = (this.f10794r <= 0.0d || ((!"2".equals(this.f10797u) || d11 >= 0.0d) && !(("1".equals(this.f10797u) && d11 > 0.0d) || "0".equals(this.f10797u) || "3".equals(this.f10797u)))) ? 0.0d : (Math.abs(d11) * 100.0d) / this.f10794r;
                if (this.f10795s > 0.0d && (("2".equals(this.f10798v) && d12 > 0.0d) || (("1".equals(this.f10798v) && d12 < 0.0d) || "0".equals(this.f10798v) || "3".equals(this.f10798v)))) {
                    dAbs = (Math.abs(d12) * 100.0d) / this.f10795s;
                }
                this.f10784h.setCurrentProgress(Math.max(Math.max(dAbs2, dAbs3), dAbs));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setDownloadApp(Boolean bool) {
        this.f10800x = bool;
    }

    public void setEulerAngleRenderBean(AdSpacesBean.BuyerBean.EulerAngleRenderBean eulerAngleRenderBean) {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            this.f10780d = eulerAngleRenderBean;
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f10779c;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null) {
                        String direction = eulerAngleRuleBean.getDirection();
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f10796t = direction;
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f10797u = direction;
                        } else if (bm.aH.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            this.f10798v = direction;
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setEulerAngleViewRuleBean(AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean) {
        this.f10779c = eulerAngleViewRuleBean;
    }

    public void startContinuousRotations() {
        List<AdSpacesBean.BuyerBean.EulerAngleRuleBean> rules;
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewRuleBean eulerAngleViewRuleBean = this.f10779c;
            if (eulerAngleViewRuleBean != null && (rules = eulerAngleViewRuleBean.getRules()) != null && rules.size() != 0) {
                ArrayList arrayList = new ArrayList();
                for (AdSpacesBean.BuyerBean.EulerAngleRuleBean eulerAngleRuleBean : rules) {
                    if (eulerAngleRuleBean != null && eulerAngleRuleBean.getAngle() != 0.0d) {
                        if ("x".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationX", 0.0f, -this.f10787k);
                                a(arrayList, "rotationX", -this.f10787k, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationX", 0.0f, this.f10787k);
                                a(arrayList, "rotationX", this.f10787k, 0.0f);
                            } else {
                                a(arrayList, "rotationX", 0.0f, this.f10787k);
                                a(arrayList, "rotationX", this.f10787k, 0.0f);
                                a(arrayList, "rotationX", 0.0f, -this.f10787k);
                                a(arrayList, "rotationX", -this.f10787k, 0.0f);
                            }
                        } else if ("y".equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationY", 0.0f, -this.f10788l);
                                a(arrayList, "rotationY", -this.f10788l, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotationY", 0.0f, this.f10788l);
                                a(arrayList, "rotationY", this.f10788l, 0.0f);
                            } else {
                                a(arrayList, "rotationY", 0.0f, this.f10788l);
                                a(arrayList, "rotationY", this.f10788l, 0.0f);
                                a(arrayList, "rotationY", 0.0f, -this.f10788l);
                                a(arrayList, "rotationY", -this.f10788l, 0.0f);
                            }
                        } else if (bm.aH.equalsIgnoreCase(eulerAngleRuleBean.getAxis())) {
                            if ("2".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotation", 0.0f, -this.f10789m);
                                a(arrayList, "rotation", -this.f10789m, 0.0f);
                            } else if ("1".equals(eulerAngleRuleBean.getDirection())) {
                                a(arrayList, "rotation", 0.0f, this.f10789m);
                                a(arrayList, "rotation", this.f10789m, 0.0f);
                            } else {
                                a(arrayList, "rotation", 0.0f, this.f10789m);
                                a(arrayList, "rotation", this.f10789m, 0.0f);
                                a(arrayList, "rotation", 0.0f, -this.f10789m);
                                a(arrayList, "rotation", -this.f10789m, 0.0f);
                            }
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    AnimatorSet animatorSet = new AnimatorSet();
                    this.f10799w = animatorSet;
                    animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.beizi.fusion.widget.EulerAngleView.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            try {
                                if (EulerAngleView.this.f10799w != null) {
                                    EulerAngleView.this.f10799w.start();
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
                    this.f10799w.playSequentially(arrayList);
                    this.f10799w.start();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(List<Animator> list, String str, float f10, float f11) {
        try {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f10783g, str, f10, f11);
            objectAnimatorOfFloat.setDuration(this.f10790n);
            list.add(objectAnimatorOfFloat);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public EulerAngleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10777a = false;
        this.f10787k = 60.0f;
        this.f10788l = 60.0f;
        this.f10789m = 30.0f;
        this.f10790n = TcMouseManager.MOUSE_STARY;
        this.f10793q = 0.0d;
        this.f10794r = 0.0d;
        this.f10795s = 0.0d;
        init(context);
    }

    public EulerAngleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10777a = false;
        this.f10787k = 60.0f;
        this.f10788l = 60.0f;
        this.f10789m = 30.0f;
        this.f10790n = TcMouseManager.MOUSE_STARY;
        this.f10793q = 0.0d;
        this.f10794r = 0.0d;
        this.f10795s = 0.0d;
        init(context);
    }
}
