package com.byazt.oq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.gt;
import com.byazt.ga.i;
import com.byazt.ga.uj;
import com.byazt.ga.ve;
import com.byazt.yj.da;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2278})
public class DynamicLottieView extends LottieAnimationView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18212a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Bitmap> f18213c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18214n;
    public int sp;
    public String tt;
    public boolean uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Map<String, String> f18215x;

    public DynamicLottieView(Context context) {
        super(context);
        this.f18213c = new HashMap();
    }

    private void da() {
        setImageAssetDelegate(new uj() { // from class: com.byazt.oq.DynamicLottieView.3
            @Override // com.byazt.ga.uj
            public Bitmap c(final i iVar) {
                if (iVar == null) {
                    return null;
                }
                final String strYp = iVar.yp();
                String strU = iVar.u();
                if (TextUtils.isEmpty(strYp) || !TextUtils.isEmpty(strU)) {
                    if (!TextUtils.isEmpty(strU) && TextUtils.isEmpty(strYp)) {
                        strYp = strU;
                    } else if (TextUtils.isEmpty(strU) || TextUtils.isEmpty(strYp)) {
                        strYp = "";
                    } else {
                        strYp = strYp + strU;
                    }
                }
                if (TextUtils.isEmpty(strYp)) {
                    return null;
                }
                Bitmap bitmap = DynamicLottieView.this.f18213c == null ? null : (Bitmap) DynamicLottieView.this.f18213c.get(strYp);
                if (bitmap != null) {
                    return bitmap;
                }
                com.byazt.mf.c.c().n().from(strYp).converter(new da() { // from class: com.byazt.oq.DynamicLottieView.3.2
                    @Override // com.byazt.yj.da
                    public Bitmap coverterTo(Bitmap bitmap2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, iVar.c(), iVar.tt(), false);
                        if (DynamicLottieView.this.f18213c != null) {
                            DynamicLottieView.this.f18213c.put(strYp, bitmapCreateScaledBitmap);
                        }
                        return bitmapCreateScaledBitmap;
                    }
                }).to(new gr<Bitmap>() { // from class: com.byazt.oq.DynamicLottieView.3.1
                    @Override // com.byazt.yj.gr
                    public void onFailed(int i10, String str, Throwable th) {
                    }

                    @Override // com.byazt.yj.gr
                    public void onSuccess(m<Bitmap> mVar) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(mVar.getResult(), iVar.c(), iVar.tt(), false);
                        if (DynamicLottieView.this.f18213c != null) {
                            DynamicLottieView.this.f18213c.put(strYp, bitmapCreateScaledBitmap);
                        }
                        DynamicLottieView.this.c(iVar.t(), bitmapCreateScaledBitmap);
                    }
                });
                if (DynamicLottieView.this.f18213c == null) {
                    return null;
                }
                return (Bitmap) DynamicLottieView.this.f18213c.get(strYp);
            }
        });
        setAnimationFromUrl(this.tt);
        c();
    }

    private void i() {
        setImageAssetDelegate(new uj() { // from class: com.byazt.oq.DynamicLottieView.1
            @Override // com.byazt.ga.uj
            public Bitmap c(final i iVar) {
                final String strU = iVar.u();
                strU.hashCode();
                switch (strU) {
                    case "{appIcon}":
                        if (DynamicLottieView.this.f18215x != null) {
                            strU = (String) DynamicLottieView.this.f18215x.get("icon");
                            break;
                        }
                        break;
                    case "{adImage}":
                    case "{slot}":
                        if (DynamicLottieView.this.f18215x != null) {
                            strU = (String) DynamicLottieView.this.f18215x.get("imageUrl");
                            break;
                        }
                        break;
                }
                Bitmap bitmap = (Bitmap) DynamicLottieView.this.f18213c.get(strU);
                if (bitmap != null) {
                    return bitmap;
                }
                com.byazt.mf.c.c().n().from(strU).type(2).converter(new da() { // from class: com.byazt.oq.DynamicLottieView.1.2
                    @Override // com.byazt.yj.da
                    public Bitmap coverterTo(Bitmap bitmap2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, iVar.c(), iVar.tt(), false);
                        DynamicLottieView.this.f18213c.put(strU, bitmapCreateScaledBitmap);
                        return bitmapCreateScaledBitmap;
                    }
                }).to(new gr<Bitmap>() { // from class: com.byazt.oq.DynamicLottieView.1.1
                    @Override // com.byazt.yj.gr
                    public void onFailed(int i10, String str, Throwable th) {
                    }

                    @Override // com.byazt.yj.gr
                    public void onSuccess(m<Bitmap> mVar) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(mVar.getResult(), iVar.c(), iVar.tt(), false);
                        DynamicLottieView.this.f18213c.put(strU, bitmapCreateScaledBitmap);
                        DynamicLottieView.this.c(iVar.t(), bitmapCreateScaledBitmap);
                    }
                });
                return (Bitmap) DynamicLottieView.this.f18213c.get(strU);
            }
        });
        setAnimationFromUrl("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/lotties/" + this.tt + ".json");
        if (this.f18215x != null) {
            gt gtVar = new gt(this);
            String str = this.f18215x.get("app_name");
            String str2 = this.f18215x.get(b.f89370k);
            String str3 = this.f18215x.get("title");
            if (this.f18214n > 0 && str.length() > this.f18214n) {
                str = str.substring(0, this.f18214n - 1) + "...";
            } else if (this.f18214n <= 0) {
                str = "";
            }
            if (this.f18212a > 0 && str3.length() > this.f18212a) {
                str3 = str3.substring(0, this.f18212a - 1) + "...";
            } else if (this.f18214n <= 0) {
                str3 = "";
            }
            if (this.sp > 0 && str2.length() > this.sp) {
                str2 = str2.substring(0, this.sp - 1) + "...";
            } else if (this.f18214n <= 0) {
                str2 = "";
            }
            gtVar.tt("{appName}", str);
            gtVar.tt("{adTitle}", str3);
            gtVar.tt("{adDesc}", str2);
            setTextDelegate(gtVar);
            setFontAssetDelegate(new ve() { // from class: com.byazt.oq.DynamicLottieView.2
                @Override // com.byazt.ga.ve
                public Typeface c(String str4) {
                    return Typeface.MONOSPACE;
                }

                @Override // com.byazt.ga.ve
                public String tt(String str4) {
                    return null;
                }
            });
        }
        c();
    }

    @Override // com.byazt.ga.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        x();
    }

    @Override // com.byazt.ga.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    public void setAnimationsLoop(boolean z10) {
        this.ve = z10;
    }

    public void setData(Map<String, String> map) {
        this.f18215x = map;
    }

    public void setImageLottieTosPath(String str) {
        this.tt = str;
    }

    public void setLottieAdDescMaxLength(int i10) {
        this.sp = i10;
    }

    public void setLottieAdTitleMaxLength(int i10) {
        this.f18212a = i10;
    }

    public void setLottieAppNameMaxLength(int i10) {
        this.f18214n = i10;
    }

    public void setOnlyLoadNetImage(boolean z10) {
        this.uj = z10;
    }

    public void x() {
        if (TextUtils.isEmpty(this.tt)) {
            return;
        }
        setProgress(0.0f);
        c(this.ve);
        if (this.uj) {
            da();
        } else {
            i();
        }
    }
}
