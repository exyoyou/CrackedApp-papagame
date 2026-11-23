package com.join.mgps.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class e2 extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f67514a;

    public interface a {
        void a(int type);
    }

    public e2(Context context, int type) {
        super(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.pop_moment_type_choose, (ViewGroup) null);
        setContentView(viewInflate);
        setBackgroundDrawable(context.getResources().getDrawable(17170445));
        setWidth((int) context.getResources().getDimension(R.dimen.wdp136));
        setHeight((int) context.getResources().getDimension(R.dimen.wdp155));
        setOutsideTouchable(true);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.tvSelf);
        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvAll);
        textView.setTextColor(type == 1 ? Color.parseColor("#4197F8") : Color.parseColor("#232A36"));
        textView2.setTextColor(type == 2 ? Color.parseColor("#4197F8") : Color.parseColor("#232A36"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.c2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67458b.c(textView, textView2, view);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.d2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67480b.d(textView2, textView, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(TextView textView, TextView textView2, View view) {
        textView.setTextColor(Color.parseColor("#4197F8"));
        textView2.setTextColor(Color.parseColor("#232A36"));
        a aVar = this.f67514a;
        if (aVar != null) {
            aVar.a(1);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(TextView textView, TextView textView2, View view) {
        textView.setTextColor(Color.parseColor("#4197F8"));
        textView2.setTextColor(Color.parseColor("#232A36"));
        a aVar = this.f67514a;
        if (aVar != null) {
            aVar.a(2);
        }
        dismiss();
    }

    public void e(a listener) {
        this.f67514a = listener;
    }
}
