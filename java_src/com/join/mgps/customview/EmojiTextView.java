package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
public class EmojiTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Html.ImageGetter f64833c;

    class a implements Html.ImageGetter {
        a() {
        }

        @Override // android.text.Html.ImageGetter
        public Drawable getDrawable(String source) {
            Drawable drawable = EmojiTextView.this.getResources().getDrawable(EmojiTextView.this.getResources().getIdentifier(source, "drawable", EmojiTextView.this.f64832b.getPackageName()));
            drawable.setBounds(0, 0, (int) (((double) drawable.getIntrinsicWidth()) * 1.25d), (int) (((double) drawable.getIntrinsicHeight()) * 1.25d));
            return drawable;
        }
    }

    public EmojiTextView(Context context) {
        super(context);
        this.f64833c = new a();
        this.f64832b = context;
    }

    public String b(String str) {
        return str.replaceAll(c(128073), "<img src=\"emoji_01\"/>").replaceAll(c(128072), "<img src=\"emoji_02\"/>").replaceAll(c(9786), "<img src=\"emoji_03\"/>").replaceAll(c(128273), "<img src=\"emoji_04\"/>");
    }

    public String c(int hexEmoji) {
        return String.valueOf(Character.toChars(hexEmoji));
    }

    public void setEmojiText(String text) {
        setText(Html.fromHtml(b(text), this.f64833c, null));
    }

    public EmojiTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64833c = new a();
        this.f64832b = context;
    }

    public EmojiTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64833c = new a();
        this.f64832b = context;
    }
}
