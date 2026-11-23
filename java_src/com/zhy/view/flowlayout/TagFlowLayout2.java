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
public class TagFlowLayout2 extends FlowLayout implements com.zhy.view.flowlayout.b.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f90353r = "TagFlowLayout";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f90354s = "key_choose_pos";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f90355t = "key_default";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.zhy.view.flowlayout.b f90356k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f90357l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f90358m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MotionEvent f90359n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Set<Integer> f90360o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TagFlowLayout.a f90361p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TagFlowLayout.b f90362q;

    public interface a {
        void a(Set<Integer> selectPosSet);
    }

    public interface b {
        boolean a(View view, int position, FlowLayout parent);
    }

    public TagFlowLayout2(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f90357l = true;
        this.f90358m = -1;
        this.f90360o = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.TagFlowLayout);
        this.f90357l = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.f90358m = typedArrayObtainStyledAttributes.getInt(2, -1);
        typedArrayObtainStyledAttributes.recycle();
        if (this.f90357l) {
            setClickable(true);
        }
    }

    private void b() {
        removeAllViews();
        com.zhy.view.flowlayout.b bVar = this.f90356k;
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
            if (this.f90356k.g(i10, bVar.b(i10))) {
                this.f90360o.add(Integer.valueOf(i10));
                tagView.setChecked(true);
            }
        }
        this.f90360o.addAll(hashSetC);
    }

    public static int c(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d(TagView child, int position) {
        if (this.f90357l) {
            if (!child.isChecked()) {
                if (this.f90358m == 1 && this.f90360o.size() == 1) {
                    Integer next = this.f90360o.iterator().next();
                    ((TagView) getChildAt(next.intValue())).setChecked(false);
                    child.setChecked(true);
                    this.f90360o.remove(next);
                    this.f90360o.add(Integer.valueOf(position));
                } else {
                    if (this.f90358m > 0 && this.f90360o.size() >= this.f90358m) {
                        return;
                    }
                    child.setChecked(true);
                    this.f90360o.add(Integer.valueOf(position));
                }
            }
            TagFlowLayout.a aVar = this.f90361p;
            if (aVar != null) {
                aVar.a(new HashSet(this.f90360o));
            }
        }
    }

    private TagView e(int x10, int y10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            TagView tagView = (TagView) getChildAt(i10);
            if (tagView.getVisibility() != 8) {
                Rect rect = new Rect();
                tagView.getHitRect(rect);
                if (rect.contains(x10, y10)) {
                    return tagView;
                }
            }
        }
        return null;
    }

    private int f(View child) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10) == child) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.zhy.view.flowlayout.b.a
    public void a() {
        this.f90360o.clear();
        b();
    }

    public com.zhy.view.flowlayout.b getAdapter() {
        return this.f90356k;
    }

    public Set<Integer> getSelectedList() {
        return new HashSet(this.f90360o);
    }

    @Override // com.zhy.view.flowlayout.FlowLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            TagView tagView = (TagView) getChildAt(i10);
            if (tagView.getVisibility() != 8 && tagView.getTagView().getVisibility() == 8) {
                tagView.setVisibility(8);
            }
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        String string = bundle.getString(f90354s);
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.split(Constants.TIPS_SPECIAL_TAG)) {
                int i10 = Integer.parseInt(str);
                this.f90360o.add(Integer.valueOf(i10));
                TagView tagView = (TagView) getChildAt(i10);
                if (tagView != null) {
                    tagView.setChecked(true);
                }
            }
        }
        super.onRestoreInstanceState(bundle.getParcelable(f90355t));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(f90355t, super.onSaveInstanceState());
        String strSubstring = "";
        if (this.f90360o.size() > 0) {
            Iterator<Integer> it2 = this.f90360o.iterator();
            while (it2.hasNext()) {
                strSubstring = strSubstring + it2.next().intValue() + "|";
            }
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        bundle.putString(f90354s, strSubstring);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 1) {
            this.f90359n = MotionEvent.obtain(event);
        }
        return super.onTouchEvent(event);
    }

    @Override // android.view.View
    public boolean performClick() {
        MotionEvent motionEvent = this.f90359n;
        if (motionEvent == null) {
            return super.performClick();
        }
        int x10 = (int) motionEvent.getX();
        int y10 = (int) this.f90359n.getY();
        this.f90359n = null;
        TagView tagViewE = e(x10, y10);
        int iF = f(tagViewE);
        if (tagViewE == null) {
            return true;
        }
        d(tagViewE, iF);
        TagFlowLayout.b bVar = this.f90362q;
        if (bVar != null) {
            return bVar.a(tagViewE.getTagView(), iF, this);
        }
        return true;
    }

    public void setAdapter(com.zhy.view.flowlayout.b adapter) {
        this.f90356k = adapter;
        adapter.f(this);
        this.f90360o.clear();
        b();
    }

    public void setMaxSelectCount(int count) {
        if (this.f90360o.size() > count) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("you has already select more than ");
            sb2.append(count);
            sb2.append(" views , so it will be clear .");
            this.f90360o.clear();
        }
        this.f90358m = count;
    }

    public void setOnSelectListener(TagFlowLayout.a onSelectListener) {
        this.f90361p = onSelectListener;
        if (onSelectListener != null) {
            setClickable(true);
        }
    }

    public void setOnTagClickListener(TagFlowLayout.b onTagClickListener) {
        this.f90362q = onTagClickListener;
        if (onTagClickListener != null) {
            setClickable(true);
        }
    }

    public TagFlowLayout2(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TagFlowLayout2(Context context) {
        this(context, null);
    }
}
