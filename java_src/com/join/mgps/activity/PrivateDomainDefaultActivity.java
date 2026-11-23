package com.join.mgps.activity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.WxProgram;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import io.reactivex.functions.Consumer;
import java.io.IOException;
import java.io.InputStream;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_private_domain_default)
public class PrivateDomainDefaultActivity extends BaseDialogActivity implements View.OnClickListener {
    private View contentView;
    private View iv_close;
    TextView name;
    private RelativeLayout rl_container;
    private SimpleDraweeView sdv_image;
    private TextView tv_save_qr;
    private View v_close1;

    @Extra
    WxProgram wxProgram;

    class a implements View.OnLongClickListener {
        a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            PrivateDomainDefaultActivity.this.saveQrImage();
            return true;
        }
    }

    class b implements Consumer<com.tbruyelle.rxpermissions2.b> {
        b() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (!permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || !permission.f83019b) {
                ToastManager.show("保存失败");
                return;
            }
            PrivateDomainDefaultActivity privateDomainDefaultActivity = PrivateDomainDefaultActivity.this;
            com.join.mgps.Util.a1.a(privateDomainDefaultActivity, privateDomainDefaultActivity.readBitmap(Uri.parse(privateDomainDefaultActivity.wxProgram.getCode_url())));
            ToastManager.show("保存成功");
            PrivateDomainDefaultActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public Bitmap readBitmap(Uri uri) throws Throwable {
        Throwable th;
        InputStream inputStreamA;
        Bitmap bitmap;
        InputStream inputStream = null;
        Bitmap bitmapDecodeStream = null;
        try {
            d3.a aVarC = Fresco.getImagePipelineFactory().n().c(new com.facebook.cache.common.j(uri.toString()));
            if (aVarC != null) {
                inputStreamA = aVarC.a();
                if (inputStreamA != null) {
                    try {
                        try {
                            bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamA);
                        } catch (IOException e10) {
                            e = e10;
                            e.printStackTrace();
                            if (inputStreamA == null) {
                                return null;
                            }
                            try {
                                inputStreamA.close();
                                return null;
                            } catch (IOException e11) {
                                e11.printStackTrace();
                                return null;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStreamA != null) {
                            try {
                                inputStreamA.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                Bitmap bitmap2 = bitmapDecodeStream;
                inputStream = inputStreamA;
                bitmap = bitmap2;
            } else {
                bitmap = null;
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
            }
            return bitmap;
        } catch (IOException e14) {
            e = e14;
            inputStreamA = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamA = null;
            if (inputStreamA != null) {
                inputStreamA.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveQrImage() {
        new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new b());
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.p2.v(this);
        this.name = (TextView) findViewById(R.id.name);
        this.iv_close = findViewById(R.id.iv_close);
        this.v_close1 = findViewById(R.id.v_close1);
        this.sdv_image = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.tv_save_qr = (TextView) findViewById(R.id.tv_save_qr);
        this.rl_container = (RelativeLayout) findViewById(R.id.rl_container);
        this.contentView = findViewById(R.id.ll_content);
        this.iv_close.setOnClickListener(this);
        this.v_close1.setOnClickListener(this);
        this.tv_save_qr.setOnClickListener(this);
        this.rl_container.setOnLongClickListener(new a());
        if (getResources().getConfiguration().orientation == 2) {
            getWindow().setGravity(17);
        } else {
            getWindow().setGravity(80);
        }
        WxProgram wxProgram = this.wxProgram;
        if (wxProgram != null) {
            this.name.setText(wxProgram.getCode_text());
            com.join.android.app.common.utils.l.h(this.sdv_image, this.wxProgram.getCode_url());
            com.papa.sim.statistic.t.l(this).R1(Event.pdReserveCode, new Ext().setActType(this.wxProgram.getSceneType()));
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    public View getContentView() {
        return this.contentView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.iv_close || id2 == R.id.v_close1) {
            finish();
        } else if (id2 == R.id.tv_save_qr) {
            saveQrImage();
        }
    }
}
