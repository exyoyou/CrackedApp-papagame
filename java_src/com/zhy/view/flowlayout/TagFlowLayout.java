package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.haima.hmcp.Constants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class TagFlowLayout extends FlowLayout implements com.zhy.view.flowlayout.b.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f90343r = "TagFlowLayout";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f90344s = "key_choose_pos";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f90345t = "key_default";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.zhy.view.flowlayout.b f90346k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f90347l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f90348m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MotionEvent f90349n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Set<Integer> f90350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f90351p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b f90352q;

    public interface a {
        void a(Set<Integer> set);
    }

    public interface b {
        boolean a(View view, int i10, FlowLayout flowLayout);
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f90347l = true;
        this.f90348m = -1;
        this.f90350o = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagFlowLayout);
        this.f90347l = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TagFlowLayout_auto_select_effect, true);
        this.f90348m = typedArrayObtainStyledAttributes.getInt(R.styleable.TagFlowLayout_max_select, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (this.f90347l) {
            setClickable(true);
        }
    }

    private void b() {
        removeAllViews();
        com.zhy.view.flowlayout.b bVar = this.f90346k;
        HashSet<Integer> hashSetC = bVar.c();
        for (int i10 = 0; i10 < bVar.a(); i10++) {
            View viewD = bVar.d(this, i10, bVar.b(i10));
            TagView tagView = new TagView(getContext());
            viewD.setDuplicateParentStateEnabled(true);
            if (viewD.getLayoutParams() != null) {
                tagView.setLayoutParams(viewD.getLayoutParams());
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.setMargins(c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f));
                tagView.setLayoutParams(marginLayoutParams);
            }
            tagView.addView(viewD);
            addView(tagView);
            if (hashSetC.contains(Integer.valueOf(i10))) {
                tagView.setChecked(true);
            }
            if (this.f90346k.g(i10, bVar.b(i10))) {
                this.f90350o.add(Integer.valueOf(i10));
                tagView.setChecked(true);
            }
        }
        this.f90350o.addAll(hashSetC);
    }

    public static int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d(TagView tagView, int i10) {
        if (this.f90347l) {
            if (tagView.isChecked()) {
                tagView.setChecked(false);
                this.f90350o.remove(Integer.valueOf(i10));
            } else if (this.f90348m == 1 && this.f90350o.size() == 1) {
                Integer next = this.f90350o.iterator().next();
                ((TagView) getChildAt(next.intValue())).setChecked(false);
                tagView.setChecked(true);
                this.f90350o.remove(next);
                this.f90350o.add(Integer.valueOf(i10));
            } else {
                if (this.f90348m > 0 && this.f90350o.size() >= this.f90348m) {
                    return;
                }
                tagView.setChecked(true);
                this.f90350o.add(Integer.valueOf(i10));
            }
            a aVar = this.f90351p;
            if (aVar != null) {
                aVar.a(new HashSet(this.f90350o));
            }
        }
    }

    private TagView e(int i10, int i11) {
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            TagView tagView = (TagView) getChildAt(i12);
            if (tagView.getVisibility() != 8) {
                Rect rect = new Rect();
                tagView.getHitRect(rect);
                if (rect.contains(i10, i11)) {
                    return tagView;
                }
            }
        }
        return null;
    }

    private int f(View view) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10) == view) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.zhy.view.flowlayout.b.a
    public void a() {
        this.f90350o.clear();
        b();
    }

    public com.zhy.view.flowlayout.b getAdapter() {
        return this.f90346k;
    }

    public Set<Integer> getSelectedList() {
        return new HashSet(this.f90350o);
    }

    @Override // com.zhy.view.flowlayout.FlowLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            TagView tagView = (TagView) getChildAt(i12);
            if (tagView.getVisibility() != 8 && tagView.getTagView().getVisibility() == 8) {
                tagView.setVisibility(8);
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        String string = bundle.getString(f90344s);
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.split(Constants.TIPS_SPECIAL_TAG)) {
                int i10 = Integer.parseInt(str);
                this.f90350o.add(Integer.valueOf(i10));
                TagView tagView = (TagView) getChildAt(i10);
                if (tagView != null) {
                    tagView.setChecked(true);
                }
            }
        }
        super.onRestoreInstanceState(bundle.getParcelable(f90345t));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(f90345t, super.onSaveInstanceState());
        String strSubstring = "";
        if (this.f90350o.size() > 0) {
            Iterator<Integer> it2 = this.f90350o.iterator();
            while (it2.hasNext()) {
                strSubstring = strSubstring + it2.next().intValue() + "|";
            }
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        bundle.putString(f90344s, strSubstring);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f90349n = MotionEvent.obtain(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        MotionEvent motionEvent = this.f90349n;
        if (motionEvent == null) {
            return super.performClick();
        }
        int x10 = (int) motionEvent.getX();
        int y10 = (int) this.f90349n.getY();
        this.f90349n = null;
        TagView tagViewE = e(x10, y10);
        int iF = f(tagViewE);
        if (tagViewE == null) {
            return true;
        }
        d(tagViewE, iF);
        b bVar = this.f90352q;
        if (bVar != null) {
            return bVar.a(tagViewE.getTagView(), iF, this);
        }
        return true;
    }

    public void setAdapter(com.zhy.view.flowlayout.b bVar) {
        this.f90346k = bVar;
        bVar.f(this);
        this.f90350o.clear();
        b();
    }

    public void setMaxSelectCount(int i10) {
        if (this.f90350o.size() > i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("you has already select more than ");
            sb2.append(i10);
            sb2.append(" views , so it will be clear .");
            this.f90350o.clear();
        }
        this.f90348m = i10;
    }

    public void setOnSelectListener(a aVar) {
        this.f90351p = aVar;
        if (aVar != null) {
            setClickable(true);
        }
    }

    public void setOnTagClickListener(b bVar) {
        this.f90352q = bVar;
        if (bVar != null) {
            setClickable(true);
        }
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TagFlowLayout(Context context) {
        this(context, null);
    }
}
