package m.framework.ui.widget.slidingmenu;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class MenuAdapter {
    private ArrayList<SlidingMenuGroup> menus = new ArrayList<>();

    public MenuAdapter(SlidingMenu slidingMenu) {
    }

    private SlidingMenuGroup findGroupById(int i10) {
        ArrayList<SlidingMenuGroup> arrayList = this.menus;
        if (arrayList == null) {
            return null;
        }
        for (SlidingMenuGroup slidingMenuGroup : arrayList) {
            if (slidingMenuGroup != null && slidingMenuGroup.f94149id == i10) {
                return slidingMenuGroup;
            }
        }
        return null;
    }

    SlidingMenuGroup getGroup(int i10) {
        return this.menus.get(i10);
    }

    int getGroupCount() {
        ArrayList<SlidingMenuGroup> arrayList = this.menus;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public abstract View getGroupView(int i10, ViewGroup viewGroup);

    protected SlidingMenuItem getItem(int i10, int i11) {
        return this.menus.get(i10).getItem(i11);
    }

    public abstract View getItemView(SlidingMenuItem slidingMenuItem, ViewGroup viewGroup);

    public SlidingMenuItem getMenuItem(int i10, int i11) {
        SlidingMenuGroup slidingMenuGroupFindGroupById = findGroupById(i10);
        if (slidingMenuGroupFindGroupById == null) {
            return null;
        }
        return slidingMenuGroupFindGroupById.findItemById(i11);
    }

    public View getMenuTitle() {
        return null;
    }

    protected String getTitle(int i10) {
        return this.menus.get(i10).text;
    }

    public void notifyDataSetChanged(SlidingMenuItem slidingMenuItem) {
    }

    public boolean onItemTrigger(SlidingMenuItem slidingMenuItem) {
        return false;
    }

    public void onMenuSwitch(boolean z10) {
    }

    public void setGroup(int i10, String str) {
        SlidingMenuGroup slidingMenuGroupFindGroupById = findGroupById(i10);
        if (slidingMenuGroupFindGroupById == null) {
            slidingMenuGroupFindGroupById = new SlidingMenuGroup();
            slidingMenuGroupFindGroupById.f94149id = i10;
            this.menus.add(slidingMenuGroupFindGroupById);
        }
        slidingMenuGroupFindGroupById.text = str;
    }

    public void setItem(int i10, SlidingMenuItem slidingMenuItem) {
        SlidingMenuGroup slidingMenuGroupFindGroupById;
        if (slidingMenuItem == null || (slidingMenuGroupFindGroupById = findGroupById(i10)) == null) {
            return;
        }
        slidingMenuGroupFindGroupById.setItem(slidingMenuItem);
    }

    void setGroup(SlidingMenuGroup slidingMenuGroup) {
        if (slidingMenuGroup == null) {
            return;
        }
        SlidingMenuGroup slidingMenuGroupFindGroupById = findGroupById(slidingMenuGroup.f94149id);
        if (slidingMenuGroupFindGroupById == null) {
            this.menus.add(slidingMenuGroup);
            return;
        }
        int iIndexOf = this.menus.indexOf(slidingMenuGroupFindGroupById);
        this.menus.remove(iIndexOf);
        this.menus.add(iIndexOf, slidingMenuGroup);
    }
}
