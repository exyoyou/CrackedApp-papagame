package com.papa91.arc.widget.htmltext;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class HtmlResImageGetter implements Html.ImageGetter {
    private Context context;

    public HtmlResImageGetter(@NonNull Context context) {
        this.context = context;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        int identifier = this.context.getResources().getIdentifier(str, "drawable", this.context.getPackageName());
        if (identifier == 0) {
            identifier = this.context.getResources().getIdentifier(str, "drawable", "android");
        }
        if (identifier != 0) {
            Drawable drawable = this.context.getResources().getDrawable(identifier);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            return drawable;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("source could not be found: ");
        sb2.append(str);
        return null;
    }
}
