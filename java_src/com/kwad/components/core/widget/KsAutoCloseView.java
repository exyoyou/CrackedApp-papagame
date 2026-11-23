package com.kwad.components.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.kwad.sdk.R;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.wrapper.m;

/* JADX INFO: loaded from: classes2.dex */
public class KsAutoCloseView extends LinearLayout implements View.OnClickListener {
    private static String Fz = "%s秒后自动关闭";
    private TextView awl;
    private ImageView awm;
    private a awn;
    private boolean awo;
    private boolean awp;
    private int countDown;

    public interface a {
        void en();

        void eo();
    }

    public KsAutoCloseView(Context context) {
        super(context);
        this.countDown = 10;
        this.awo = true;
        this.awp = false;
        A(context);
    }

    private void A(Context context) {
        m.inflate(context, R.layout.ksad_auto_close, this);
        this.awl = (TextView) findViewById(R.id.ksad_auto_close_text);
        ImageView imageView = (ImageView) findViewById(R.id.ksad_auto_close_btn);
        this.awm = imageView;
        imageView.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(int i10) {
        this.awl.setText(String.format(Fz, Integer.valueOf(i10)));
    }

    static /* synthetic */ int e(KsAutoCloseView ksAutoCloseView) {
        int i10 = ksAutoCloseView.countDown;
        ksAutoCloseView.countDown = i10 - 1;
        return i10;
    }

    public final void au(int i10) {
        if (i10 <= 0) {
            return;
        }
        this.countDown = i10;
        post(new bi() { // from class: com.kwad.components.core.widget.KsAutoCloseView.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (KsAutoCloseView.this.awo) {
                    if (KsAutoCloseView.this.awp) {
                        KsAutoCloseView.this.postDelayed(this, 1000L);
                        return;
                    }
                    if (KsAutoCloseView.this.countDown == 0) {
                        if (KsAutoCloseView.this.awn != null) {
                            KsAutoCloseView.this.awn.en();
                        }
                    } else {
                        KsAutoCloseView ksAutoCloseView = KsAutoCloseView.this;
                        ksAutoCloseView.R(ksAutoCloseView.countDown);
                        KsAutoCloseView.e(KsAutoCloseView.this);
                        KsAutoCloseView.this.postDelayed(this, 1000L);
                    }
                }
            }
        });
    }

    public final void bq(boolean z10) {
        this.awo = z10;
        int i10 = z10 ? 0 : 8;
        TextView textView = this.awl;
        if (textView != null) {
            textView.setVisibility(i10);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.awn != null && view.equals(this.awm)) {
            this.awn.eo();
        }
    }

    public void setCountDownPaused(boolean z10) {
        this.awp = z10;
    }

    public void setViewListener(a aVar) {
        this.awn = aVar;
    }

    public KsAutoCloseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.countDown = 10;
        this.awo = true;
        this.awp = false;
        A(context);
    }

    public KsAutoCloseView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.countDown = 10;
        this.awo = true;
        this.awp = false;
        A(context);
    }

    @RequiresApi(api = 21)
    public KsAutoCloseView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.countDown = 10;
        this.awo = true;
        this.awp = false;
        A(context);
    }
}
