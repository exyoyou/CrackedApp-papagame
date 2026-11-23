package com.join.android.app.component.video;

import android.os.Handler;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.MApplication;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import com.papa.gsyvideoplayer.utils.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ConcurrentHashMap<String, b> f35234i = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f35235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    RecyclerView.LayoutManager f35236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f35237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f35238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f35239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    RecyclerView f35240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f35241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Handler f35242h = new Handler();

    public h(RecyclerView view, String playTag) {
        this.f35235a = "";
        this.f35235a = playTag;
        this.f35240f = view;
    }

    public static void B(String playTag) {
        try {
            for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                if (entry.getValue().s().equals(playTag)) {
                    entry.getValue().g0();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void C(String playTag, boolean seek) {
        try {
            for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                if (entry.getValue().s().equals(playTag)) {
                    entry.getValue().h0(seek);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void G(String key) {
        f35234i.remove(key);
    }

    public static void j(String playTag) {
        try {
            if (f35234i.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                    if (entry.getValue().s().equals(playTag)) {
                        entry.getValue().i0();
                        arrayList.add(entry.getKey());
                    }
                }
                if (arrayList.size() > 0) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        G((String) it2.next());
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static int k(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    private static int l(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 < i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public static int[] m(RecyclerView recyclerView) {
        int[] iArr = {0, 0};
        if (recyclerView == null) {
            return iArr;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            iArr[0] = gridLayoutManager.findFirstVisibleItemPosition();
            iArr[1] = gridLayoutManager.findLastVisibleItemPosition();
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            int[] iArr2 = new int[staggeredGridLayoutManager.getSpanCount()];
            staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr2);
            iArr[0] = l(iArr2);
            iArr[1] = k(iArr2);
        } else {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            iArr[0] = linearLayoutManager.findFirstVisibleItemPosition();
            iArr[1] = linearLayoutManager.findLastVisibleItemPosition();
        }
        return iArr;
    }

    public static int n(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
        return l(iArr);
    }

    public static int o(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        return l(iArr);
    }

    public static int p(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        return k(iArr);
    }

    public static int q(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        return k(iArr);
    }

    public static b r(String key, String playTag, int mPlayPosition, boolean create) {
        b bVar = f35234i.get(key);
        if (bVar != null || !create) {
            return bVar;
        }
        b bVar2 = new b();
        bVar2.v(mPlayPosition);
        bVar2.i(playTag);
        com.papa.gsyvideoplayer.model.c cVar = new com.papa.gsyvideoplayer.model.c(4, "enable-accurate-seek", 1);
        com.papa.gsyvideoplayer.model.c cVar2 = new com.papa.gsyvideoplayer.model.c(1, "analyzeduration", 1);
        com.papa.gsyvideoplayer.model.c cVar3 = new com.papa.gsyvideoplayer.model.c(1, "analyzemaxduration", 30);
        new com.papa.gsyvideoplayer.model.c(2, "skip_loop_filter", 48);
        com.papa.gsyvideoplayer.model.c cVar4 = new com.papa.gsyvideoplayer.model.c(4, "packet-buffering", 0);
        com.papa.gsyvideoplayer.model.c cVar5 = new com.papa.gsyvideoplayer.model.c(4, "framedrop", 1);
        com.papa.gsyvideoplayer.model.c cVar6 = new com.papa.gsyvideoplayer.model.c(1, "dns_cache_clear", 1);
        com.papa.gsyvideoplayer.model.c cVar7 = new com.papa.gsyvideoplayer.model.c(1, "protocol_whitelist", "crypto,file,http,https,tcp,tls,udp");
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar);
        arrayList.add(cVar2);
        arrayList.add(cVar3);
        arrayList.add(cVar4);
        arrayList.add(cVar5);
        arrayList.add(cVar6);
        arrayList.add(cVar7);
        bVar2.X(arrayList);
        f35234i.put(key, bVar2);
        return bVar2;
    }

    public static void z(String playTag) {
        try {
            for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                if (entry.getValue().s().equals(playTag)) {
                    entry.getValue().f0();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void A() {
        h(this.f35241g);
    }

    public void D() {
        g();
    }

    public void E() {
        i(this.f35241g);
    }

    public void F() {
        f(1);
    }

    public boolean e(boolean isHomepage) {
        if (isHomepage) {
            int iZ = com.join.mgps.pref.h.n(MApplication.n()).z();
            if (iZ != 0) {
                return iZ == 1 && k.i(MApplication.n());
            }
            return true;
        }
        int iE = com.join.mgps.pref.h.n(MApplication.n()).e();
        if (iE != 1) {
            return iE != 2;
        }
        return k.i(MApplication.n());
    }

    public synchronized void f(int playCount) {
        View viewFindViewById;
        this.f35242h.removeCallbacksAndMessages(null);
        try {
            synchronized (this) {
                this.f35241g = playCount;
                if (this.f35236b == null) {
                    this.f35236b = this.f35240f.getLayoutManager();
                }
                this.f35237c = n(this.f35240f);
                int iP = p(this.f35240f);
                this.f35238d = iP;
                this.f35239e = iP + playCount;
                if (iP >= this.f35236b.getItemCount() - 1) {
                    RecyclerView.LayoutManager layoutManager = this.f35236b;
                    if (layoutManager instanceof GridLayoutManager) {
                        int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
                        int itemCount = this.f35236b.getItemCount() / spanCount;
                        if (this.f35236b.getItemCount() % spanCount == 0) {
                            int itemCount2 = this.f35236b.getItemCount();
                            this.f35239e = itemCount2;
                            this.f35237c = itemCount2 - playCount;
                        } else {
                            int i10 = itemCount * spanCount;
                            this.f35237c = i10;
                            this.f35239e = i10 + playCount;
                        }
                    } else {
                        int itemCount3 = layoutManager.getItemCount();
                        this.f35239e = itemCount3;
                        this.f35237c = itemCount3 - playCount;
                    }
                }
                ArrayList<MultiStandVideo> arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = this.f35237c; i11 <= this.f35239e; i11++) {
                    RecyclerView.LayoutManager layoutManager2 = this.f35236b;
                    if (layoutManager2 != null && layoutManager2.findViewByPosition(i11) != null && (viewFindViewById = this.f35236b.findViewByPosition(i11).findViewById(R.id.wf_video)) != null && (viewFindViewById instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo = (MultiStandVideo) viewFindViewById;
                        if (multiStandVideo.getCurrentState() != 2 && multiStandVideo.getCurrentState() != 1 && multiStandVideo.getCurrentState() != 3) {
                            if (multiStandVideo.getCurrentState() == 5) {
                                multiStandVideo.onVideoResume(false);
                            } else {
                                arrayList.add(multiStandVideo);
                            }
                        }
                        arrayList2.add(multiStandVideo.getKey());
                    }
                }
                if (f35234i.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                        b value = entry.getValue();
                        if (value.s().equals(this.f35235a) && !arrayList2.contains(entry.getKey())) {
                            value.i0();
                            arrayList3.add(entry.getKey());
                        }
                    }
                    if (arrayList3.size() > 0) {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            G((String) it2.next());
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    for (final MultiStandVideo multiStandVideo2 : arrayList) {
                        this.f35242h.postDelayed(new Runnable() { // from class: com.join.android.app.component.video.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                multiStandVideo2.startPlayLogic();
                            }
                        }, 100L);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void g() {
        View viewFindViewById;
        boolean z10;
        int itemViewType;
        View viewFindViewById2;
        boolean z11;
        int itemViewType2;
        try {
            this.f35242h.removeCallbacksAndMessages(null);
            if (new PrefDef_(MApplication.n()).isHomepagePlayVideo().d().booleanValue()) {
                this.f35241g = 2;
                if (this.f35236b == null) {
                    this.f35236b = this.f35240f.getLayoutManager();
                }
                this.f35237c = n(this.f35240f);
                this.f35238d = p(this.f35240f);
                ArrayList<MultiStandVideo> arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                RecyclerView recyclerView = this.f35240f;
                if (recyclerView instanceof XRecyclerView2) {
                    if (!((XRecyclerView2) recyclerView).o() || this.f35238d < this.f35236b.getItemCount() - 1) {
                        int i10 = 0;
                        for (int i11 = this.f35237c; i11 <= this.f35238d && i10 < this.f35241g; i11++) {
                            RecyclerView.LayoutManager layoutManager = this.f35236b;
                            if (layoutManager != null && layoutManager.findViewByPosition(i11) != null && (viewFindViewById = this.f35236b.findViewByPosition(i11).findViewById(R.id.wf_video)) != null) {
                                if (this.f35240f.getAdapter() == null || !((itemViewType = this.f35240f.getAdapter().getItemViewType(i11)) == 29 || itemViewType == 36)) {
                                    z10 = false;
                                } else if (i10 >= 1) {
                                    break;
                                } else {
                                    z10 = true;
                                }
                                if (viewFindViewById instanceof MultiStandVideo) {
                                    MultiStandVideo multiStandVideo = (MultiStandVideo) viewFindViewById;
                                    if (multiStandVideo.getCurrentState() != 2) {
                                        if (multiStandVideo.getCurrentState() == 5) {
                                            multiStandVideo.onVideoResume(false);
                                        } else {
                                            arrayList.add(multiStandVideo);
                                        }
                                    }
                                    i10++;
                                    arrayList2.add(multiStandVideo.getKey());
                                }
                                if (z10) {
                                    break;
                                }
                            }
                        }
                    } else {
                        int i12 = 0;
                        for (int i13 = this.f35238d; i13 >= this.f35237c && i12 < this.f35241g; i13--) {
                            RecyclerView.LayoutManager layoutManager2 = this.f35236b;
                            if (layoutManager2 != null && layoutManager2.findViewByPosition(i13) != null && (viewFindViewById2 = this.f35236b.findViewByPosition(i13).findViewById(R.id.wf_video)) != null) {
                                if (this.f35240f.getAdapter() == null || !((itemViewType2 = this.f35240f.getAdapter().getItemViewType(i13)) == 29 || itemViewType2 == 36)) {
                                    z11 = false;
                                } else if (i12 >= 1) {
                                    break;
                                } else {
                                    z11 = true;
                                }
                                if (viewFindViewById2 instanceof MultiStandVideo) {
                                    MultiStandVideo multiStandVideo2 = (MultiStandVideo) viewFindViewById2;
                                    if (multiStandVideo2.getCurrentState() != 2) {
                                        if (multiStandVideo2.getCurrentState() == 5) {
                                            multiStandVideo2.onVideoResume(false);
                                        } else {
                                            arrayList.add(multiStandVideo2);
                                        }
                                    }
                                    i12++;
                                    arrayList2.add(multiStandVideo2.getKey());
                                }
                                if (z11) {
                                    break;
                                }
                            }
                        }
                    }
                }
                if (f35234i.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                        b value = entry.getValue();
                        if (value.s().equals(this.f35235a) && !arrayList2.contains(entry.getKey())) {
                            value.i0();
                            arrayList3.add(entry.getKey());
                        }
                    }
                    if (arrayList3.size() > 0) {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            G((String) it2.next());
                        }
                    }
                }
                if (arrayList.size() > 0 && e(true)) {
                    for (final MultiStandVideo multiStandVideo3 : arrayList) {
                        this.f35242h.postDelayed(new Runnable() { // from class: com.join.android.app.component.video.g
                            @Override // java.lang.Runnable
                            public final void run() {
                                multiStandVideo3.startPlayLogic();
                            }
                        }, 300L);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void h(int playCount) {
        View viewFindViewById;
        try {
            this.f35242h.removeCallbacksAndMessages(null);
            synchronized (this) {
                this.f35241g = playCount;
                if (this.f35236b == null) {
                    this.f35236b = this.f35240f.getLayoutManager();
                }
                this.f35237c = n(this.f35240f);
                int iP = p(this.f35240f);
                this.f35238d = iP;
                this.f35239e = iP;
                if (iP >= this.f35236b.getItemCount() - 1) {
                    RecyclerView.LayoutManager layoutManager = this.f35236b;
                    if (layoutManager instanceof GridLayoutManager) {
                        int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
                        int itemCount = this.f35236b.getItemCount() / spanCount;
                        if (this.f35236b.getItemCount() % spanCount == 0) {
                            int itemCount2 = this.f35236b.getItemCount();
                            this.f35239e = itemCount2;
                            this.f35237c = itemCount2 - playCount;
                        } else {
                            int i10 = itemCount * spanCount;
                            this.f35237c = i10;
                            this.f35239e = i10 + playCount;
                        }
                    } else {
                        int itemCount3 = layoutManager.getItemCount();
                        this.f35239e = itemCount3;
                        this.f35237c = itemCount3 - playCount;
                    }
                }
                ArrayList<MultiStandVideo> arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = this.f35237c; i11 <= this.f35239e; i11++) {
                    RecyclerView.LayoutManager layoutManager2 = this.f35236b;
                    if (layoutManager2 != null && layoutManager2.findViewByPosition(i11) != null && (viewFindViewById = this.f35236b.findViewByPosition(i11).findViewById(R.id.wf_video)) != null && (viewFindViewById instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo = (MultiStandVideo) viewFindViewById;
                        if (multiStandVideo.getCurrentState() != 2 && multiStandVideo.getCurrentState() != 1 && multiStandVideo.getCurrentState() != 3) {
                            if (multiStandVideo.getCurrentState() == 5) {
                                multiStandVideo.onVideoResume(false);
                            } else {
                                arrayList.add(multiStandVideo);
                            }
                        }
                        arrayList2.add(multiStandVideo.getKey());
                    }
                }
                if (f35234i.size() > 0) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                        b value = entry.getValue();
                        if (value.s().equals(this.f35235a) && !arrayList2.contains(entry.getKey())) {
                            value.i0();
                            arrayList3.add(entry.getKey());
                        }
                    }
                    if (arrayList3.size() > 0) {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            G((String) it2.next());
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    for (final MultiStandVideo multiStandVideo2 : arrayList) {
                        this.f35242h.postDelayed(new Runnable() { // from class: com.join.android.app.component.video.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                multiStandVideo2.startPlayLogic();
                            }
                        }, 100L);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void i(int playCount) {
        View viewFindViewById;
        View viewFindViewById2;
        try {
            this.f35242h.removeCallbacksAndMessages(null);
            this.f35241g = playCount;
            if (this.f35236b == null) {
                this.f35236b = this.f35240f.getLayoutManager();
            }
            this.f35237c = n(this.f35240f);
            this.f35238d = p(this.f35240f);
            ArrayList<MultiStandVideo> arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (this.f35238d >= this.f35236b.getItemCount() - 1) {
                int i10 = 0;
                for (int i11 = this.f35238d; i11 >= this.f35237c && i10 < playCount; i11--) {
                    RecyclerView.LayoutManager layoutManager = this.f35236b;
                    if (layoutManager != null && layoutManager.findViewByPosition(i11) != null && (viewFindViewById2 = this.f35236b.findViewByPosition(i11).findViewById(R.id.wf_video)) != null && (viewFindViewById2 instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo = (MultiStandVideo) viewFindViewById2;
                        if (multiStandVideo.getCurrentState() != 2) {
                            if (multiStandVideo.getCurrentState() == 5) {
                                multiStandVideo.onVideoResume(false);
                            } else {
                                arrayList.add(multiStandVideo);
                            }
                        }
                        i10++;
                        arrayList2.add(multiStandVideo.getKey());
                    }
                }
            } else {
                int i12 = 0;
                for (int i13 = this.f35237c; i13 <= this.f35238d && i12 < playCount; i13++) {
                    RecyclerView.LayoutManager layoutManager2 = this.f35236b;
                    if (layoutManager2 != null && layoutManager2.findViewByPosition(i13) != null && (viewFindViewById = this.f35236b.findViewByPosition(i13).findViewById(R.id.wf_video)) != null && (viewFindViewById instanceof MultiStandVideo)) {
                        MultiStandVideo multiStandVideo2 = (MultiStandVideo) viewFindViewById;
                        if (multiStandVideo2.getCurrentState() != 2) {
                            if (multiStandVideo2.getCurrentState() == 5) {
                                multiStandVideo2.onVideoResume(false);
                            } else {
                                arrayList.add(multiStandVideo2);
                            }
                        }
                        i12++;
                        arrayList2.add(multiStandVideo2.getKey());
                    }
                }
            }
            if (f35234i.size() > 0) {
                ArrayList arrayList3 = new ArrayList();
                for (Map.Entry<String, b> entry : f35234i.entrySet()) {
                    b value = entry.getValue();
                    if (value.s().equals(this.f35235a) && !arrayList2.contains(entry.getKey())) {
                        value.i0();
                        arrayList3.add(entry.getKey());
                    }
                }
                if (arrayList3.size() > 0) {
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        G((String) it2.next());
                    }
                }
            }
            if (arrayList.size() > 0) {
                for (final MultiStandVideo multiStandVideo3 : arrayList) {
                    this.f35242h.postDelayed(new Runnable() { // from class: com.join.android.app.component.video.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            multiStandVideo3.startPlayLogic();
                        }
                    }, 300L);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String s() {
        return this.f35235a;
    }

    public void x() {
        j(this.f35235a);
    }

    public void y() {
        z(this.f35235a);
    }
}
