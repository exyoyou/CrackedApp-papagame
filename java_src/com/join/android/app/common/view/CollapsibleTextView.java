package com.join.android.app.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class CollapsibleTextView extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f34824h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f34825i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f34826j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f34827k = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f34828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f34829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f34832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f34833g;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CollapsibleTextView.this.f34832f == 2) {
                CollapsibleTextView.this.f34828b.setMaxLines(CollapsibleTextView.f34824h);
                CollapsibleTextView.this.f34829c.setVisibility(0);
                CollapsibleTextView.this.f34829c.setText(CollapsibleTextView.this.f34831e);
                CollapsibleTextView.this.f34832f = 1;
                return;
            }
            if (CollapsibleTextView.this.f34832f == 1) {
                CollapsibleTextView.this.f34828b.setMaxLines(Integer.MAX_VALUE);
                CollapsibleTextView.this.f34829c.setVisibility(0);
                CollapsibleTextView.this.f34829c.setText(CollapsibleTextView.this.f34830d);
                CollapsibleTextView.this.f34832f = 2;
            }
        }
    }

    public CollapsibleTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        i(context);
        h(context, attrs);
    }

    private void h(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CollapsibleTextView);
        this.f34828b.setTextSize(typedArrayObtainStyledAttributes.getDimension(23, 18.0f));
        this.f34828b.setTextColor(typedArrayObtainStyledAttributes.getInt(0, -16777216));
        this.f34828b.setGravity(typedArrayObtainStyledAttributes.getInt(1, 51));
        this.f34828b.setPadding(typedArrayObtainStyledAttributes.getInt(20, 0), typedArrayObtainStyledAttributes.getInt(22, 0), typedArrayObtainStyledAttributes.getInt(21, 0), typedArrayObtainStyledAttributes.getInt(19, 0));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(typedArrayObtainStyledAttributes.getInt(3, 0), typedArrayObtainStyledAttributes.getInt(5, 0), typedArrayObtainStyledAttributes.getInt(4, 0), typedArrayObtainStyledAttributes.getInt(2, 0));
        this.f34828b.setLayoutParams(layoutParams);
        this.f34828b.setText(typedArrayObtainStyledAttributes.getString(24));
        this.f34829c.setTextSize(typedArrayObtainStyledAttributes.getDimension(16, 18.0f));
        this.f34829c.setTextColor(typedArrayObtainStyledAttributes.getInt(6, -11048043));
        this.f34829c.setGravity(typedArrayObtainStyledAttributes.getInt(7, 19));
        this.f34829c.setPadding(typedArrayObtainStyledAttributes.getInt(13, 0), typedArrayObtainStyledAttributes.getInt(15, 0), typedArrayObtainStyledAttributes.getInt(14, 0), typedArrayObtainStyledAttributes.getInt(12, 0));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(typedArrayObtainStyledAttributes.getInt(9, 0), typedArrayObtainStyledAttributes.getInt(11, 0), typedArrayObtainStyledAttributes.getInt(10, 0), typedArrayObtainStyledAttributes.getInt(8, 0));
        this.f34829c.setLayoutParams(layoutParams2);
        this.f34829c.setText(typedArrayObtainStyledAttributes.getString(17));
        this.f34829c.setSingleLine(true);
        this.f34829c.setVisibility(typedArrayObtainStyledAttributes.getInt(18, 8));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void i(Context context) {
        this.f34830d = context.getString(R.string.desc_shrinkup);
        this.f34831e = context.getString(R.string.desc_spread);
        TextView textView = new TextView(context);
        this.f34828b = textView;
        textView.setId(R.id.collapsible_text_view_desc);
        TextView textView2 = new TextView(context);
        this.f34829c = textView2;
        textView2.setId(R.id.collapsible_text_view_desc_op);
        this.f34829c.setOnClickListener(this);
        addView(this.f34828b);
        addView(this.f34829c);
        setOrientation(1);
    }

    private void j() {
        this.f34832f = 2;
        requestLayout();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        this.f34833g = false;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        super.onLayout(changed, l10, t10, r10, b10);
        if (this.f34833g) {
            return;
        }
        this.f34833g = true;
        if (this.f34828b.getLineCount() > f34824h) {
            post(new a());
            return;
        }
        this.f34832f = 0;
        this.f34829c.setVisibility(8);
        this.f34828b.setMaxLines(f34824h + 1);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setDesc(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f34828b.setText(charSequence, bufferType);
        j();
    }

    public final void setDescOp(CharSequence charSequence) {
        this.f34828b.setText(charSequence);
        j();
    }

    public final void setDesc(CharSequence charSequence) {
        this.f34828b.setText(charSequence);
        j();
    }

    public CollapsibleTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        i(context);
        h(context, attrs);
    }

    public CollapsibleTextView(Context context) {
        this(context, null);
    }
}
