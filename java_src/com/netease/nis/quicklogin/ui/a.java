package com.netease.nis.quicklogin.ui;

import android.content.Context;
import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.bykv.vk.component.ttvideo.player.C;
import com.netease.nis.quicklogin.listener.ClickEventListener;

/* JADX INFO: loaded from: classes2.dex */
public class a extends ClickableSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ClickEventListener f76122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f76123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f76125d;

    public a(ClickEventListener clickEventListener, String str, String str2, int i10) {
        this.f76122a = clickEventListener;
        this.f76123b = str;
        this.f76124c = str2;
        this.f76125d = i10;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        ClickEventListener clickEventListener = this.f76122a;
        if (clickEventListener != null) {
            clickEventListener.onClick(1, this.f76125d);
        }
        Context context = view.getContext();
        Intent intent = new Intent(context, (Class<?>) ProtocolDetailActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("url", this.f76123b);
        intent.putExtra("title", this.f76124c);
        context.startActivity(intent);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setUnderlineText(false);
        textPaint.clearShadowLayer();
    }
}
