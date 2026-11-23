package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.HeterogeneousExpandableList;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
class ExpandableHListConnector extends BaseAdapter implements Filterable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExpandableListAdapter f91978b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f91980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f91981e = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final DataSetObserver f91982f = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<GroupMetadata> f91979c = new ArrayList<>();

    static class GroupMetadata implements Parcelable, Comparable<GroupMetadata> {
        public static final Parcelable.Creator<GroupMetadata> CREATOR = new a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final int f91983f = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f91984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f91985c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f91986d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f91987e;

        class a implements Parcelable.Creator<GroupMetadata> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public GroupMetadata createFromParcel(Parcel in2) {
                return GroupMetadata.f(in2.readInt(), in2.readInt(), in2.readInt(), in2.readLong());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public GroupMetadata[] newArray(int size) {
                return new GroupMetadata[size];
            }
        }

        private GroupMetadata() {
        }

        static GroupMetadata f(int flPos, int lastChildFlPos, int gPos, long gId) {
            GroupMetadata groupMetadata = new GroupMetadata();
            groupMetadata.f91984b = flPos;
            groupMetadata.f91985c = lastChildFlPos;
            groupMetadata.f91986d = gPos;
            groupMetadata.f91987e = gId;
            return groupMetadata;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(GroupMetadata another) {
            if (another != null) {
                return this.f91986d - another.f91986d;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f91984b);
            dest.writeInt(this.f91985c);
            dest.writeInt(this.f91986d);
            dest.writeLong(this.f91987e);
        }
    }

    protected class a extends DataSetObserver {
        protected a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ExpandableHListConnector.this.l(true, true);
            ExpandableHListConnector.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ExpandableHListConnector.this.l(true, true);
            ExpandableHListConnector.this.notifyDataSetInvalidated();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int f91989d = 5;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static ArrayList<b> f91990e = new ArrayList<>(5);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public it.sephiroth.android.library.widget.a f91991a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public GroupMetadata f91992b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f91993c;

        private b() {
        }

        private static b a() {
            synchronized (f91990e) {
                if (f91990e.size() <= 0) {
                    return new b();
                }
                b bVarRemove = f91990e.remove(0);
                bVarRemove.e();
                return bVarRemove;
            }
        }

        static b c(int flatListPos, int type, int groupPos, int childPos, GroupMetadata groupMetadata, int groupInsertIndex) {
            b bVarA = a();
            bVarA.f91991a = it.sephiroth.android.library.widget.a.c(type, groupPos, childPos, flatListPos);
            bVarA.f91992b = groupMetadata;
            bVarA.f91993c = groupInsertIndex;
            return bVarA;
        }

        private void e() {
            it.sephiroth.android.library.widget.a aVar = this.f91991a;
            if (aVar != null) {
                aVar.g();
                this.f91991a = null;
            }
            this.f91992b = null;
            this.f91993c = 0;
        }

        public boolean b() {
            return this.f91992b != null;
        }

        public void d() {
            e();
            synchronized (f91990e) {
                if (f91990e.size() < 5) {
                    f91990e.add(this);
                }
            }
        }
    }

    public ExpandableHListConnector(ExpandableListAdapter expandableListAdapter) {
        m(expandableListAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean forceChildrenCountRefresh, boolean syncGroupPositions) {
        ArrayList<GroupMetadata> arrayList = this.f91979c;
        int size = arrayList.size();
        int i10 = 0;
        this.f91980d = 0;
        if (syncGroupPositions) {
            boolean z10 = false;
            for (int i11 = size - 1; i11 >= 0; i11--) {
                GroupMetadata groupMetadata = arrayList.get(i11);
                int iF = f(groupMetadata.f91987e, groupMetadata.f91986d);
                if (iF != groupMetadata.f91986d) {
                    if (iF == -1) {
                        arrayList.remove(i11);
                        size--;
                    }
                    groupMetadata.f91986d = iF;
                    if (!z10) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                Collections.sort(arrayList);
            }
        }
        int i12 = 0;
        int i13 = 0;
        while (i10 < size) {
            GroupMetadata groupMetadata2 = arrayList.get(i10);
            int i14 = groupMetadata2.f91985c;
            int childrenCount = (i14 == -1 || forceChildrenCountRefresh) ? this.f91978b.getChildrenCount(groupMetadata2.f91986d) : i14 - groupMetadata2.f91984b;
            this.f91980d += childrenCount;
            int i15 = groupMetadata2.f91986d;
            int i16 = i12 + (i15 - i13);
            groupMetadata2.f91984b = i16;
            i12 = i16 + childrenCount;
            groupMetadata2.f91985c = i12;
            i10++;
            i13 = i15;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.f91978b.areAllItemsEnabled();
    }

    boolean b(int groupPos) {
        it.sephiroth.android.library.widget.a aVarC = it.sephiroth.android.library.widget.a.c(2, groupPos, -1, -1);
        b bVarI = i(aVarC);
        aVarC.g();
        if (bVarI == null) {
            return false;
        }
        boolean zC = c(bVarI);
        bVarI.d();
        return zC;
    }

    boolean c(b posMetadata) {
        GroupMetadata groupMetadata = posMetadata.f91992b;
        if (groupMetadata == null) {
            return false;
        }
        this.f91979c.remove(groupMetadata);
        l(false, false);
        notifyDataSetChanged();
        this.f91978b.onGroupCollapsed(posMetadata.f91992b.f91986d);
        return true;
    }

    boolean d(int groupPos) {
        it.sephiroth.android.library.widget.a aVarC = it.sephiroth.android.library.widget.a.c(2, groupPos, -1, -1);
        b bVarI = i(aVarC);
        aVarC.g();
        boolean zE = e(bVarI);
        bVarI.d();
        return zE;
    }

    boolean e(b posMetadata) {
        if (posMetadata.f91991a.f92037a < 0) {
            throw new RuntimeException("Need group");
        }
        if (this.f91981e == 0 || posMetadata.f91992b != null) {
            return false;
        }
        if (this.f91979c.size() >= this.f91981e) {
            GroupMetadata groupMetadata = this.f91979c.get(0);
            int iIndexOf = this.f91979c.indexOf(groupMetadata);
            b(groupMetadata.f91986d);
            int i10 = posMetadata.f91993c;
            if (i10 > iIndexOf) {
                posMetadata.f91993c = i10 - 1;
            }
        }
        int i11 = posMetadata.f91991a.f92037a;
        GroupMetadata groupMetadataF = GroupMetadata.f(-1, -1, i11, this.f91978b.getGroupId(i11));
        this.f91979c.add(posMetadata.f91993c, groupMetadataF);
        l(false, false);
        notifyDataSetChanged();
        this.f91978b.onGroupExpanded(groupMetadataF.f91986d);
        return true;
    }

    int f(long groupIdToMatch, int seedGroupPosition) {
        int groupCount = this.f91978b.getGroupCount();
        if (groupCount == 0 || groupIdToMatch == Long.MIN_VALUE) {
            return -1;
        }
        int i10 = groupCount - 1;
        int iMin = Math.min(i10, Math.max(0, seedGroupPosition));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        ExpandableListAdapter expandableListAdapterG = g();
        if (expandableListAdapterG == null) {
            return -1;
        }
        int i11 = iMin;
        int i12 = i11;
        loop0: while (true) {
            boolean z10 = false;
            while (SystemClock.uptimeMillis() <= jUptimeMillis) {
                if (expandableListAdapterG.getGroupId(iMin) != groupIdToMatch) {
                    boolean z11 = i11 == i10;
                    boolean z12 = i12 == 0;
                    if (z11 && z12) {
                        break loop0;
                    }
                    if (z12 || (z10 && !z11)) {
                        i11++;
                        iMin = i11;
                    } else if (z11 || (!z10 && !z12)) {
                        i12--;
                        iMin = i12;
                        z10 = true;
                    }
                } else {
                    return iMin;
                }
            }
            break loop0;
        }
        return -1;
    }

    ExpandableListAdapter g() {
        return this.f91978b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f91978b.getGroupCount() + this.f91980d;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        ExpandableListAdapter expandableListAdapterG = g();
        if (expandableListAdapterG instanceof Filterable) {
            return ((Filterable) expandableListAdapterG).getFilter();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public Object getItem(int flatListPos) {
        Object child;
        b bVarJ = j(flatListPos);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        int i10 = aVar.f92040d;
        if (i10 == 2) {
            child = this.f91978b.getGroup(aVar.f92037a);
        } else {
            if (i10 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            child = this.f91978b.getChild(aVar.f92037a, aVar.f92038b);
        }
        bVarJ.d();
        return child;
    }

    @Override // android.widget.Adapter
    public long getItemId(int flatListPos) {
        long combinedChildId;
        b bVarJ = j(flatListPos);
        long groupId = this.f91978b.getGroupId(bVarJ.f91991a.f92037a);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        int i10 = aVar.f92040d;
        if (i10 == 2) {
            combinedChildId = this.f91978b.getCombinedGroupId(groupId);
        } else {
            if (i10 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            combinedChildId = this.f91978b.getCombinedChildId(groupId, this.f91978b.getChildId(aVar.f92037a, aVar.f92038b));
        }
        bVarJ.d();
        return combinedChildId;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int flatListPos) {
        int groupType;
        b bVarJ = j(flatListPos);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        ExpandableListAdapter expandableListAdapter = this.f91978b;
        if (expandableListAdapter instanceof HeterogeneousExpandableList) {
            HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
            groupType = aVar.f92040d == 2 ? heterogeneousExpandableList.getGroupType(aVar.f92037a) : heterogeneousExpandableList.getChildType(aVar.f92037a, aVar.f92038b) + heterogeneousExpandableList.getGroupTypeCount();
        } else {
            groupType = aVar.f92040d == 2 ? 0 : 1;
        }
        bVarJ.d();
        return groupType;
    }

    @Override // android.widget.Adapter
    public View getView(int flatListPos, View convertView, ViewGroup parent) {
        View childView;
        b bVarJ = j(flatListPos);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        int i10 = aVar.f92040d;
        if (i10 == 2) {
            childView = this.f91978b.getGroupView(aVar.f92037a, bVarJ.b(), convertView, parent);
        } else {
            if (i10 != 1) {
                throw new RuntimeException("Flat list position is of unknown type");
            }
            childView = this.f91978b.getChildView(aVar.f92037a, aVar.f92038b, bVarJ.f91992b.f91985c == flatListPos, convertView, parent);
        }
        bVarJ.d();
        return childView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        ExpandableListAdapter expandableListAdapter = this.f91978b;
        if (!(expandableListAdapter instanceof HeterogeneousExpandableList)) {
            return 2;
        }
        HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
        return heterogeneousExpandableList.getGroupTypeCount() + heterogeneousExpandableList.getChildTypeCount();
    }

    ArrayList<GroupMetadata> h() {
        return this.f91979c;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f91978b.hasStableIds();
    }

    b i(final it.sephiroth.android.library.widget.a pos) {
        ArrayList<GroupMetadata> arrayList = this.f91979c;
        int size = arrayList.size();
        int i10 = size - 1;
        if (size == 0) {
            int i11 = pos.f92037a;
            return b.c(i11, pos.f92040d, i11, pos.f92038b, null, 0);
        }
        int i12 = 0;
        int i13 = 0;
        while (i13 <= i10) {
            i12 = ((i10 - i13) / 2) + i13;
            GroupMetadata groupMetadata = arrayList.get(i12);
            int i14 = pos.f92037a;
            int i15 = groupMetadata.f91986d;
            if (i14 > i15) {
                i13 = i12 + 1;
            } else if (i14 < i15) {
                i10 = i12 - 1;
            } else if (i14 == i15) {
                int i16 = pos.f92040d;
                if (i16 == 2) {
                    return b.c(groupMetadata.f91984b, i16, i14, pos.f92038b, groupMetadata, i12);
                }
                if (i16 != 1) {
                    return null;
                }
                int i17 = groupMetadata.f91984b;
                int i18 = pos.f92038b;
                return b.c(i17 + i18 + 1, i16, i14, i18, groupMetadata, i12);
            }
        }
        if (pos.f92040d != 2) {
            return null;
        }
        if (i13 > i12) {
            GroupMetadata groupMetadata2 = arrayList.get(i13 - 1);
            int i19 = groupMetadata2.f91985c;
            int i20 = pos.f92037a;
            return b.c(i19 + (i20 - groupMetadata2.f91986d), pos.f92040d, i20, pos.f92038b, null, i13);
        }
        if (i10 >= i12) {
            return null;
        }
        int i21 = 1 + i10;
        GroupMetadata groupMetadata3 = arrayList.get(i21);
        int i22 = groupMetadata3.f91984b;
        int i23 = groupMetadata3.f91986d;
        int i24 = pos.f92037a;
        return b.c(i22 - (i23 - i24), pos.f92040d, i24, pos.f92038b, null, i21);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ExpandableListAdapter expandableListAdapterG = g();
        return expandableListAdapterG == null || expandableListAdapterG.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int flatListPos) {
        b bVarJ = j(flatListPos);
        it.sephiroth.android.library.widget.a aVar = bVarJ.f91991a;
        boolean zIsChildSelectable = aVar.f92040d == 1 ? this.f91978b.isChildSelectable(aVar.f92037a, aVar.f92038b) : true;
        bVarJ.d();
        return zIsChildSelectable;
    }

    b j(final int flPos) {
        int i10;
        ArrayList<GroupMetadata> arrayList = this.f91979c;
        int size = arrayList.size();
        int i11 = size - 1;
        if (size == 0) {
            return b.c(flPos, 2, flPos, -1, null, 0);
        }
        int i12 = 0;
        int i13 = i11;
        int i14 = 0;
        while (i12 <= i13) {
            int i15 = ((i13 - i12) / 2) + i12;
            GroupMetadata groupMetadata = arrayList.get(i15);
            int i16 = groupMetadata.f91985c;
            if (flPos > i16) {
                i12 = i15 + 1;
            } else {
                int i17 = groupMetadata.f91984b;
                if (flPos < i17) {
                    i13 = i15 - 1;
                } else {
                    if (flPos == i17) {
                        return b.c(flPos, 2, groupMetadata.f91986d, -1, groupMetadata, i15);
                    }
                    if (flPos <= i16) {
                        return b.c(flPos, 1, groupMetadata.f91986d, flPos - (i17 + 1), groupMetadata, i15);
                    }
                }
            }
            i14 = i15;
        }
        if (i12 > i14) {
            GroupMetadata groupMetadata2 = arrayList.get(i12 - 1);
            i10 = (flPos - groupMetadata2.f91985c) + groupMetadata2.f91986d;
        } else {
            if (i13 >= i14) {
                throw new RuntimeException("Unknown state");
            }
            i12 = i13 + 1;
            GroupMetadata groupMetadata3 = arrayList.get(i12);
            i10 = groupMetadata3.f91986d - (groupMetadata3.f91984b - flPos);
        }
        return b.c(flPos, 2, i10, -1, null, i12);
    }

    public boolean k(int groupPosition) {
        for (int size = this.f91979c.size() - 1; size >= 0; size--) {
            if (this.f91979c.get(size).f91986d == groupPosition) {
                return true;
            }
        }
        return false;
    }

    public void m(ExpandableListAdapter expandableListAdapter) {
        ExpandableListAdapter expandableListAdapter2 = this.f91978b;
        if (expandableListAdapter2 != null) {
            expandableListAdapter2.unregisterDataSetObserver(this.f91982f);
        }
        this.f91978b = expandableListAdapter;
        expandableListAdapter.registerDataSetObserver(this.f91982f);
    }

    void n(ArrayList<GroupMetadata> expandedGroupMetadataList) {
        ExpandableListAdapter expandableListAdapter;
        if (expandedGroupMetadataList == null || (expandableListAdapter = this.f91978b) == null) {
            return;
        }
        int groupCount = expandableListAdapter.getGroupCount();
        for (int size = expandedGroupMetadataList.size() - 1; size >= 0; size--) {
            if (expandedGroupMetadataList.get(size).f91986d >= groupCount) {
                return;
            }
        }
        this.f91979c = expandedGroupMetadataList;
        l(true, false);
    }

    public void o(int maxExpGroupCount) {
        this.f91981e = maxExpGroupCount;
    }
}
