package com.papa91.arc.widget.htmltext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.widget.TextView;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class HtmlAssetsImageGetter implements Html.ImageGetter {
    private final Context context;

    public HtmlAssetsImageGetter(Context context) {
        this.context = context;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        try {
            Drawable drawableCreateFromStream = Drawable.createFromStream(this.context.getAssets().open(str), null);
            drawableCreateFromStream.setBounds(0, 0, drawableCreateFromStream.getIntrinsicWidth(), drawableCreateFromStream.getIntrinsicHeight());
            return drawableCreateFromStream;
        } catch (IOException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("source could not be found: ");
            sb2.append(str);
            return null;
        }
    }

    public HtmlAssetsImageGetter(TextView textView) {
        this.context = textView.getContext();
    }
}
