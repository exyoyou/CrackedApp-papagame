package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CellClassifyItem extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f64410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f64411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f64412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64413g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SimpleDraweeView f64414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f64415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f64416j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f64417k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f64418l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LinearLayout f64419m;

    public CellClassifyItem(Context context) {
        super(context);
        this.f64409c = R.drawable.main_normal_icon;
        a();
    }

    private void a() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_classify_item, (ViewGroup) null);
        this.f64414h = (SimpleDraweeView) viewInflate.findViewById(R.id.onlin_icon);
        this.f64415i = (TextView) viewInflate.findViewById(R.id.name);
        this.f64419m = (LinearLayout) viewInflate.findViewById(R.id.nameParent);
        this.f64416j = (TextView) viewInflate.findViewById(R.id.desc);
        this.f64417k = (TextView) viewInflate.findViewById(R.id.onlin_number_tip);
        this.f64418l = (TextView) viewInflate.findViewById(R.id.onlin_number);
        addView(viewInflate, -1, -1);
        setmIconRes(this.f64409c);
        setmName(this.f64411e);
        setmDesc(this.f64412f);
        setCountTip(this.f64413g);
    }

    public int getmCount() {
        return this.f64413g;
    }

    public String getmDesc() {
        return this.f64412f;
    }

    public int getmIconRes() {
        return this.f64409c;
    }

    public String getmIconSrc() {
        return this.f64410d;
    }

    public int getmId() {
        return this.f64408b;
    }

    public String getmName() {
        return this.f64411e;
    }

    public void setCountFlag(int mCount) {
        setmCount(mCount);
        this.f64418l.setText(mCount + "");
    }

    public void setCountTip(int mCount) {
        setmCount(mCount);
        try {
            String string = getContext().getResources().getString(R.string.game_count_tip, mCount + "");
            int iIndexOf = string.indexOf(mCount + "");
            int length = (mCount + "").length() + iIndexOf;
            SpannableString spannableString = new SpannableString(string);
            if (length <= string.length()) {
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FC9234")), iIndexOf, length, 33);
            }
            TextView textView = this.f64417k;
            if (textView != null) {
                textView.setText(spannableString);
            }
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public void setDescVisibility(int visibility) {
        TextView textView = this.f64416j;
        if (textView != null) {
            textView.setVisibility(visibility);
            if (visibility == 8 || visibility == 4) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f64419m.getLayoutParams();
                layoutParams.addRule(6, 0);
                layoutParams.addRule(15, -1);
                this.f64419m.setLayoutParams(layoutParams);
                return;
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f64419m.getLayoutParams();
            layoutParams2.addRule(6, R.id.onlin_icon);
            layoutParams2.addRule(15, 0);
            this.f64419m.setLayoutParams(layoutParams2);
        }
    }

    public void setmCount(int mCount) {
        this.f64413g = mCount;
    }

    public void setmDesc(String mDesc) {
        this.f64412f = mDesc;
        TextView textView = this.f64416j;
        if (textView != null) {
            textView.setText(mDesc);
        }
    }

    public void setmIconRes(int mIconRes) {
        this.f64409c = mIconRes;
        com.join.android.app.common.utils.l.d(this.f64414h, mIconRes, com.join.android.app.common.utils.l.G(getContext(), mIconRes).toString());
    }

    public void setmIconSrc(String mIconSrc) {
        this.f64410d = mIconSrc;
        com.join.android.app.common.utils.l.d(this.f64414h, this.f64409c, mIconSrc);
    }

    public void setmId(int mId) {
        this.f64408b = mId;
    }

    public void setmName(String mName) {
        this.f64411e = mName;
        TextView textView = this.f64415i;
        if (textView != null) {
            textView.setText(mName);
        }
    }

    public CellClassifyItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64409c = R.drawable.main_normal_icon;
        a();
    }

    public CellClassifyItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64409c = R.drawable.main_normal_icon;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CellClassifyItem, defStyleAttr, 0);
        this.f64409c = typedArrayObtainStyledAttributes.getInt(0, R.drawable.main_normal_icon);
        this.f64411e = typedArrayObtainStyledAttributes.getString(3);
        this.f64412f = typedArrayObtainStyledAttributes.getString(2);
        this.f64413g = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        a();
    }
}
