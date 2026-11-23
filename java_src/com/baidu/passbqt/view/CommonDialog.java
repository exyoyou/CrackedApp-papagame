package com.baidu.passbqt.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.baidu.passbqt.NoProguard;
import com.baidu.passbqt.R;

/* JADX INFO: loaded from: classes6.dex */
public class CommonDialog extends Dialog implements NoProguard {

    public static class Builder implements NoProguard {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f8407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CharSequence f8408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f8409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f8410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f8411e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f8412f = 100;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f8413g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private View.OnClickListener f8414h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f8415i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private View.OnClickListener f8416j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f8417k;

        public Builder(Context context) {
            this.f8407a = context;
        }

        public Builder a(boolean z10) {
            this.f8411e = z10;
            return this;
        }

        public Builder b(boolean z10) {
            this.f8410d = z10;
            return this;
        }

        public Builder a(String str) {
            this.f8409c = str;
            return this;
        }

        public Builder b(String str, View.OnClickListener onClickListener) {
            this.f8415i = str;
            this.f8416j = onClickListener;
            return this;
        }

        public Builder a(String str, View.OnClickListener onClickListener) {
            this.f8413g = str;
            this.f8414h = onClickListener;
            return this;
        }

        public Builder b(int i10) {
            this.f8412f = i10;
            return this;
        }

        public Builder a(CharSequence charSequence) {
            this.f8408b = charSequence;
            return this;
        }

        public Builder a(int i10) {
            this.f8417k = i10;
            return this;
        }

        public CommonDialog a() {
            View viewInflate = LayoutInflater.from(this.f8407a).inflate(R.layout.pass_sdk_base_ui_common_dialog, (ViewGroup) null);
            final CommonDialog commonDialog = new CommonDialog(this.f8407a, R.style.pass_base_ui_common_dialog_style);
            TextView textView = (TextView) viewInflate.findViewById(R.id.pass_base_ui_dialog_title);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.pass_base_ui_dialog_content);
            View viewFindViewById = viewInflate.findViewById(R.id.pass_base_ui_dialog_horizontal_split_line);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.negative_btn);
            TextView textView4 = (TextView) viewInflate.findViewById(R.id.positive_btn);
            View viewFindViewById2 = viewInflate.findViewById(R.id.pass_base_ui_dialog_vertical_split_line);
            textView.setText(this.f8409c);
            textView2.setText(TextUtils.isEmpty(this.f8408b) ? "" : this.f8408b);
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
            textView2.setHighlightColor(0);
            int i10 = this.f8417k;
            if (i10 > 0) {
                textView2.setGravity(i10);
            }
            textView3.setText(this.f8415i);
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.baidu.passbqt.view.CommonDialog.Builder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Builder.this.f8416j.onClick(view);
                    commonDialog.dismiss();
                }
            });
            textView4.setText(this.f8413g);
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.baidu.passbqt.view.CommonDialog.Builder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Builder.this.f8414h.onClick(view);
                    commonDialog.dismiss();
                }
            });
            commonDialog.setContentView(viewInflate);
            commonDialog.setCancelable(this.f8411e);
            commonDialog.setCanceledOnTouchOutside(this.f8411e);
            int i11 = this.f8412f;
            if (i11 != 100) {
                CommonDialog.b(textView, i11);
                CommonDialog.b(textView2, this.f8412f);
                CommonDialog.b(textView3, this.f8412f);
                CommonDialog.b(textView4, this.f8412f);
            }
            Window window = commonDialog.getWindow();
            window.setGravity(17);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.x = 30;
            attributes.y = 30;
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
            if (this.f8410d) {
                viewInflate.findViewById(R.id.pass_base_ui_dialog_root_view).setBackgroundResource(R.drawable.pass_base_ui_common_dialog_dark_bg);
                textView.setTextColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_title_dark_text_color));
                textView2.setTextColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_content_text_dark_color));
                viewFindViewById.setBackgroundColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_split_line_dark_color));
                textView3.setTextColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_negative_btn_text_dark_color));
                textView4.setTextColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_positive_btn_text_dark_color));
                viewFindViewById2.setBackgroundColor(this.f8407a.getResources().getColor(R.color.pass_base_ui_dialog_split_line_dark_color));
            }
            Context context = this.f8407a;
            if (context instanceof Activity) {
                Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
                WindowManager.LayoutParams attributes2 = commonDialog.getWindow().getAttributes();
                attributes.width = defaultDisplay.getWidth();
                attributes.height = -2;
                commonDialog.getWindow().setAttributes(attributes2);
            }
            return commonDialog;
        }
    }

    public CommonDialog(Context context, int i10) {
        super(context, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(TextView textView, int i10) {
        if (textView != null) {
            textView.setTextSize(0, (textView.getTextSize() * i10) / 100.0f);
        }
    }
}
