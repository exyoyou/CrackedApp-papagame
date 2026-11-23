package com.join.mgps.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class n0 extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f67697a;

    public interface a {
        void report();
    }

    public n0(Context context) {
        super(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.pop_moment_type_choose_endgame, (ViewGroup) null);
        setContentView(viewInflate);
        setBackgroundDrawable(context.getResources().getDrawable(17170445));
        setWidth((int) context.getResources().getDimension(R.dimen.wdp136));
        setHeight((int) context.getResources().getDimension(R.dimen.wdp85));
        setOutsideTouchable(true);
        ((TextView) viewInflate.findViewById(R.id.tvReport)).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67667b.b(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a aVar = this.f67697a;
        if (aVar != null) {
            aVar.report();
        }
        dismiss();
    }

    public void c(a listener) {
        this.f67697a = listener;
    }
}
