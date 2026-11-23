package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.views.s;

/* JADX INFO: loaded from: classes3.dex */
public class NewInterstitialHeaderView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f81589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f81590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f81591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f81592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f81593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s f81594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f81595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private View f81596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f81597i;

    public interface a {
        void a();

        void b();
    }

    public NewInterstitialHeaderView(Context context) {
        super(context);
        a(context);
    }

    static /* synthetic */ int b(NewInterstitialHeaderView newInterstitialHeaderView) {
        int i10 = newInterstitialHeaderView.f81592d;
        newInterstitialHeaderView.f81592d = i10 - 1;
        return i10;
    }

    public void hideSoundIcon() {
        this.f81591c.setVisibility(8);
    }

    public void setAdHeaderViewStateListener(a listener) {
        this.f81597i = listener;
    }

    public void setCloseClickListener(View.OnClickListener onClickListener) {
        this.f81589a.setOnClickListener(onClickListener);
    }

    public void setSkipClickListener(View.OnClickListener onClickListener) {
        this.f81590b.setOnClickListener(onClickListener);
    }

    public void setSoundClickListener(View.OnClickListener onClickListener) {
        this.f81591c.setOnClickListener(onClickListener);
    }

    public void setSoundStatus(boolean isMute) {
        this.f81591c.setImageResource(ResourceUtil.getDrawableId(getContext(), isMute ? "sig_image_video_mute" : "sig_image_video_unmute"));
    }

    public void showCloseView() {
        this.f81589a.setVisibility(0);
    }

    public void showFeedback(boolean isLeft, View.OnClickListener onClickListener) {
        if (this.f81594f == null) {
            Context context = getContext();
            s sVar = new s(context);
            this.f81594f = sVar;
            sVar.setText("反馈");
            this.f81594f.setOnClickListener(onClickListener);
            this.f81594f.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(5.0f, context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            if (isLeft) {
                layoutParams.addRule(9);
                ((RelativeLayout.LayoutParams) this.f81591c.getLayoutParams()).addRule(1, this.f81594f.getId());
                layoutParams.setMargins(iDipsToIntPixels, 0, 0, 0);
            } else {
                layoutParams.addRule(0, this.f81596h.getId());
                layoutParams.setMargins(0, 0, iDipsToIntPixels, 0);
            }
            layoutParams.addRule(4, this.f81596h.getId());
            ViewParent parent = this.f81596h.getParent();
            if (parent == null) {
                return;
            }
            ((ViewGroup) parent).addView(this.f81594f, layoutParams);
        }
    }

    public void showSoundIcon() {
        this.f81591c.setVisibility(0);
    }

    public void startAdTimer(int seconds, boolean closeAd) {
        this.f81595g = closeAd;
        if (seconds > 0) {
            this.f81590b.setVisibility(0);
            this.f81590b.setText(String.valueOf(seconds));
            this.f81592d = seconds - 1;
            this.f81590b.setClickable(false);
            this.f81590b.postDelayed(this.f81593e, 1000L);
            return;
        }
        if (closeAd) {
            showCloseView();
            a aVar = this.f81597i;
            if (aVar != null) {
                aVar.a();
            }
            this.f81590b.setVisibility(8);
            return;
        }
        a aVar2 = this.f81597i;
        if (aVar2 != null) {
            aVar2.b();
        }
        this.f81590b.setClickable(true);
        this.f81590b.setText("   跳过   ");
    }

    public NewInterstitialHeaderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, "sig_new_interstitial_header_layout"), this);
        this.f81589a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_close"));
        this.f81596h = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_rl_root"));
        ImageView imageView = this.f81589a;
        if (imageView != null) {
            imageView.setImageBitmap(com.sigmob.sdk.base.views.p.CLOSE_OLD.a());
        }
        this.f81591c = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_sound"));
        TextView textView = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_timer"));
        this.f81590b = textView;
        textView.setClickable(false);
        this.f81593e = new Runnable() { // from class: com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.1
            @Override // java.lang.Runnable
            public void run() {
                if (NewInterstitialHeaderView.this.f81592d > 0) {
                    NewInterstitialHeaderView.this.f81590b.setText(String.valueOf(NewInterstitialHeaderView.b(NewInterstitialHeaderView.this)));
                    NewInterstitialHeaderView.this.f81590b.postDelayed(NewInterstitialHeaderView.this.f81593e, 1000L);
                    return;
                }
                if (NewInterstitialHeaderView.this.f81595g) {
                    if (NewInterstitialHeaderView.this.f81597i != null) {
                        NewInterstitialHeaderView.this.f81597i.a();
                    }
                    NewInterstitialHeaderView.this.f81590b.setVisibility(8);
                    NewInterstitialHeaderView.this.f81589a.setVisibility(0);
                } else {
                    if (NewInterstitialHeaderView.this.f81597i != null) {
                        NewInterstitialHeaderView.this.f81597i.b();
                    }
                    NewInterstitialHeaderView.this.f81590b.setClickable(true);
                    NewInterstitialHeaderView.this.f81590b.setText("   跳过   ");
                }
                NewInterstitialHeaderView.this.removeCallbacks(this);
            }
        };
    }

    public NewInterstitialHeaderView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }
}
