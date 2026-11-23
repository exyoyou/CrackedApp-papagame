package com.kwad.sdk.widget;

import android.app.Dialog;
import android.content.Context;
import androidx.annotation.NonNull;
import com.kwad.sdk.wrapper.m;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class c extends Dialog {
    public c(@NonNull Context context) {
        super(m.wrapContextIfNeed(context));
        requestWindowFeature(1);
    }
}
