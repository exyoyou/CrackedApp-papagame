package com.byazt.rrb;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.byazt.nr.z;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_D_VALUE, 20})
public class c extends com.byazt.jn.c {
    public c(Context context) {
        super(context);
    }

    @Override // com.byazt.jn.c
    public void sl(String str) {
        z.c(this.tt, str, new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.rrb.c.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                c.this.tt(new BitmapDrawable(c.this.tt.getResources(), bitmap));
            }
        }, 320);
    }
}
