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
import com.beizi.fusion.tool.ar;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.l;
import com.beizi.fusion.widget.CustomRoundImageView;

/* JADX INFO: loaded from: classes6.dex */
public class b extends a {
    private RelativeLayout V;
    private TextView W;
    private TextView X;
    private TextView Y;
    private ImageView Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private ImageView f11108aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private CustomRoundImageView f11109ab;

    public b(Context context, String str, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar, float f10, float f11) {
        super(context, str, j10, j11, buyerBean, forwardBean, eVar, f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aF() {
        try {
            AdSpacesBean.ComplainBean complainBean = this.N;
            if (complainBean != null && complainBean.getOpen() == 1) {
                l lVar = new l();
                lVar.a(((a) this).f11064n, ((a) this).f11070t, "3");
                lVar.a(new l.a() { // from class: com.beizi.fusion.work.c.b.1
                    @Override // com.beizi.fusion.tool.l.a
                    public void a(String str) {
                        try {
                            b bVar = b.this;
                            as.a(((a) bVar).f11064n, bVar.O, (Object) Long.valueOf(System.currentTimeMillis()));
                            ((com.beizi.fusion.work.a) b.this).f10979b.setComplain(str);
                            b.this.ao();
                            b.this.H();
                            b.this.aG();
                            if (((com.beizi.fusion.work.a) b.this).f10981d != null && ((com.beizi.fusion.work.a) b.this).f10981d.t() != 2) {
                                ((com.beizi.fusion.work.a) b.this).f10981d.b(b.this.f(), ((a) b.this).f11071u);
                            }
                            b.this.F();
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
            linearLayout.setOrientation(0);
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
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(20, 0, 0, 0);
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
            ((a) this).f11070t.measure(0, 0);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((((a) this).f11070t.getMeasuredWidth() * 2) / 3, -2);
            layoutParams.gravity = 83;
            ((a) this).f11070t.addView(viewA, layoutParams);
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
            h.a((Context) null).a(eVar.b(), new h.a() { // from class: com.beizi.fusion.work.c.b.2
                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    ViewGroup.LayoutParams layoutParams;
                    if (bitmap != null) {
                        try {
                            if (((a) b.this).f11064n == null) {
                                return;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("showBeiZiUnifiedCustomAd onBitmapLoaded width:");
                            sb2.append(bitmap.getWidth());
                            sb2.append(";height:");
                            sb2.append(bitmap.getHeight());
                            int width = bitmap.getWidth();
                            int height = bitmap.getHeight();
                            float f10 = (float) ((((double) width) * 1.0d) / ((double) height));
                            b bVar = b.this;
                            int iA = (int) (((double) au.a(((a) bVar).f11064n, ((a) bVar).f11068r)) * 0.285d);
                            b bVar2 = b.this;
                            float f11 = ((a) bVar2).f11069s;
                            int iA2 = f11 > 0.0f ? au.a(((a) bVar2).f11064n, f11) - au.a(((a) b.this).f11064n, 20.0f) : (int) (iA / f10);
                            b bVar3 = b.this;
                            bVar3.S = iA;
                            bVar3.T = iA2;
                            if (iA2 < 0) {
                                bVar3.T = height;
                            }
                            if (bVar3.f11109ab != null && (layoutParams = b.this.f11109ab.getLayoutParams()) != null) {
                                layoutParams.width = iA;
                                layoutParams.height = iA2;
                                b.this.f11109ab.setLayoutParams(layoutParams);
                            }
                            if (b.this.f11109ab != null) {
                                b.this.f11109ab.setRectRadius(au.a(((a) b.this).f11064n, 8.0f));
                                b bVar4 = b.this;
                                bVar4.a(iA, iA2, f10, bitmap, bVar4.f11109ab);
                                b.this.f11109ab.setImageBitmap(bitmap);
                            }
                            b bVar5 = b.this;
                            bVar5.a(bVar5.f11109ab);
                            b.this.aF();
                            b.this.aH();
                            b.this.aJ();
                            b.this.az();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                    b.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
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
            ((a) this).f11070t.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams2.setMargins(0, 0, 15, 15);
            linearLayout.setLayoutParams(layoutParams2);
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
            View viewInflate = LayoutInflater.from(((a) this).f11064n).inflate(R.layout.beizi_layout_native_left_text_right_picture_view, (ViewGroup) null);
            this.M = viewInflate;
            this.V = (RelativeLayout) viewInflate.findViewById(R.id.native_ad_ltrg_content_rl);
            LinearLayout linearLayout = (LinearLayout) this.M.findViewById(R.id.native_ad_ltrg_title_ll);
            this.W = (TextView) this.M.findViewById(R.id.native_ad_ltrg_title_tv);
            RelativeLayout relativeLayout = (RelativeLayout) this.M.findViewById(R.id.native_ad_ltrg_subtitle_rl);
            this.X = (TextView) this.M.findViewById(R.id.native_ad_ltrg_subtitle_tv);
            this.Y = (TextView) this.M.findViewById(R.id.native_ad_ltrg_go_tv);
            this.Z = (ImageView) this.M.findViewById(R.id.native_ad_ltrg_go_iv);
            this.f11109ab = (CustomRoundImageView) this.M.findViewById(R.id.native_ad_ltrg_image_iv);
            this.f11108aa = (ImageView) this.M.findViewById(R.id.native_ad_ltrg_ad_text_iv);
            RelativeLayout relativeLayout2 = this.V;
            if (relativeLayout2 != null) {
                relativeLayout2.setPadding(0, au.a(((a) this).f11064n, 10.0f), au.a(((a) this).f11064n, 10.0f), 0);
            }
            if (linearLayout != null) {
                linearLayout.setPadding(au.a(((a) this).f11064n, 20.0f), au.a(((a) this).f11064n, 8.0f), au.a(((a) this).f11064n, 11.0f), 0);
            }
            String strA = this.K.a();
            if (this.W != null && !TextUtils.isEmpty(strA)) {
                this.W.setText(strA);
            }
            if (relativeLayout != null) {
                relativeLayout.setPadding(0, au.a(((a) this).f11064n, 5.0f), 0, 0);
            }
            String strC = this.K.c();
            if (this.X != null && !TextUtils.isEmpty(strC)) {
                this.X.setText(strC);
            }
            ImageView imageView = this.f11108aa;
            if (imageView != null) {
                imageView.setPadding(0, au.a(((a) this).f11064n, 10.0f), 0, 0);
            }
            TextView textView = this.Y;
            if (textView != null) {
                ar.a(textView, "#71A0FF", 0, null, au.a(((a) this).f11064n, 10.0f));
            }
            a(this.Y, this.Z);
            aI();
            aA();
            aB();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.c.a
    public void a(com.beizi.ad.e eVar) {
        try {
            ImageView imageView = new ImageView(((a) this).f11064n);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(65, 65);
            imageView.setPadding(15, 8, 8, 15);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.beizi_close);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(65, 65);
            layoutParams2.gravity = 5;
            ((a) this).f11070t.addView(imageView, layoutParams2);
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.b.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 1) {
                        return false;
                    }
                    ((a) b.this).F = motionEvent.getX();
                    ((a) b.this).G = motionEvent.getY();
                    ((a) b.this).H = motionEvent.getRawX();
                    b.this.I = motionEvent.getRawY();
                    return false;
                }
            });
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.c.b.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        if (b.this.aD()) {
                            b bVar = b.this;
                            bVar.U = false;
                            b.this.a(new String[]{String.valueOf(((a) bVar).F), String.valueOf(((a) b.this).G), String.valueOf(((a) b.this).H), String.valueOf(b.this.I)}, 0);
                        } else {
                            b.this.aE();
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
}
