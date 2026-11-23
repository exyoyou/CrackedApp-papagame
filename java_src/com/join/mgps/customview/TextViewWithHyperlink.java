package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class TextViewWithHyperlink extends TextView {

    public interface a {
        void a();
    }

    public class b extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f65958b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        a f65959c;

        public b(Context context, a clickOther) {
            this.f65959c = clickOther;
            this.f65958b = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            this.f65959c.a();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(-13882324);
        }
    }

    public class c extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Context f65961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        IntentDateBean f65962c;

        public c(Context context, IntentDateBean intent) {
            this.f65962c = intent;
            this.f65961b = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().intentActivity(this.f65961b, this.f65962c);
            widget.callOnClick();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(-13995317);
        }
    }

    public TextViewWithHyperlink(Context context) {
        super(context);
    }

    public int a(Context context, String key, IntentDateBean intent, a clickOther) {
        if (t2.h(key)) {
            return -1;
        }
        SpannableString spannableString = new SpannableString(getText());
        int iLastIndexOf = spannableString.toString().lastIndexOf(key);
        if (iLastIndexOf == -1) {
            return -1;
        }
        int length = key.length() + iLastIndexOf;
        if (iLastIndexOf > 0) {
            spannableString.setSpan(new b(context, clickOther), 0, iLastIndexOf - 1, 33);
        }
        spannableString.setSpan(new c(context, intent), iLastIndexOf, length, 33);
        setText(spannableString);
        setMovementMethod(LinkMovementMethod.getInstance());
        return 0;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public TextViewWithHyperlink(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TextViewWithHyperlink(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
