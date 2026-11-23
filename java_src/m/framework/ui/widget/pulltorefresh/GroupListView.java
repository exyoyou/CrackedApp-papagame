package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class GroupListView extends ListView {

    public static abstract class GroupListAdapter {
        private BaseAdapter adapter;

        /* JADX INFO: Access modifiers changed from: private */
        public void setInnerAdapter(BaseAdapter baseAdapter) {
            this.adapter = baseAdapter;
        }

        public abstract Object getChild(int i10, int i11);

        public abstract View getChildView(int i10, int i11, View view, ViewGroup viewGroup);

        public abstract int getChildrenCount(int i10);

        public abstract int getGroupCount();

        public abstract String getGroupTitle(int i10);

        public abstract View getGroupTitleView(int i10, View view, ViewGroup viewGroup);

        public void notifyDataSetChanged() {
            this.adapter.notifyDataSetChanged();
        }
    }

    private static class ItemHolder {
        public View child;
        public LinearLayout llItem;
        public View title;

        private ItemHolder() {
        }

        /* synthetic */ ItemHolder(ItemHolder itemHolder) {
            this();
        }
    }

    public GroupListView(Context context) {
        super(context);
    }

    public void setAdapter(final GroupListAdapter groupListAdapter) {
        BaseAdapter baseAdapter = new BaseAdapter() { // from class: m.framework.ui.widget.pulltorefresh.GroupListView.1
            private int[] getItemIndex(int i10) {
                int[] iArr = {-1, -2};
                int groupCount = groupListAdapter.getGroupCount();
                int i11 = 0;
                int i12 = 0;
                while (i11 < groupCount) {
                    int childrenCount = groupListAdapter.getChildrenCount(i11) + 1 + i12;
                    if (childrenCount > i10) {
                        iArr[0] = i11;
                        iArr[1] = (i10 - i12) - 1;
                        break;
                    }
                    i11++;
                    i12 = childrenCount;
                }
                return iArr;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                int groupCount = groupListAdapter.getGroupCount();
                int childrenCount = 0;
                for (int i10 = 0; i10 < groupCount; i10++) {
                    childrenCount += groupListAdapter.getChildrenCount(i10) + 1;
                }
                return childrenCount;
            }

            @Override // android.widget.Adapter
            public Object getItem(int i10) {
                int[] itemIndex = getItemIndex(i10);
                int i11 = itemIndex[0];
                int i12 = itemIndex[1];
                if (i11 <= -1) {
                    return null;
                }
                if (i12 == -1) {
                    return groupListAdapter.getGroupTitle(i12);
                }
                if (i12 > -1) {
                    return groupListAdapter.getChild(i11, i12);
                }
                return null;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i10) {
                return i10;
            }

            @Override // android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                int[] itemIndex = getItemIndex(i10);
                int i11 = itemIndex[0];
                int i12 = itemIndex[1];
                if (view == null) {
                    ItemHolder itemHolder = new ItemHolder(null);
                    LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
                    itemHolder.llItem = linearLayout;
                    linearLayout.setOrientation(1);
                    itemHolder.llItem.setTag(itemHolder);
                    if (i11 > -1) {
                        if (i12 == -1) {
                            View groupTitleView = groupListAdapter.getGroupTitleView(i11, itemHolder.title, itemHolder.llItem);
                            itemHolder.title = groupTitleView;
                            itemHolder.llItem.addView(groupTitleView);
                        } else if (i12 > -1) {
                            View childView = groupListAdapter.getChildView(i11, i12, itemHolder.child, itemHolder.llItem);
                            itemHolder.child = childView;
                            itemHolder.llItem.addView(childView);
                        }
                    }
                    return itemHolder.llItem;
                }
                ItemHolder itemHolder2 = (ItemHolder) view.getTag();
                if (i11 <= -1) {
                    return view;
                }
                if (i12 == -1) {
                    itemHolder2.title = groupListAdapter.getGroupTitleView(i11, itemHolder2.title, itemHolder2.llItem);
                    View view2 = itemHolder2.child;
                    if (view2 == null) {
                        return view;
                    }
                    itemHolder2.llItem.removeView(view2);
                    return view;
                }
                if (i12 <= -1) {
                    return view;
                }
                itemHolder2.child = groupListAdapter.getChildView(i11, i12, itemHolder2.child, itemHolder2.llItem);
                View view3 = itemHolder2.title;
                if (view3 == null) {
                    return view;
                }
                itemHolder2.llItem.removeView(view3);
                return view;
            }
        };
        groupListAdapter.setInnerAdapter(baseAdapter);
        super.setAdapter((ListAdapter) baseAdapter);
    }

    public GroupListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GroupListView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
