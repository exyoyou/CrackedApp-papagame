package it.sephiroth.android.library.widget;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.Gravity;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ExpandableListAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ExpandableHListView extends HListView {
    public static final int A4 = 2;
    public static final long B4 = 4294967295L;
    private static final long C4 = 4294967295L;
    private static final long D4 = 9223372032559808512L;
    private static final long E4 = Long.MIN_VALUE;
    private static final long F4 = 32;
    private static final long G4 = 63;
    private static final long H4 = -1;
    private static final long I4 = 2147483647L;
    public static final int J4 = -1;
    private static final int K4 = -2;
    private static final int[] L4;
    private static final int[] M4;
    private static final int[] N4;
    private static final int[] O4;
    private static final int[][] P4;
    private static final int[] Q4;

    /* JADX INFO: renamed from: y4, reason: collision with root package name */
    public static final int f91994y4 = 0;

    /* JADX INFO: renamed from: z4, reason: collision with root package name */
    public static final int f91995z4 = 1;

    /* JADX INFO: renamed from: d4, reason: collision with root package name */
    private ExpandableHListConnector f91996d4;

    /* JADX INFO: renamed from: e4, reason: collision with root package name */
    private ExpandableListAdapter f91997e4;

    /* JADX INFO: renamed from: f4, reason: collision with root package name */
    private int f91998f4;

    /* JADX INFO: renamed from: g4, reason: collision with root package name */
    private int f91999g4;

    /* JADX INFO: renamed from: h4, reason: collision with root package name */
    private int f92000h4;

    /* JADX INFO: renamed from: i4, reason: collision with root package name */
    private int f92001i4;

    /* JADX INFO: renamed from: j4, reason: collision with root package name */
    private int f92002j4;

    /* JADX INFO: renamed from: k4, reason: collision with root package name */
    private int f92003k4;

    /* JADX INFO: renamed from: l4, reason: collision with root package name */
    private Drawable f92004l4;

    /* JADX INFO: renamed from: m4, reason: collision with root package name */
    private Drawable f92005m4;

    /* JADX INFO: renamed from: n4, reason: collision with root package name */
    private Drawable f92006n4;

    /* JADX INFO: renamed from: o4, reason: collision with root package name */
    private final Rect f92007o4;

    /* JADX INFO: renamed from: p4, reason: collision with root package name */
    private final Rect f92008p4;

    /* JADX INFO: renamed from: q4, reason: collision with root package name */
    private int f92009q4;

    /* JADX INFO: renamed from: r4, reason: collision with root package name */
    private int f92010r4;

    /* JADX INFO: renamed from: s4, reason: collision with root package name */
    private int f92011s4;

    /* JADX INFO: renamed from: t4, reason: collision with root package name */
    private int f92012t4;

    /* JADX INFO: renamed from: u4, reason: collision with root package name */
    private e f92013u4;

    /* JADX INFO: renamed from: v4, reason: collision with root package name */
    private f f92014v4;

    /* JADX INFO: renamed from: w4, reason: collision with root package name */
    private d f92015w4;

    /* JADX INFO: renamed from: x4, reason: collision with root package name */
    private c f92016x4;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<ExpandableHListConnector.GroupMetadata> f92017b;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel in2) {
                return new SavedState(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeList(this.f92017b);
        }

        SavedState(Parcelable superState, ArrayList<ExpandableHListConnector.GroupMetadata> expandedGroupMetadataList) {
            super(superState);
            this.f92017b = expandedGroupMetadataList;
        }

        private SavedState(Parcel in2) {
            super(in2);
            ArrayList<ExpandableHListConnector.GroupMetadata> arrayList = new ArrayList<>();
            this.f92017b = arrayList;
            in2.readList(arrayList, ExpandableHListConnector.class.getClassLoader());
        }
    }

    public static class b implements ContextMenu.ContextMenuInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f92018a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f92019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f92020c;

        public b(View targetView, long packedPosition, long id2) {
            this.f92018a = targetView;
            this.f92019b = packedPosition;
            this.f92020c = id2;
        }
    }

    public interface c {
        boolean a(ExpandableHListView parent, View v10, int groupPosition, int childPosition, long id2);
    }

    public interface d {
        boolean a(ExpandableHListView parent, View v10, int groupPosition, long id2);
    }

    public interface e {
        void a(int groupPosition);
    }

    public interface f {
        void a(int groupPosition);
    }

    static {
        int[] iArr = new int[0];
        L4 = iArr;
        int[] iArr2 = {R.attr.state_expanded};
        M4 = iArr2;
        int[] iArr3 = {R.attr.state_empty};
        N4 = iArr3;
        int[] iArr4 = {R.attr.state_expanded, R.attr.state_empty};
        O4 = iArr4;
        P4 = new int[][]{iArr, iArr2, iArr3, iArr4};
        Q4 = new int[]{R.attr.state_last};
    }

    public ExpandableHListView(Context context) {
        this(context, null);
    }

    private int g2(int flatListPosition) {
        return flatListPosition + getHeaderViewsCount();
    }

    private long h2(it.sephiroth.android.library.widget.a position) {
        return position.f92040d == 1 ? this.f91997e4.getChildId(position.f92037a, position.f92038b) : this.f91997e4.getGroupId(position.f92037a);
    }

    private int k2(int flatListPosition) {
        return flatListPosition - getHeaderViewsCount();
    }

    private Drawable l2(ExpandableHListConnector.b bVar) {
        Drawable drawable;
        if (bVar.f91991a.f92040d == 2) {
            drawable = this.f92004l4;
            if (drawable != null && drawable.isStateful()) {
                ExpandableHListConnector.GroupMetadata groupMetadata = bVar.f91992b;
                drawable.setState(P4[(bVar.b() ? 1 : 0) | (groupMetadata == null || groupMetadata.f91985c == groupMetadata.f91984b ? 2 : 0)]);
            }
        } else {
            drawable = this.f92005m4;
            if (drawable != null && drawable.isStateful()) {
                drawable.setState(bVar.f91991a.f92039c == bVar.f91992b.f91985c ? Q4 : L4);
            }
        }
        return drawable;
    }

    public static int m2(long packedPosition) {
        if (packedPosition != 4294967295L && (packedPosition & Long.MIN_VALUE) == Long.MIN_VALUE) {
            return (int) (packedPosition & 4294967295L);
        }
        return -1;
    }

    public static long n2(int groupPosition, int childPosition) {
        return (((long) childPosition) & (-1)) | ((((long) groupPosition) & I4) << 32) | Long.MIN_VALUE;
    }

    public static long o2(int groupPosition) {
        return (((long) groupPosition) & I4) << 32;
    }

    public static int p2(long packedPosition) {
        if (packedPosition == 4294967295L) {
            return -1;
        }
        return (int) ((packedPosition & D4) >> 32);
    }

    public static int q2(long packedPosition) {
        if (packedPosition == 4294967295L) {
            return 2;
        }
        return (packedPosition & Long.MIN_VALUE) == Long.MIN_VALUE ? 1 : 0;
    }

    private boolean t2(int position) {
        return position < getHeaderViewsCount() || position >= this.f91965t - getFooterViewsCount();
    }

    private void u2() {
        Drawable drawable = this.f92005m4;
        if (drawable != null) {
            this.f92011s4 = drawable.getIntrinsicWidth();
            this.f92012t4 = this.f92005m4.getIntrinsicHeight();
        } else {
            this.f92011s4 = 0;
            this.f92012t4 = 0;
        }
    }

    private void v2() {
        Drawable drawable = this.f92004l4;
        if (drawable != null) {
            this.f92009q4 = drawable.getIntrinsicWidth();
            this.f92010r4 = this.f92004l4.getIntrinsicHeight();
        } else {
            this.f92009q4 = 0;
            this.f92010r4 = 0;
        }
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    ContextMenu.ContextMenuInfo U(View view, int flatListPosition, long id2) {
        if (t2(flatListPosition)) {
            return new AdapterView.b(view, flatListPosition, id2);
        }
        ExpandableHListConnector.b bVarJ = this.f91996d4.j(k2(flatListPosition));
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        long jH2 = h2(aVar);
        long jA = aVar.a();
        bVarJ.d();
        return new b(view, jA, jH2);
    }

    public boolean d2(int groupPos) {
        boolean zB = this.f91996d4.b(groupPos);
        e eVar = this.f92013u4;
        if (eVar != null) {
            eVar.a(groupPos);
        }
        return zB;
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f92005m4 == null && this.f92004l4 == null) {
            return;
        }
        int headerViewsCount = getHeaderViewsCount();
        int footerViewsCount = ((this.f91965t - getFooterViewsCount()) - headerViewsCount) - 1;
        int right = getRight();
        Rect rect = this.f92007o4;
        int childCount = getChildCount();
        int i10 = this.f91947b - headerViewsCount;
        int i11 = -4;
        int i12 = 0;
        while (i12 < childCount) {
            if (i10 >= 0) {
                if (i10 > footerViewsCount) {
                    return;
                }
                View childAt = getChildAt(i12);
                int left = childAt.getLeft();
                int right2 = childAt.getRight();
                if (right2 >= 0 && left <= right) {
                    ExpandableHListConnector.b bVarJ = this.f91996d4.j(i10);
                    int i13 = bVarJ.f91991a.f92040d;
                    if (i13 != i11) {
                        if (i13 == 1) {
                            rect.top = childAt.getTop() + this.f92002j4;
                            rect.bottom = childAt.getBottom() + this.f92002j4;
                        } else {
                            rect.top = childAt.getTop() + this.f91998f4;
                            rect.bottom = childAt.getBottom() + this.f91998f4;
                        }
                        i11 = bVarJ.f91991a.f92040d;
                    }
                    if (rect.top != rect.bottom) {
                        if (bVarJ.f91991a.f92040d == 1) {
                            int i14 = this.f92003k4;
                            rect.left = left + i14;
                            rect.right = right2 + i14;
                        } else {
                            int i15 = this.f91999g4;
                            rect.left = left + i15;
                            rect.right = right2 + i15;
                        }
                        Drawable drawableL2 = l2(bVarJ);
                        if (drawableL2 != null) {
                            if (bVarJ.f91991a.f92040d == 1) {
                                Gravity.apply(this.f92001i4, this.f92011s4, this.f92012t4, rect, this.f92008p4);
                            } else {
                                Gravity.apply(this.f92000h4, this.f92009q4, this.f92010r4, rect, this.f92008p4);
                            }
                            drawableL2.setBounds(this.f92008p4);
                            drawableL2.draw(canvas);
                        }
                    }
                    bVarJ.d();
                }
            }
            i12++;
            i10++;
        }
    }

    public boolean e2(int groupPos) {
        return f2(groupPos, false);
    }

    public boolean f2(int groupPos, boolean animate) {
        it.sephiroth.android.library.widget.a aVarC = it.sephiroth.android.library.widget.a.c(2, groupPos, -1, -1);
        ExpandableHListConnector.b bVarI = this.f91996d4.i(aVarC);
        aVarC.g();
        boolean zE = this.f91996d4.e(bVarI);
        f fVar = this.f92014v4;
        if (fVar != null) {
            fVar.a(groupPos);
        }
        if (animate) {
            int headerViewsCount = bVarI.f91991a.f92039c + getHeaderViewsCount();
            Q0(this.f91997e4.getChildrenCount(groupPos) + headerViewsCount, headerViewsCount);
        }
        bVarI.d();
        return zE;
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        return this.f91997e4;
    }

    public long getSelectedId() {
        long selectedPosition = getSelectedPosition();
        if (selectedPosition == 4294967295L) {
            return -1L;
        }
        int iP2 = p2(selectedPosition);
        return q2(selectedPosition) == 0 ? this.f91997e4.getGroupId(iP2) : this.f91997e4.getChildId(iP2, m2(selectedPosition));
    }

    public long getSelectedPosition() {
        return i2(getSelectedItemPosition());
    }

    public long i2(int flatListPosition) {
        if (t2(flatListPosition)) {
            return 4294967295L;
        }
        ExpandableHListConnector.b bVarJ = this.f91996d4.j(k2(flatListPosition));
        long jA = bVarJ.f91991a.a();
        bVarJ.d();
        return jA;
    }

    public int j2(long packedPosition) {
        it.sephiroth.android.library.widget.a aVarF = it.sephiroth.android.library.widget.a.f(packedPosition);
        ExpandableHListConnector.b bVarI = this.f91996d4.i(aVarF);
        aVarF.g();
        int i10 = bVarI.f91991a.f92039c;
        bVarI.d();
        return g2(i10);
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(ExpandableHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(ExpandableHListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        ArrayList<ExpandableHListConnector.GroupMetadata> arrayList;
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        ExpandableHListConnector expandableHListConnector = this.f91996d4;
        if (expandableHListConnector == null || (arrayList = savedState.f92017b) == null) {
            return;
        }
        expandableHListConnector.n(arrayList);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        v2();
        u2();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        ExpandableHListConnector expandableHListConnector = this.f91996d4;
        return new SavedState(parcelableOnSaveInstanceState, expandableHListConnector != null ? expandableHListConnector.h() : null);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public boolean q(View v10, int position, long id2) {
        return t2(position) ? super.q(v10, position, id2) : r2(v10, k2(position), id2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (r1.f91985c != r1.f91984b) goto L12;
     */
    @Override // it.sephiroth.android.library.widget.HListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void r1(android.graphics.Canvas r4, android.graphics.Rect r5, int r6) {
        /*
            r3 = this;
            int r0 = r3.f91947b
            int r6 = r6 + r0
            if (r6 < 0) goto L35
            int r0 = r3.k2(r6)
            it.sephiroth.android.library.widget.ExpandableHListConnector r1 = r3.f91996d4
            it.sephiroth.android.library.widget.ExpandableHListConnector$b r0 = r1.j(r0)
            it.sephiroth.android.library.widget.a r1 = r0.f91991a
            int r1 = r1.f92040d
            r2 = 1
            if (r1 == r2) goto L29
            boolean r1 = r0.b()
            if (r1 == 0) goto L25
            it.sephiroth.android.library.widget.ExpandableHListConnector$GroupMetadata r1 = r0.f91992b
            int r2 = r1.f91985c
            int r1 = r1.f91984b
            if (r2 == r1) goto L25
            goto L29
        L25:
            r0.d()
            goto L35
        L29:
            android.graphics.drawable.Drawable r6 = r3.f92006n4
            r6.setBounds(r5)
            r6.draw(r4)
            r0.d()
            return
        L35:
            super.r1(r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.ExpandableHListView.r1(android.graphics.Canvas, android.graphics.Rect, int):void");
    }

    boolean r2(View v10, int position, long id2) {
        ExpandableHListConnector.b bVarJ = this.f91996d4.j(position);
        long jH2 = h2(bVarJ.f91991a);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        boolean z10 = false;
        if (aVar.f92040d == 2) {
            d dVar = this.f92015w4;
            if (dVar != null && dVar.a(this, v10, aVar.f92037a, jH2)) {
                bVarJ.d();
                return true;
            }
            if (bVarJ.b()) {
                this.f91996d4.c(bVarJ);
                playSoundEffect(0);
                e eVar = this.f92013u4;
                if (eVar != null) {
                    eVar.a(bVarJ.f91991a.f92037a);
                }
            } else {
                this.f91996d4.e(bVarJ);
                playSoundEffect(0);
                f fVar = this.f92014v4;
                if (fVar != null) {
                    fVar.a(bVarJ.f91991a.f92037a);
                }
                it.sephiroth.android.library.widget.a aVar2 = bVarJ.f91991a;
                int i10 = aVar2.f92037a;
                int headerViewsCount = aVar2.f92039c + getHeaderViewsCount();
                Q0(this.f91997e4.getChildrenCount(i10) + headerViewsCount, headerViewsCount);
            }
            z10 = true;
        } else if (this.f92016x4 != null) {
            playSoundEffect(0);
            c cVar = this.f92016x4;
            it.sephiroth.android.library.widget.a aVar3 = bVarJ.f91991a;
            return cVar.a(this, v10, aVar3.f92037a, aVar3.f92038b, jH2);
        }
        bVarJ.d();
        return z10;
    }

    public boolean s2(int groupPosition) {
        return this.f91996d4.k(groupPosition);
    }

    public void setChildDivider(Drawable childDivider) {
        this.f92006n4 = childDivider;
    }

    public void setChildIndicator(Drawable childIndicator) {
        this.f92005m4 = childIndicator;
        u2();
    }

    public void setGroupIndicator(Drawable groupIndicator) {
        this.f92004l4 = groupIndicator;
        v2();
    }

    public void setOnChildClickListener(c onChildClickListener) {
        this.f92016x4 = onChildClickListener;
    }

    public void setOnGroupClickListener(d onGroupClickListener) {
        this.f92015w4 = onGroupClickListener;
    }

    public void setOnGroupCollapseListener(e onGroupCollapseListener) {
        this.f92013u4 = onGroupCollapseListener;
    }

    public void setOnGroupExpandListener(f onGroupExpandListener) {
        this.f92014v4 = onGroupExpandListener;
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setOnItemClickListener(AdapterView.d l10) {
        super.setOnItemClickListener(l10);
    }

    public void setSelectedGroup(int groupPosition) {
        it.sephiroth.android.library.widget.a aVarE = it.sephiroth.android.library.widget.a.e(groupPosition);
        ExpandableHListConnector.b bVarI = this.f91996d4.i(aVarE);
        aVarE.g();
        super.setSelection(g2(bVarI.f91991a.f92039c));
        bVarI.d();
    }

    public boolean w2(int groupPosition, int childPosition, boolean shouldExpandGroup) {
        it.sephiroth.android.library.widget.a aVarD = it.sephiroth.android.library.widget.a.d(groupPosition, childPosition);
        ExpandableHListConnector.b bVarI = this.f91996d4.i(aVarD);
        if (bVarI == null) {
            if (!shouldExpandGroup) {
                return false;
            }
            e2(groupPosition);
            bVarI = this.f91996d4.i(aVarD);
            if (bVarI == null) {
                throw new IllegalStateException("Could not find child");
            }
        }
        super.setSelection(g2(bVarI.f91991a.f92039c));
        aVarD.g();
        bVarI.d();
        return true;
    }

    public ExpandableHListView(Context context, AttributeSet attrs) {
        this(context, attrs, com.join.android.app.mgsim.wufun.R.attr.hlv_expandableListViewStyle);
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AdapterView
    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    @Override // it.sephiroth.android.library.widget.HListView, it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        throw new RuntimeException("For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)");
    }

    public ExpandableHListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f92007o4 = new Rect();
        this.f92008p4 = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.ExpandableHListView, defStyle, 0);
        setGroupIndicator(typedArrayObtainStyledAttributes.getDrawable(5));
        setChildIndicator(typedArrayObtainStyledAttributes.getDrawable(1));
        this.f91999g4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f91998f4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.f92000h4 = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.f92001i4 = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f92003k4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.f92002j4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.f92006n4 = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAdapter(ExpandableListAdapter adapter) {
        this.f91997e4 = adapter;
        if (adapter != null) {
            this.f91996d4 = new ExpandableHListConnector(adapter);
        } else {
            this.f91996d4 = null;
        }
        super.setAdapter((ListAdapter) this.f91996d4);
    }
}
