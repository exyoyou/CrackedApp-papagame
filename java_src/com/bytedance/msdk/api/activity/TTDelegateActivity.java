package com.bytedance.msdk.api.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.bp.tt;
import com.byazt.eu.n;
import com.byazt.ka.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class TTDelegateActivity extends Activity {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Intent f23296c;

    @com.byazt.zqa.c(c = {0, 80, 2350, 2351, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 1501})
    public static class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private void c() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void tt() {
        try {
            int intExtra = this.f23296c.getIntExtra("type", 0);
            if (intExtra == 1) {
                c(intExtra, this.f23296c.getIntArrayExtra("permissions"));
                return;
            }
            if (intExtra == 2) {
                c(this.f23296c.getStringExtra("permission_id_key"), this.f23296c.getStringArrayExtra("permission_content_key"));
            } else if (intExtra != 3) {
                finish();
            } else {
                c(intExtra, (int[]) null);
            }
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        c();
        this.f23296c = getIntent();
        if (tt.getContext() == null) {
            tt.c(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (tt.getContext() == null) {
            tt.c(this);
        }
        try {
            setIntent(intent);
            this.f23296c = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        uj.c().c(this, strArr, iArr);
        n.uj(new c());
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getIntent() != null) {
            tt();
        }
    }

    private void c(final String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    uj.c().c(this, strArr, new com.byazt.ka.n() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.1
                        @Override // com.byazt.ka.n
                        public void c() {
                            com.byazt.ka.c.c(str);
                            TTDelegateActivity.this.finish();
                        }

                        @Override // com.byazt.ka.n
                        public void c(String str2) {
                            com.byazt.ka.c.c(str, str2);
                            TTDelegateActivity.this.finish();
                        }
                    });
                    return;
                } catch (Exception unused) {
                    finish();
                    return;
                }
            } else {
                com.byazt.eu.tt.c(MediationConstant.TAG, "已经有权限");
                finish();
                return;
            }
        }
        finish();
    }

    private void c(int i10, int[] iArr) {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                ArrayList arrayList = new ArrayList();
                if (i10 != 1) {
                    if (i10 == 3) {
                        arrayList.add(g.f74784h);
                        arrayList.add(g.f74783g);
                        arrayList.add(g.f74779c);
                        arrayList.add(g.f74786j);
                    }
                } else if (iArr != null && iArr.length > 0) {
                    for (int i11 : iArr) {
                        if (i11 == 1) {
                            arrayList.add(g.f74784h);
                            arrayList.add(g.f74783g);
                        } else if (i11 == 2) {
                            arrayList.add(g.f74779c);
                        } else if (i11 == 3) {
                            arrayList.add(g.f74786j);
                        }
                    }
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                uj.c().c(this, strArr, new com.byazt.ka.n() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.2
                    @Override // com.byazt.ka.n
                    public void c() {
                        com.byazt.eu.tt.c("TMe", "-------=----- onGranted");
                        n.uj(new c());
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.ka.n
                    public void c(String str) {
                        com.byazt.eu.tt.c("TMe", "-------=----- onDenied: ".concat(String.valueOf(str)));
                        g.f74779c.equals(str);
                        n.uj(new c());
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
                finish();
                return;
            }
        }
        com.byazt.eu.tt.c(MediationConstant.TAG, "已经有Read phone state权限");
        finish();
    }
}
