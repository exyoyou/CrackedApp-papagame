package com.join.mgps.dialog;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CustomerAlertDialog extends DialogFragment {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f67274f = "CustomerAlertDialog";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f67275g = "title";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f67276h = "hint";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f67277i = "cancel_str";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f67278j = "ok_str";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f67279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Button f67282e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CustomerAlertDialog.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            org.greenrobot.eventbus.c.f().q("ok");
            CustomerAlertDialog.this.dismiss();
        }
    }

    class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int keyCode, KeyEvent keyEvent) {
            return keyCode == 4 && keyEvent.getRepeatCount() == 0;
        }
    }

    public static CustomerAlertDialog a(String title, String hint, String leftBtnStr, String rightBtnStr) {
        CustomerAlertDialog customerAlertDialog = new CustomerAlertDialog();
        Bundle bundle = new Bundle();
        bundle.putString("title", title);
        bundle.putString("hint", hint);
        bundle.putString(f67277i, leftBtnStr);
        bundle.putString(f67278j, rightBtnStr);
        customerAlertDialog.setArguments(bundle);
        return customerAlertDialog;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = new Dialog(getActivity(), R.style.MyDialog);
        View viewInflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(R.layout.dialog_customer_alert, (ViewGroup) null, false);
        this.f67279b = (TextView) viewInflate.findViewById(R.id.tip_title);
        this.f67280c = (TextView) viewInflate.findViewById(R.id.dialog_content);
        this.f67281d = (Button) viewInflate.findViewById(R.id.dialog_button_cancle);
        this.f67282e = (Button) viewInflate.findViewById(R.id.dialog_button_ok);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f67279b.setText(arguments.getString("title"));
            this.f67280c.setText(arguments.getString("hint"));
            this.f67281d.setText(arguments.getString(f67277i));
            this.f67282e.setText(arguments.getString(f67278j));
        }
        this.f67281d.setOnClickListener(new a());
        this.f67282e.setOnClickListener(new b());
        dialog.setContentView(viewInflate);
        dialog.setCanceledOnTouchOutside(false);
        dialog.setOnKeyListener(new c());
        return dialog;
    }
}
