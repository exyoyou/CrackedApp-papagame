package com.beizi.fusion.work.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.t;
import com.beizi.fusion.R;
import com.beizi.fusion.c.e;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.l;
import com.beizi.fusion.widget.CustomRoundImageView;

/* JADX INFO: loaded from: classes6.dex */
public class c extends a {
    private LinearLayout V;
    private LinearLayout W;
    private FrameLayout X;
    private CustomRoundImageView Y;
    private TextView Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private TextView f11114aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private TextView f11115ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private ImageView f11116ac;

    public c(Context context, String str, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar, float f10, float f11) {
        super(context, str, j10, j11, buyerBean, forwardBean, eVar, f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aF() {
        try {
            AdSpacesBean.ComplainBean complainBean = this.N;
            if (complainBean != null && complainBean.getOpen() == 1) {
                l lVar = new l();
                lVar.a(((a) this).f11064n, ((a) this).f11070t, "2");
                lVar.a(new l.a() { // from class: com.beizi.fusion.work.c.c.1
                    @Override // com.beizi.fusion.tool.l.a
                    public void a(String str) {
                        try {
                            c cVar = c.this;
                            as.a(((a) cVar).f11064n, cVar.O, (Object) Long.valueOf(System.currentTimeMillis()));
                            ((com.beizi.fusion.work.a) c.this).f10979b.setComplain(str);
                            c.this.ao();
                            c.this.H();
                            c.this.aG();
                            if (((com.beizi.fusion.work.a) c.this).f10981d != null && ((com.beizi.fusion.work.a) c.this).f10981d.t() != 2) {
                                ((com.beizi.fusion.work.a) c.this).f10981d.b(c.this.f(), ((a) c.this).f11071u);
                            }
                            c.this.F();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aG() {
        try {
            LinearLayout linearLayout = new LinearLayout(((a) this).f11064n);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
            ImageView imageView = new ImageView(((a) this).f11064n);
            imageView.setImageResource(R.drawable.beizi_icon_checkbox);
            imageView.setColorFilter(Color.parseColor("#000000"));
            linearLayout.addView(imageView);
            TextView textView = new TextView(((a) this).f11064n);
            textView.setText("投诉成功，我们将重视您的反馈。");
            textView.setTextColor(Color.parseColor("#000000"));
            textView.setTextSize(2, 13.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 30, 0, 0);
            linearLayout.addView(textView, layoutParams);
            ((a) this).f11071u.measure(0, 0);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(((a) this).f11071u.getMeasuredWidth(), ((a) this).f11071u.getMeasuredHeight());
            layoutParams2.gravity = 17;
            ((a) this).f11070t.addView(linearLayout, layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aH() {
        View viewA;
        try {
            com.beizi.ad.e eVar = this.K;
            if (eVar == null || eVar.m() == null || (viewA = com.beizi.ad.internal.c.d.a(((a) this).f11064n, this.K)) == null) {
                return;
            }
            this.X.measure(0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.X.getMeasuredWidth() * 2) / 3, -2);
            layoutParams.gravity = 83;
            this.X.addView(viewA, layoutParams);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aI() {
        try {
            com.beizi.ad.e eVar = this.K;
            if (eVar == null) {
                return;
            }
            h.a((Context) null).a(eVar.b(), new h.a() { // from class: com.beizi.fusion.work.c.c.2
                /* JADX WARN: Code duplicated, block: B:14:0x007a  */
                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    int i10;
                    ViewGroup.LayoutParams layoutParams;
                    if (bitmap != null) {
                        try {
                            if (((a) c.this).f11064n == null) {
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("showBeiZiNativeAd onBitmapLoaded width:");
                            sb2.append(bitmap.getWidth());
                            sb2.append(";height:");
                            sb2.append(bitmap.getHeight());
                            int width = bitmap.getWidth();
                            int height = bitmap.getHeight();
                            float f10 = (float) ((((double) width) * 1.0d) / ((double) height));
                            c cVar = c.this;
                            int iA = au.a(((a) cVar).f11064n, ((a) cVar).f11068r - 16.0f);
                            int i11 = (int) (iA / f10);
                            c cVar2 = c.this;
                            if (((a) cVar2).f11069s > 0.0f) {
                                int measuredHeight = 0;
                                if (cVar2.W != null) {
                                    c.this.W.measure(0, 0);
                                    measuredHeight = c.this.W.getMeasuredHeight();
                                }
                                c cVar3 = c.this;
                                int iA2 = au.a(((a) cVar3).f11064n, ((a) cVar3).f11069s - 16.0f);
                                if (iA2 > measuredHeight) {
                                    i10 = iA2 - measuredHeight;
                                } else {
                                    i10 = i11;
                                }
                            } else {
                                i10 = i11;
                            }
                            c cVar4 = c.this;
                            cVar4.S = iA;
                            cVar4.T = i10;
                            if (i10 < 0) {
                                cVar4.T = height;
                            }
                            if (cVar4.Y != null && (layoutParams = c.this.Y.getLayoutParams()) != null) {
                                layoutParams.width = iA;
                                layoutParams.height = i10;
                                c.this.Y.setLayoutParams(layoutParams);
                            }
                            if (c.this.Y != null) {
                                c.this.Y.setRectRadius(au.a(((a) c.this).f11064n, 4.0f));
                                c cVar5 = c.this;
                                cVar5.a(iA, i10, f10, bitmap, cVar5.Y);
                                c.this.Y.setImageBitmap(bitmap);
                            }
                            c cVar6 = c.this;
                            cVar6.a(cVar6.Y);
                            c.this.aF();
                            c.this.aH();
                            c.this.aJ();
                            c.this.az();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            c.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
                        }
                    }
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                    c.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aJ() {
        try {
            if (this.K == null) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(((a) this).f11064n);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(((a) this).f11064n, this.K.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(((a) this).f11064n, this.K.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            ((a) this).f11070t.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 53));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            if (aC()) {
                layoutParams2.setMargins(0, au.a(((a) this).f11064n, 16.0f), au.a(((a) this).f11064n, 40.0f), 0);
            } else {
                layoutParams2.setMargins(0, au.a(((a) this).f11064n, 16.0f), au.a(((a) this).f11064n, 16.0f), 0);
            }
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.c.a
    public void a(com.beizi.ad.e eVar) {
        try {
            ImageView imageView = new ImageView(((a) this).f11064n);
            int iA = au.a(((a) this).f11064n, 24.0f) + 42;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
            int iA2 = au.a(((a) this).f11064n, 16.0f);
            int iA3 = au.a(((a) this).f11064n, 8.0f);
            imageView.setPadding(iA3, iA2, iA2, iA3);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.beizi_close_two);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA, iA);
            layoutParams2.gravity = 5;
            ((a) this).f11070t.addView(imageView, layoutParams2);
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.c.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 1) {
                        return false;
                    }
                    ((a) c.this).F = motionEvent.getX();
                    ((a) c.this).G = motionEvent.getY();
                    ((a) c.this).H = motionEvent.getRawX();
                    c.this.I = motionEvent.getRawY();
                    return false;
                }
            });
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.c.c.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (c.this.aD()) {
                            c cVar = c.this;
                            cVar.U = false;
                            c.this.a(new String[]{String.valueOf(((a) cVar).F), String.valueOf(((a) c.this).G), String.valueOf(((a) c.this).H), String.valueOf(c.this.I)}, 0);
                        } else {
                            c.this.aE();
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

    @Override // com.beizi.fusion.work.c.a
    public void b() {
        try {
            if (this.K == null) {
                d(-991);
                return;
            }
            View viewInflate = LayoutInflater.from(((a) this).f11064n).inflate(R.layout.beizi_layout_native_top_picture_bottom_text_view, (ViewGroup) null);
            this.M = viewInflate;
            this.V = (LinearLayout) viewInflate.findViewById(R.id.native_ad_tpbt_container_ll);
            this.X = (FrameLayout) this.M.findViewById(R.id.native_ad_tpbt_img_container_fl);
            this.Y = (CustomRoundImageView) this.M.findViewById(R.id.native_ad_tpbt_image_iv);
            this.W = (LinearLayout) this.M.findViewById(R.id.native_ad_tpbt_content_ll);
            this.Z = (TextView) this.M.findViewById(R.id.native_ad_tpbt_title_tv);
            this.f11114aa = (TextView) this.M.findViewById(R.id.native_ad_tpbt_subtitle_tv);
            this.f11115ab = (TextView) this.M.findViewById(R.id.native_ad_tpbt_go_tv);
            this.f11116ac = (ImageView) this.M.findViewById(R.id.native_ad_tpbt_go_iv);
            int iA = au.a(((a) this).f11064n, ((a) this).f11068r);
            float f10 = ((a) this).f11069s;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, f10 > 0.0f ? au.a(((a) this).f11064n, f10) : -2);
            int iA2 = au.a(((a) this).f11064n, 8.0f);
            LinearLayout linearLayout = this.V;
            if (linearLayout != null) {
                linearLayout.setPadding(iA2, iA2, iA2, iA2);
                this.V.setLayoutParams(layoutParams);
            }
            LinearLayout linearLayout2 = this.W;
            if (linearLayout2 != null) {
                linearLayout2.setPadding(0, au.a(((a) this).f11064n, 8.0f), 0, au.a(((a) this).f11064n, 8.0f));
            }
            String strA = this.K.a();
            if (this.Z != null && !TextUtils.isEmpty(strA)) {
                this.Z.setText(strA);
            }
            String strC = this.K.c();
            if (this.f11114aa != null && !TextUtils.isEmpty(strC)) {
                this.f11114aa.setText(strC);
            }
            TextView textView = this.f11115ab;
            if (textView != null) {
                textView.setBackground(((a) this).f11064n.getDrawable(R.drawable.beizi_bg_operate_button));
            }
            if (this.f11116ac != null) {
                this.f11116ac.setLayoutParams(new RelativeLayout.LayoutParams(au.a(((a) this).f11064n, 63.0f), au.a(((a) this).f11064n, 24.0f)));
                this.f11116ac.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            a(this.f11115ab, this.f11116ac);
            aI();
            aA();
            aB();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
