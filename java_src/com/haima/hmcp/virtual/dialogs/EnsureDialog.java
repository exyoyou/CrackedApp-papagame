package com.haima.hmcp.virtual.dialogs;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.haima.hmcp.R;
import com.haima.hmcp.utils.DialogUtils;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;

/* JADX INFO: loaded from: classes5.dex */
public class EnsureDialog extends Dialog {
    public EnsureDialog(@NonNull Context context, String str, final View.OnClickListener onClickListener) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hm_dialog_ensure, (ViewGroup) null, false);
        setContentView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.tvContent)).setText(str);
        ((TextView) findViewById(R.id.tvCancel)).setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
            }
        });
        ((TextView) findViewById(R.id.tvSure)).setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }
        });
    }

    @Override // android.app.Dialog
    public void show() {
        if (DialogUtils.isContextValid(getContext())) {
            try {
                super.show();
                getWindow().setGravity(17);
                WindowManager.LayoutParams attributes = getWindow().getAttributes();
                attributes.width = HmVirtualDeviceUtils.dp2px(247, getContext());
                attributes.height = HmVirtualDeviceUtils.dp2px(134, getContext());
                getWindow().setAttributes(attributes);
            } catch (WindowManager.BadTokenException e10) {
                e10.printStackTrace();
            } catch (NullPointerException e11) {
                e11.printStackTrace();
            }
        }
    }

    public EnsureDialog(@NonNull Context context, String str, final View.OnClickListener onClickListener, boolean z10) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hm_dialog_ensure_computer, (ViewGroup) null, false);
        setContentView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.tvContent)).setText(str);
        ((TextView) findViewById(R.id.tvCancel)).setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
            }
        });
        ((TextView) findViewById(R.id.tvSure)).setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.closeImg);
        if (imageView == null || !z10) {
            return;
        }
        imageView.setVisibility(0);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
            }
        });
    }

    public EnsureDialog(@NonNull Context context, String str, String str2, String str3, final View.OnClickListener onClickListener, final View.OnClickListener onClickListener2) {
        super(context, R.style.haima_hmcp_virtual_dialog);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hm_dialog_ensure_computer, (ViewGroup) null, false);
        setContentView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.tvContent)).setText(str);
        TextView textView = (TextView) findViewById(R.id.tvCancel);
        textView.setText(str3);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
                View.OnClickListener onClickListener3 = onClickListener2;
                if (onClickListener3 != null) {
                    onClickListener3.onClick(view);
                }
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.tvSure);
        textView2.setText(str2);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EnsureDialog.this.dismiss();
                View.OnClickListener onClickListener3 = onClickListener;
                if (onClickListener3 != null) {
                    onClickListener3.onClick(view);
                }
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.closeImg);
        if (imageView != null) {
            imageView.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.haima.hmcp.virtual.dialogs.EnsureDialog.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EnsureDialog.this.dismiss();
                }
            });
        }
    }
}
