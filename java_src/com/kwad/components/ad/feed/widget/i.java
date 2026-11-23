package com.kwad.components.ad.feed.widget;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.R;
import com.kwad.sdk.utils.al;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends c {
    private final com.kwad.components.core.video.a.InterfaceC0882a iq;

    public i(@NonNull Context context) {
        super(context);
        this.iq = new com.kwad.components.core.video.a.InterfaceC0882a() { // from class: com.kwad.components.ad.feed.widget.i.1
            @Override // com.kwad.components.core.video.a.InterfaceC0882a
            public final void a(int i10, al.a aVar) {
                int i11;
                int i12 = 3;
                boolean z10 = false;
                if (i10 == 1) {
                    i11 = 15;
                } else if (i10 == 2) {
                    i11 = 16;
                } else if (i10 != 3) {
                    i11 = 35;
                } else {
                    i11 = 39;
                    i12 = 1;
                    z10 = true;
                }
                i.this.cp();
                com.kwad.components.core.e.d.a.a(new com.kwad.components.core.e.d.a.C0852a(i.this.getContext()).aJ(i.this.mAdTemplate).b(i.this.mApkDownloadHelper).aN(i12).as(z10).au(true).aL(5).aM(i11).d(aVar).aw(true).a(new com.kwad.components.core.e.d.a.b() { // from class: com.kwad.components.ad.feed.widget.i.1.1
                    @Override // com.kwad.components.core.e.d.a.b
                    public final void onAdClicked() {
                        i.this.zN();
                    }
                }));
            }
        };
        setRadiusDp(12);
    }

    @Override // com.kwad.components.ad.feed.widget.c, com.kwad.components.core.widget.b
    public final void bC() {
        super.bC();
        View viewFindViewById = findViewById(R.id.ksad_feed_novel_video);
        if (viewFindViewById != null) {
            viewFindViewById.setClipToOutline(true);
        }
    }

    @Override // com.kwad.components.ad.feed.widget.c
    protected final void cx() {
        this.ij.setRatio(1.7857143f);
    }

    @Override // com.kwad.components.ad.feed.widget.c
    protected final int getDefaultClickArea() {
        return 3;
    }

    @Override // com.kwad.components.core.widget.b
    public final int getLayoutId() {
        return R.layout.ksad_feed_novel_regular_video;
    }

    @Override // com.kwad.components.ad.feed.widget.c
    protected final com.kwad.components.core.video.a.InterfaceC0882a getVideoAdClickListener() {
        return this.iq;
    }

    @Override // com.kwad.components.core.widget.b
    public final void setMargin(int i10) {
        if (com.kwad.sdk.core.config.e.KD()) {
            return;
        }
        setBackgroundColor(-1);
    }
}
