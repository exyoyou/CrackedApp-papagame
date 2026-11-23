package com.kwad.components.core.innerEc.live.b.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.kwad.sdk.R;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.ae;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.widget.KSLinearLayout;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends com.kwad.components.core.innerEc.live.b.a.a {
    private EditText Vs;
    private View Vt;
    private boolean Wi;
    private ViewGroup.MarginLayoutParams Wp;
    private KSLinearLayout Wq;
    private ViewGroup Wr;
    private String Ws;
    private TextView Wt;
    private View Wu;
    private ViewGroup.MarginLayoutParams Wv;
    private int Ww;
    private int Wx;
    private ViewTreeObserver.OnGlobalLayoutListener qE;
    private final Handler jk = new Handler(Looper.getMainLooper());
    private boolean Wj = false;
    private int Wk = 0;
    private boolean Wl = false;
    private boolean Wm = false;
    private int Wn = 0;
    private ValueAnimator Wo = null;

    /* JADX INFO: Access modifiers changed from: private */
    public void aW(int i10) {
        aY(i10);
        this.Wi = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aX(int i10) {
        if (this.Wi) {
            if (i10 == 0) {
                sc();
            }
            aY(i10);
        }
    }

    private void aY(int i10) {
        if (this.Wm) {
            final boolean z10 = ((float) i10) < 200.0f;
            if (this.Wn != i10) {
                ValueAnimator valueAnimator = this.Wo;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.Wn = i10;
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.Wp.bottomMargin, i10);
                this.Wo = valueAnimatorOfInt;
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kwad.components.core.innerEc.live.b.c.g.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        g.this.Wp.bottomMargin = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                        g.this.Wq.setLayoutParams(g.this.Wp);
                        if (z10) {
                            g.this.Wv.bottomMargin = (g.this.Ww - ((Integer) valueAnimator2.getAnimatedValue()).intValue()) + 66;
                        } else {
                            g.this.Wv.bottomMargin = (g.this.Ww + ((Integer) valueAnimator2.getAnimatedValue()).intValue()) - 66;
                        }
                        g.this.Wu.setLayoutParams(g.this.Wv);
                    }
                });
                this.Wo.addListener(new AnimatorListenerAdapter() { // from class: com.kwad.components.core.innerEc.live.b.c.g.6
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        if (z10) {
                            g.this.Wr.setVisibility(8);
                            g.this.Wv.bottomMargin = g.this.Ww;
                            g.this.Wu.setLayoutParams(g.this.Wv);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator, boolean z11) {
                        super.onAnimationStart(animator, z11);
                    }
                });
                this.Wo.setDuration(z10 ? 30L : 200L);
                this.Wo.setInterpolator(new DecelerateInterpolator());
                this.Wo.start();
            }
        }
    }

    private void sc() {
        this.Wr.setVisibility(8);
        try {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.Wr.getWindowToken(), 2);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    private void sj() {
        int iSK = com.kwad.components.core.innerEc.live.i.c.sK();
        if (iSK >= 0) {
            aY(iSK);
        } else {
            aY(com.kwad.components.core.innerEc.live.i.c.c(ServiceProvider.getContext(), false));
        }
    }

    private void sk() {
        if (this.qE == null) {
            this.qE = y(findViewById(R.id.ksad_live_frag_root));
        }
        getRootView().getViewTreeObserver().addOnGlobalLayoutListener(this.qE);
    }

    private void sl() {
        this.Vs.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.kwad.components.core.innerEc.live.b.c.g.2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                if (keyEvent == null) {
                    return false;
                }
                return i10 == 6 || keyEvent.getKeyCode() == 66;
            }
        });
        this.Vs.addTextChangedListener(new TextWatcher() { // from class: com.kwad.components.core.innerEc.live.b.c.g.3
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
                g.this.Ws = charSequence.toString().trim().replace("\n", "").replace("\r", "");
                g.this.Vt.setVisibility(TextUtils.isEmpty(g.this.Ws) ? 8 : 0);
                g.this.Vs.setHeight((g.this.Vs.getLineHeight() * g.this.Vs.getLineCount()) + com.kwad.sdk.c.a.a.a(g.this.getContext(), 16.0f));
                if (g.this.Ws.length() > 34) {
                    g.this.Vs.setText(g.this.Ws.subSequence(0, 34));
                    g.this.Vs.setSelection(g.this.Ws.length());
                    ae.W(ServiceProvider.getContext(), "字数超出最大限制");
                }
                g.this.Wt.setVisibility(g.this.Ws.length() > 22 ? 0 : 8);
                g.this.Wt.setText(String.valueOf(34 - g.this.Ws.length()));
                g.this.Wt.setTextColor(Color.parseColor(g.this.Ws.length() == 34 ? "#FE3666" : "#C6C6C6"));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sm() {
        this.Wj = true;
        if (this.Wl && !this.Wi && com.kwad.sdk.c.a.a.by(ServiceProvider.getContext()) == 0) {
            this.Wk = 0;
            aW(0);
            com.kwad.components.core.innerEc.live.i.c.bc(this.Wk);
        }
    }

    private void sn() {
        if (this.qE != null) {
            getRootView().getViewTreeObserver().removeOnGlobalLayoutListener(this.qE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() {
        try {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.Vs, 1);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    private ViewTreeObserver.OnGlobalLayoutListener y(final View view) {
        return new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kwad.components.core.innerEc.live.b.c.g.4
            private int Wz = 0;
            private boolean WA = false;

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Context context = ServiceProvider.getContext();
                if (g.this.getActivity() != null) {
                    g.this.getActivity().getWindow();
                }
                int iAz = com.kwad.components.core.innerEc.live.i.c.az(context);
                Rect rect = new Rect();
                view.getWindowVisibleDisplayFrame(rect);
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int height = view.getHeight();
                com.kwad.sdk.core.d.c.w("LiveInputPresenter", "rect:" + rect + ",location:" + Arrays.toString(iArr) + ", viewHeight: " + height);
                int iHeight = rect.height();
                if (iHeight <= height) {
                    height = iHeight;
                }
                int i10 = height - 0;
                com.kwad.sdk.core.d.c.w("LiveInputPresenter", "visibleHeight:" + i10 + ",curNavigationVisible:false,curNavigationHeight:0,location[1]:" + iArr[1]);
                int i11 = i10 - this.Wz;
                int iB = com.kwad.components.core.innerEc.live.i.c.b(ServiceProvider.getContext(), false);
                int i12 = i11 - 0;
                int i13 = this.Wz;
                if (i13 == 0 || i13 == i10) {
                    if (!g.this.Wi && this.Wz == i10 && !g.this.Wj) {
                        g.this.jk.removeCallbacksAndMessages(null);
                        g.this.jk.postDelayed(new bi() { // from class: com.kwad.components.core.innerEc.live.b.c.g.4.1
                            @Override // com.kwad.sdk.utils.bi
                            public final void doTask() {
                                g.this.sm();
                            }
                        }, 600L);
                    }
                    this.Wz = i10;
                    this.WA = false;
                    return;
                }
                if (!g.a(g.this, Math.abs(i12) + rect.top + this.Wz + 0, iB) && !g.a(g.this, Math.abs(i12) + rect.top + i10 + 0, iB) && ((g.this.Wk <= 0 || !g.a(g.this, Math.abs(i12), g.this.Wk)) && ((com.kwad.components.core.innerEc.live.i.c.sK() <= 0 || !g.a(g.this, Math.abs(i12), com.kwad.components.core.innerEc.live.i.c.sK())) && (g.this.Wi || Math.abs(i12) <= com.kwad.components.core.innerEc.live.i.c.ay(g.this.getContext()))))) {
                    if (!g.this.Wi) {
                        Math.abs(i12);
                        com.kwad.components.core.innerEc.live.i.c.ay(g.this.getContext());
                    }
                    if ((!this.WA || !g.a(g.this, Math.abs(i12), iAz)) && g.this.Wi) {
                        int iBy = com.kwad.sdk.c.a.a.by(ServiceProvider.getContext());
                        if (iBy <= 0) {
                            iBy = (iB - (rect.top + i10)) + 0;
                        }
                        g.this.Wk = iBy;
                        g gVar = g.this;
                        gVar.aX(gVar.Wk);
                        com.kwad.components.core.innerEc.live.i.c.bc(g.this.Wk);
                    }
                } else if (i12 < 0) {
                    if (this.WA) {
                        i12 -= iAz;
                    }
                    g.this.Wk = -i12;
                    g gVar2 = g.this;
                    gVar2.aW(gVar2.Wk);
                    com.kwad.components.core.innerEc.live.i.c.bc(g.this.Wk);
                } else {
                    g.this.aX(0);
                }
                this.Wz = i10;
                this.WA = false;
            }
        };
    }

    @Override // com.kwad.components.core.innerEc.live.b.a.a, com.kwad.sdk.mvp.Presenter
    public final void ay() {
        super.ay();
        this.Ub.UN = new com.kwad.sdk.g.b<Object, Object>() { // from class: com.kwad.components.core.innerEc.live.b.c.g.1
            @Override // com.kwad.sdk.g.b
            public final Object apply(Object obj) {
                g.a(g.this, true);
                g.this.Wr.setVisibility(0);
                g.this.Vs.requestFocus();
                g.this.Wq.setVisibility(0);
                g.this.so();
                return null;
            }
        };
        sj();
        sk();
        sl();
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onCreate() {
        super.onCreate();
        KSLinearLayout kSLinearLayout = (KSLinearLayout) findViewById(R.id.ksad_comment_edit_layout);
        this.Wq = kSLinearLayout;
        this.Wp = (ViewGroup.MarginLayoutParams) kSLinearLayout.getLayoutParams();
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.comment_edit_root);
        this.Wr = viewGroup;
        viewGroup.setVisibility(8);
        this.Vs = (EditText) findViewById(R.id.ksad_comment_edit);
        View viewFindViewById = findViewById(R.id.ksad_comment_send);
        this.Vt = viewFindViewById;
        viewFindViewById.setVisibility(8);
        this.Wt = (TextView) findViewById(R.id.ksad_comment_edit_count);
        View viewFindViewById2 = findViewById(R.id.ksad_live_ad_container);
        this.Wu = viewFindViewById2;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams();
        this.Wv = marginLayoutParams;
        this.Ww = marginLayoutParams.bottomMargin;
        KSLinearLayout kSLinearLayout2 = this.Wq;
        kSLinearLayout2.setRadius(com.kwad.sdk.c.a.a.a(kSLinearLayout2.getContext(), 24.0f), com.kwad.sdk.c.a.a.a(this.Wq.getContext(), 24.0f), 0.0f, 0.0f);
        this.Wx = com.kwad.sdk.c.a.a.l(getActivity());
    }

    @Override // com.kwad.sdk.mvp.Presenter
    public final void onUnbind() {
        super.onUnbind();
        sn();
        sc();
    }

    private static boolean k(int i10, int i11) {
        return Math.abs(i10 - i11) <= 0;
    }

    static /* synthetic */ boolean a(g gVar, int i10, int i11) {
        return k(i10, i11);
    }

    static /* synthetic */ boolean a(g gVar, boolean z10) {
        gVar.Wm = true;
        return true;
    }
}
