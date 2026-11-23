package m.framework.ui.widget.slidingmenu;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class SlidingMenuGroup {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    int f94149id;
    private ArrayList<SlidingMenuItem> items = new ArrayList<>();
    String text;

    SlidingMenuGroup() {
    }

    SlidingMenuItem findItemById(int i10) {
        ArrayList<SlidingMenuItem> arrayList = this.items;
        if (arrayList == null) {
            return null;
        }
        for (SlidingMenuItem slidingMenuItem : arrayList) {
            if (slidingMenuItem != null && slidingMenuItem.f94150id == i10) {
                return slidingMenuItem;
            }
        }
        return null;
    }

    int getCount() {
        ArrayList<SlidingMenuItem> arrayList = this.items;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    SlidingMenuItem getItem(int i10) {
        return this.items.get(i10);
    }

    void setItem(SlidingMenuItem slidingMenuItem) {
        if (slidingMenuItem == null) {
            return;
        }
        SlidingMenuItem slidingMenuItemFindItemById = findItemById(slidingMenuItem.f94150id);
        slidingMenuItem.group = this.f94149id;
        if (slidingMenuItemFindItemById == null) {
            this.items.add(slidingMenuItem);
            return;
        }
        int iIndexOf = this.items.indexOf(slidingMenuItemFindItemById);
        this.items.remove(iIndexOf);
        this.items.add(iIndexOf, slidingMenuItem);
    }
}
