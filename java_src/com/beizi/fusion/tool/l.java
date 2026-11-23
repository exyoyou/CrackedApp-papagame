package com.beizi.fusion.tool;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f10629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f10630b;

    public interface a {
        void a(String str);
    }

    public void a(Context context, ViewGroup viewGroup, String str) {
        try {
            a(context, str);
            TextView textView = this.f10629a;
            if (textView != null) {
                viewGroup.addView(textView);
            }
        } catch (Exception unused) {
        }
    }

    private void a(Context context, String str) {
        try {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            this.f10629a = textView;
            textView.setText("投诉");
            this.f10629a.setTextColor(Color.parseColor("#FFFFFF"));
            ar.a(this.f10629a, "#99000000", 0, "", 30);
            if ("1".equals(str)) {
                this.f10629a.setTextSize(2, 13.0f);
                this.f10629a.setPadding(au.a(context, 12.0f), au.a(context, 1.0f), au.a(context, 12.0f), au.a(context, 1.0f));
                layoutParams.leftMargin = 18;
                layoutParams.topMargin = 18;
            } else if ("2".equals(str)) {
                this.f10629a.setTextSize(2, 13.0f);
                this.f10629a.setPadding(au.a(context, 12.0f), au.a(context, 1.0f), au.a(context, 12.0f), au.a(context, 1.0f));
                layoutParams.leftMargin = au.a(context, 16.0f);
                layoutParams.topMargin = au.a(context, 16.0f);
            } else if ("3".equals(str)) {
                this.f10629a.setTextSize(2, 10.0f);
                this.f10629a.setPadding(au.a(context, 11.0f), au.a(context, 1.0f), au.a(context, 11.0f), au.a(context, 1.0f));
                layoutParams.leftMargin = 16;
                layoutParams.topMargin = 16;
            }
            this.f10629a.setLayoutParams(layoutParams);
            a();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a() {
        try {
            this.f10629a.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.tool.l.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        Context context = l.this.f10629a.getContext();
                        View rootView = l.this.f10629a.getRootView();
                        if (rootView != null) {
                            context = rootView.getContext();
                        }
                        com.beizi.ad.internal.view.a.a.C0222a c0222a = new com.beizi.ad.internal.view.a.a.C0222a(context);
                        c0222a.a(new com.beizi.ad.internal.view.a.a.b() { // from class: com.beizi.fusion.tool.l.1.1
                            @Override // com.beizi.ad.internal.view.a.a.b
                            public void a() {
                            }

                            @Override // com.beizi.ad.internal.view.a.a.b
                            public void a(String str) {
                                if (l.this.f10630b != null) {
                                    l.this.f10630b.a(str);
                                }
                            }
                        });
                        c0222a.a().show();
                    } catch (Exception e10) {
                        ac.c("BeiZis", "e ：" + e10);
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(a aVar) {
        this.f10630b = aVar;
    }
}
