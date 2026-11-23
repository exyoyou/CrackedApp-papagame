package com.papa91.view;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.h;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.arc.MarketUtil;
import com.papa91.mix.R;
import com.yatoooon.screenadaptation.e;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AutoSlotDialog extends BaseDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    View f78087b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    View f78088b2;

    /* JADX INFO: renamed from: b3, reason: collision with root package name */
    View f78089b3;
    TextView buyVip;
    View buyVip1;
    View close;
    View flag;
    SimpleDraweeView img1;
    SimpleDraweeView img2;
    SimpleDraweeView img3;
    View load1;
    View load2;
    View load3;
    List<String> slots;
    TextView time1;
    TextView time2;
    TextView time3;
    int vipLevel;

    public static class ConfirmDialog extends BaseDialog {
        public ConfirmDialog(@NonNull Context context) {
            super(context);
        }

        @Override // com.papa91.view.BaseDialog, android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(false);
            setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.AutoSlotDialog.ConfirmDialog.1
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                    return i10 == 4 && keyEvent.getRepeatCount() == 0;
                }
            });
        }

        public ConfirmDialog(@NonNull Context context, int i10) {
            super(context, i10);
        }
    }

    public AutoSlotDialog(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.slots = new ArrayList();
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        EmuBaseActivity.setPause(0);
    }

    void evictImageCache(String str) {
        Uri uri = Uri.parse(str);
        h imagePipeline = Fresco.getImagePipeline();
        imagePipeline.h(uri);
        imagePipeline.f(uri);
        imagePipeline.e(uri);
    }

    String getTimeFormat(long j10) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - j10) / 1000;
        if (jCurrentTimeMillis < 60) {
            return jCurrentTimeMillis + "秒前";
        }
        if (jCurrentTimeMillis < 3600) {
            return (jCurrentTimeMillis / 60) + "分钟前";
        }
        if (jCurrentTimeMillis < 86400) {
            return ((jCurrentTimeMillis / 60) / 60) + "小时前";
        }
        if (jCurrentTimeMillis < 2592000) {
            return (((jCurrentTimeMillis / 60) / 60) / 24) + "天前";
        }
        return ((((jCurrentTimeMillis / 60) / 60) / 24) / 30) + "个月前";
    }

    void goBuyVip(Context context) {
        MarketUtil.intent(context, "4", "", "https://anv3cjapi.5fun.com/member/vip_view/fc_archive", "", "");
        EmuBaseActivity.sendEmuStat("vipAutosave", new Object[0]);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.buyVip1) {
            goBuyVip(view.getContext());
        } else if (id2 == R.id.close) {
            dismiss();
        }
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        setContentView(R.layout.dialog_auto_saved_slot);
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.papa91.view.AutoSlotDialog.1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
                return i10 == 4 && keyEvent.getRepeatCount() == 0;
            }
        });
        this.close = findViewById(R.id.close);
        this.buyVip = (TextView) findViewById(R.id.buyVip);
        this.buyVip1 = findViewById(R.id.buyVip1);
        this.flag = findViewById(R.id.flag);
        this.f78087b1 = findViewById(R.id.f78079b1);
        this.f78088b2 = findViewById(R.id.f78080b2);
        this.f78089b3 = findViewById(R.id.f78081b3);
        this.load1 = findViewById(R.id.load1);
        this.load2 = findViewById(R.id.load2);
        this.load3 = findViewById(R.id.load3);
        this.time1 = (TextView) findViewById(R.id.time1);
        this.time2 = (TextView) findViewById(R.id.time2);
        this.time3 = (TextView) findViewById(R.id.time3);
        this.img1 = (SimpleDraweeView) findViewById(R.id.img1);
        this.img2 = (SimpleDraweeView) findViewById(R.id.img2);
        this.img3 = (SimpleDraweeView) findViewById(R.id.img3);
        this.close.setOnClickListener(this);
        e.a().f(getWindow().getDecorView());
    }

    public void setVipLevel(int i10) {
        this.vipLevel = i10;
        if (isShowing()) {
            update();
        }
    }

    @Override // com.papa91.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        if (getContext().getResources().getConfiguration().orientation == 2) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.gravity = 17;
            attributes.width = -1;
            attributes.height = -1;
            getWindow().getDecorView().setPadding(0, 0, 0, 0);
            getWindow().setAttributes(attributes);
        }
    }

    void showConfirmDialog(final String str, final int i10) {
        final ConfirmDialog confirmDialog = new ConfirmDialog(getContext(), R.style.Dialog);
        confirmDialog.setContentView(R.layout.dialog_load_slot);
        confirmDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                confirmDialog.dismiss();
            }
        });
        confirmDialog.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (EmuBaseActivity.freeLoadSlot() && i10 == 0) {
                    EmuBaseActivity.freeLoadSlotSet();
                    View view2 = AutoSlotDialog.this.flag;
                    if (view2 != null) {
                        view2.setVisibility(8);
                    }
                }
                confirmDialog.dismiss();
                AutoSlotDialog.this.dismiss();
                EmuBaseActivity.loadAutoSlot(str, i10);
            }
        });
        confirmDialog.show();
    }

    void update() {
        if (this.vipLevel > 0) {
            this.flag.setVisibility(8);
            this.buyVip1.setVisibility(8);
        } else {
            this.flag.setVisibility(0);
            this.buyVip.setVisibility(8);
            this.buyVip1.setVisibility(0);
            this.buyVip1.setOnClickListener(this);
        }
        View[] viewArr = {this.f78087b1, this.f78088b2, this.f78089b3};
        View[] viewArr2 = {this.load1, this.load2, this.load3};
        TextView[] textViewArr = {this.time1, this.time2, this.time3};
        SimpleDraweeView[] simpleDraweeViewArr = {this.img1, this.img2, this.img3};
        for (final int i10 = 0; i10 < 3; i10++) {
            if (i10 >= this.slots.size()) {
                viewArr[i10].setVisibility(4);
            } else {
                viewArr[i10].setVisibility(0);
                String str = "file://" + this.slots.get(i10) + ".png";
                evictImageCache(str);
                simpleDraweeViewArr[i10].setImageURI(Uri.parse(str));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.papa91.view.AutoSlotDialog.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        EmuBaseActivity.sendEmuStat("onclickAutosave", Integer.valueOf(i10));
                        if (!EmuBaseActivity.isLogined()) {
                            EmuBaseActivity.sign();
                            Toast.makeText(view.getContext(), "该功能需登录后使用", 0).show();
                        } else if (AutoSlotDialog.this.vipLevel < 1 && (!EmuBaseActivity.freeLoadSlot() || i10 != 0)) {
                            Toast.makeText(view.getContext(), "开通会员即可读取该存档", 0).show();
                        } else {
                            AutoSlotDialog autoSlotDialog = AutoSlotDialog.this;
                            autoSlotDialog.showConfirmDialog(autoSlotDialog.slots.get(i10), i10);
                        }
                    }
                };
                viewArr2[i10].setOnClickListener(onClickListener);
                simpleDraweeViewArr[i10].setOnClickListener(onClickListener);
                File file = new File(this.slots.get(i10));
                if (file.exists()) {
                    textViewArr[i10].setText(getTimeFormat(file.lastModified()));
                }
                if (i10 == 0) {
                    if (!EmuBaseActivity.freeLoadSlot() || this.vipLevel >= 1) {
                        this.flag.setVisibility(8);
                    } else {
                        this.flag.setVisibility(0);
                    }
                }
            }
        }
    }

    public AutoSlotDialog(@NonNull Context context, int i10) {
        super(context, R.style.Dialog);
        this.slots = new ArrayList();
    }

    public void show(int i10, List<String> list) {
        EmuBaseActivity.setPause(1);
        this.vipLevel = i10;
        this.slots.clear();
        if (list != null) {
            this.slots.addAll(list);
        }
        if (!isShowing()) {
            show();
        }
        update();
    }
}
