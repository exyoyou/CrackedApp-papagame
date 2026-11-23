package r3;

import android.graphics.drawable.Animatable;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a extends com.facebook.drawee.controller.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f96750c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f96751d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private b f96752e;

    public a(@Nullable b imageLoadingTimeListener) {
        this.f96752e = imageLoadingTimeListener;
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void onFinalImageSet(String id2, @Nullable Object imageInfo, @Nullable Animatable animatable) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f96751d = jCurrentTimeMillis;
        b bVar = this.f96752e;
        if (bVar != null) {
            bVar.a(jCurrentTimeMillis - this.f96750c);
        }
    }

    @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
    public void onSubmit(String id2, Object callerContext) {
        this.f96750c = System.currentTimeMillis();
    }
}
