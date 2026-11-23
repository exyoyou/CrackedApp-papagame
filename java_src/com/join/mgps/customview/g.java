package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ForumActivity;

/* JADX INFO: loaded from: classes3.dex */
public class g extends PopupWindow implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f66355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f66356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    RadioButton f66357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    RadioButton f66358f;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            g.this.dismiss();
            return true;
        }
    }

    public interface b {
        void a(int i10);
    }

    public g(Context context) {
        super(context);
        this.f66355c = context;
        a();
    }

    private void a() {
        this.f66354b = LayoutInflater.from(this.f66355c).inflate(R.layout.mg_forum_group_oderby_popwindow, (ViewGroup) null);
        this.f66354b.setLayoutParams(new ViewGroup.LayoutParams((int) TypedValue.applyDimension(1, 126.0f, this.f66355c.getResources().getDisplayMetrics()), -2));
        setContentView(this.f66354b);
        setWidth((int) TypedValue.applyDimension(1, 126.0f, this.f66355c.getResources().getDisplayMetrics()));
        setHeight(-2);
        e();
        b();
    }

    private void b() {
        this.f66357e = (RadioButton) this.f66354b.findViewById(R.id.latestPost);
        this.f66358f = (RadioButton) this.f66354b.findViewById(R.id.latestComment);
        this.f66357e.setOnClickListener(this);
        this.f66358f.setOnClickListener(this);
        c(ForumActivity.orderBy);
    }

    private void e() {
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    public void c(int orderBy) {
        RadioButton radioButton;
        if (this.f66357e == null || (radioButton = this.f66358f) == null) {
            return;
        }
        boolean z10 = orderBy == 1;
        radioButton.setSelected(z10);
        this.f66358f.setChecked(z10);
        this.f66357e.setSelected(!z10);
        this.f66357e.setChecked(!z10);
    }

    public void d(b listener) {
        this.f66356d = listener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.latestPost) {
            this.f66356d.a(2);
            dismiss();
        } else if (id2 == R.id.latestComment) {
            this.f66356d.a(1);
            dismiss();
        }
    }

    public g(Context mContext, int width, int height) {
        super(width, height);
        this.f66355c = mContext;
        a();
    }
}
