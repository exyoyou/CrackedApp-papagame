package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f81462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f81463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f81464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f81465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f81466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f81467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f81468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f81469h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f81470i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f81471j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f81472k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f81473l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f81474m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f81475n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f81476o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f81477p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f81478q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f81479r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f81480s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f81481t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f81482u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float[] f81483v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private e f81484w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final a f81485x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f81486y;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int selectedIndex;
            if (q.this.f81473l) {
                b bVar = (b) v10;
                b selectedItem = q.this.getSelectedItem();
                int i10 = 0;
                if (q.this.f81481t) {
                    bVar.a(!bVar.f81489b);
                    int childCount = q.this.getChildCount();
                    while (true) {
                        if (i10 >= childCount) {
                            selectedIndex = -1;
                            break;
                        } else {
                            if (q.this.b(i10) == bVar) {
                                selectedIndex = i10;
                                break;
                            }
                            i10++;
                        }
                    }
                } else {
                    if (selectedItem != null) {
                        selectedItem.a(false);
                    }
                    bVar.a(true);
                    selectedIndex = q.this.getSelectedIndex();
                }
                if (q.this.f81484w != null) {
                    q.this.f81484w.onItemClick(selectedIndex, bVar.getText().toString());
                }
            }
        }
    }

    class b extends TextView {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f81489b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Paint f81490c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f81491d;

        public b(Context context, CharSequence text) {
            super(context);
            this.f81489b = false;
            Paint paint = new Paint(1);
            this.f81490c = paint;
            this.f81491d = new Rect();
            paint.setStyle(Paint.Style.FILL);
            setPadding(q.this.f81479r, q.this.f81480s, q.this.f81479r, q.this.f81480s);
            setLayoutParams(new c(q.this.f81486y, -2));
            setGravity(17);
            setTextSize(0, q.this.f81476o);
            setSingleLine(true);
            setEllipsize(TextUtils.TruncateAt.valueOf("END"));
            setMaxEms(4);
            setText(text);
            setClickable(true);
            a();
        }

        private void a() {
            int i10;
            q.this.f81482u = false;
            if (this.f81489b) {
                this.f81490c.setColor(q.this.f81475n);
                i10 = q.this.f81474m;
            } else {
                this.f81490c.setColor(q.this.f81472k);
                i10 = q.this.f81471j;
            }
            setTextColor(i10);
        }

        private void b() {
            int i10 = this.f81489b ? q.this.f81475n : q.this.f81472k;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(q.this.f81483v);
            gradientDrawable.setColor(i10);
            setBackground(gradientDrawable);
        }

        @Override // android.widget.TextView
        protected boolean getDefaultEditable() {
            return false;
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            if (!q.this.f81482u) {
                b();
            }
            super.onDraw(canvas);
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            int action = event.getAction();
            if (action != 0) {
                if (action == 1 || (action == 2 && !this.f81491d.contains((int) event.getX(), (int) event.getY()))) {
                }
                return super.onTouchEvent(event);
            }
            getDrawingRect(this.f81491d);
            a();
            invalidate();
            return super.onTouchEvent(event);
        }

        public void a(boolean select) {
            this.f81489b = select;
            a();
        }
    }

    public static class c extends ViewGroup.LayoutParams {
        public c(int width, int height) {
            super(width, height);
        }

        public c(Context c10, AttributeSet attrs) {
            super(c10, attrs);
        }
    }

    static class d extends View.BaseSavedState {
        public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.sigmob.sdk.nativead.q.d.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d createFromParcel(Parcel in2) {
                return new d(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public d[] newArray(int size) {
                return new d[size];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f81492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String[] f81493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f81494c;

        public d(Parcel source) {
            super(source);
            int i10 = source.readInt();
            this.f81492a = i10;
            String[] strArr = new String[i10];
            this.f81493b = strArr;
            source.readStringArray(strArr);
            this.f81494c = source.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            int length = this.f81493b.length;
            this.f81492a = length;
            dest.writeInt(length);
            dest.writeStringArray(this.f81493b);
            dest.writeInt(this.f81494c);
        }

        public d(Parcelable superState) {
            super(superState);
        }
    }

    public interface e {
        void onItemClick(int position, String text);
    }

    public q(Context context) {
        this(context, null);
    }

    private float a(float dp) {
        return TypedValue.applyDimension(1, dp, getResources().getDisplayMetrics());
    }

    private int b(float sp) {
        return (int) TypedValue.applyDimension(2, sp, getResources().getDisplayMetrics());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new c(getContext(), attrs);
    }

    public ArrayList<Integer> getAllItemSelectedIndex() {
        int childCount = getChildCount();
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (b(i10).f81489b) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    public ArrayList<String> getAllItemSelectedTextWithListArray() {
        int childCount = getChildCount();
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVarB = b(i10);
            if (bVarB.f81489b) {
                arrayList.add(bVarB.getText().toString());
            }
        }
        return arrayList;
    }

    public String[] getAllItemSelectedTextWithStringArray() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVarB = b(i10);
            if (bVarB.f81489b) {
                arrayList.add(bVarB.getText().toString());
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public String[] getAllItemText() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < childCount; i10++) {
            arrayList.add(b(i10).getText().toString());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public int getSelectedIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (b(i10).f81489b) {
                return i10;
            }
        }
        return -1;
    }

    protected b getSelectedItem() {
        int selectedIndex = getSelectedIndex();
        if (selectedIndex == -1) {
            return null;
        }
        return b(selectedIndex);
    }

    protected String getSelectedItemText() {
        b selectedItem = getSelectedItem();
        if (selectedItem == null) {
            return null;
        }
        return selectedItem.getText().toString();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (r10 - l10) - getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = getChildCount();
        int i10 = paddingLeft;
        int iMax = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                if (i10 + measuredWidth > paddingRight) {
                    paddingTop += iMax + this.f81478q;
                    i10 = paddingLeft;
                    iMax = measuredHeight;
                } else {
                    iMax = Math.max(iMax, measuredHeight);
                }
                childAt.layout(i10, paddingTop, i10 + measuredWidth, measuredHeight + paddingTop);
                i10 += measuredWidth + this.f81477p;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        measureChildren(widthMeasureSpec, heightMeasureSpec);
        int childCount = getChildCount();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                int i15 = i13 + measuredWidth;
                if (i15 > size) {
                    i10 += i11 + this.f81478q;
                    i12++;
                } else {
                    measuredHeight = Math.max(i11, measuredHeight);
                    measuredWidth = i15;
                }
                i13 = measuredWidth + this.f81477p;
                i11 = measuredHeight;
            }
        }
        int paddingTop = i10 + i11 + getPaddingTop() + getPaddingBottom();
        int paddingLeft = i12 == 0 ? i13 + getPaddingLeft() + getPaddingRight() : size;
        if (mode != 1073741824) {
            size = paddingLeft;
        }
        if (mode2 != 1073741824) {
            size2 = paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof d)) {
            super.onRestoreInstanceState(state);
            return;
        }
        d dVar = (d) state;
        super.onRestoreInstanceState(dVar.getSuperState());
        setList(dVar.f81493b);
        b bVarB = b(dVar.f81494c);
        if (bVarB == null) {
            return;
        }
        bVarB.a(true);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f81493b = getAllItemText();
        dVar.f81494c = getSelectedIndex();
        return dVar;
    }

    public void setIndexListItemSelected(List<Integer> positionList) {
        if (positionList == null || positionList.isEmpty()) {
            return;
        }
        if (positionList.size() > getChildCount()) {
            return;
        }
        for (int i10 = 0; i10 < positionList.size(); i10++) {
            b(i10).a(true);
        }
    }

    public void setList(List<String> tagList) {
        setList((String[]) tagList.toArray(new String[0]));
    }

    public void setOnItemClickListener(e l10) {
        this.f81484w = l10;
    }

    public q(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public int a(int position) {
        return a(position, true);
    }

    protected b b(int index) {
        if (getChildAt(index) == null) {
            return null;
        }
        return (b) getChildAt(index);
    }

    public void c() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVarB = b(i10);
            if (bVarB != null) {
                if (bVarB.f81489b) {
                    bVarB.a(false);
                }
                bVarB.setClickable(false);
            }
        }
    }

    public boolean d(int position) {
        b bVarB = b(position);
        return bVarB != null && bVarB.f81489b;
    }

    public void setList(String... tags) {
        removeAllViews();
        for (String str : tags) {
            a((CharSequence) str);
        }
    }

    public q(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f81462a = -16777216;
        int color = Color.parseColor("#EEEEEE");
        this.f81463b = color;
        this.f81464c = -1;
        int color2 = Color.parseColor("#FE7E03");
        this.f81465d = color2;
        this.f81482u = false;
        this.f81483v = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        this.f81485x = new a();
        int i10 = context.getResources().getDisplayMetrics().widthPixels;
        int i11 = context.getResources().getDisplayMetrics().heightPixels;
        int iA = (int) a(100.0f);
        if (i11 > i10) {
            this.f81486y = (i10 - iA) / 3;
        } else {
            this.f81486y = (i11 - iA) / 3;
        }
        float fB = b(11.0f);
        this.f81466e = fB;
        float fA = a(8.0f);
        this.f81467f = fA;
        float fA2 = a(8.0f);
        this.f81468g = fA2;
        float fA3 = a(8.0f);
        this.f81469h = fA3;
        float fA4 = a(5.0f);
        this.f81470i = fA4;
        this.f81471j = -16777216;
        this.f81472k = color;
        this.f81474m = -1;
        this.f81475n = color2;
        this.f81476o = fB;
        this.f81477p = (int) fA;
        this.f81478q = (int) fA2;
        this.f81479r = (int) fA3;
        this.f81480s = (int) fA4;
        this.f81481t = false;
        this.f81473l = true;
    }

    public int a(int position, boolean flag) {
        if (position >= getChildCount()) {
            return -1;
        }
        b(position).a(flag);
        return position;
    }

    public void b() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVarB = b(i10);
            if (bVarB != null && bVarB.f81489b) {
                bVarB.a(false);
            }
        }
    }

    public void c(int position) {
        b bVarB = b(position);
        if (bVarB == null || !bVarB.f81489b) {
            return;
        }
        bVarB.a(false);
    }

    public int a(String text) {
        ArrayList<String> allItemSelectedTextWithListArray = getAllItemSelectedTextWithListArray();
        if (allItemSelectedTextWithListArray == null || !allItemSelectedTextWithListArray.contains(text)) {
            return -1;
        }
        return allItemSelectedTextWithListArray.indexOf(text);
    }

    public void a() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b(i10).a(true);
        }
    }

    public void a(int position, String txt) {
        if (position >= getChildCount()) {
            return;
        }
        b(position).setText(txt);
    }

    private void a(CharSequence tag) {
        b bVar = new b(getContext(), tag);
        bVar.setOnClickListener(this.f81485x);
        addView(bVar);
    }
}
