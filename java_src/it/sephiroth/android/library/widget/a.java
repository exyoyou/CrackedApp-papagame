package it.sephiroth.android.library.widget;

import android.widget.ExpandableListView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f92033e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ArrayList<a> f92034f = new ArrayList<>(5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f92035g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f92036h = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f92037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f92038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92039c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f92040d;

    private a() {
    }

    private static a b() {
        synchronized (f92034f) {
            if (f92034f.size() <= 0) {
                return new a();
            }
            a aVarRemove = f92034f.remove(0);
            aVarRemove.h();
            return aVarRemove;
        }
    }

    static a c(int type, int groupPos, int childPos, int flatListPos) {
        a aVarB = b();
        aVarB.f92040d = type;
        aVarB.f92037a = groupPos;
        aVarB.f92038b = childPos;
        aVarB.f92039c = flatListPos;
        return aVarB;
    }

    static a d(int groupPosition, int childPosition) {
        return c(1, groupPosition, childPosition, 0);
    }

    static a e(int groupPosition) {
        return c(2, groupPosition, 0, 0);
    }

    static a f(long packedPosition) {
        if (packedPosition == 4294967295L) {
            return null;
        }
        a aVarB = b();
        aVarB.f92037a = ExpandableListView.getPackedPositionGroup(packedPosition);
        if (ExpandableListView.getPackedPositionType(packedPosition) == 1) {
            aVarB.f92040d = 1;
            aVarB.f92038b = ExpandableListView.getPackedPositionChild(packedPosition);
        } else {
            aVarB.f92040d = 2;
        }
        return aVarB;
    }

    private void h() {
        this.f92037a = 0;
        this.f92038b = 0;
        this.f92039c = 0;
        this.f92040d = 0;
    }

    long a() {
        return this.f92040d == 1 ? ExpandableListView.getPackedPositionForChild(this.f92037a, this.f92038b) : ExpandableListView.getPackedPositionForGroup(this.f92037a);
    }

    public void g() {
        synchronized (f92034f) {
            if (f92034f.size() < 5) {
                f92034f.add(this);
            }
        }
    }
}
