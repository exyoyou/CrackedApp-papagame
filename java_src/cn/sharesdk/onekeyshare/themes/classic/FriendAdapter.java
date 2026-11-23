package cn.sharesdk.onekeyshare.themes.classic;

import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.mob.tools.gui.PullToRequestListAdapter;
import com.mob.tools.gui.PullToRequestView;
import com.mob.tools.utils.UIHandler;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class FriendAdapter extends PullToRequestListAdapter implements PlatformActionListener {
    private FriendListPage activity;
    private int curPage;
    private ArrayList<Following> follows;
    private boolean hasNext;
    private PRTHeader llHeader;
    private HashMap<String, Boolean> map;
    private final int pageCount;
    private Platform platform;
    private float ratio;

    private static class FollowersResult {
        public boolean hasNextPage;
        public ArrayList<Following> list;

        private FollowersResult() {
            this.hasNextPage = false;
        }
    }

    public static class Following {
        public String atName;
        public boolean checked;
        public String description;
        public String icon;
        public String screenName;
        public String uid;
    }

    public FriendAdapter(FriendListPage friendListPage, PullToRequestView pullToRequestView) {
        super(pullToRequestView);
        this.pageCount = 15;
        this.activity = friendListPage;
        this.curPage = -1;
        this.hasNext = true;
        this.map = new HashMap<>();
        this.follows = new ArrayList<>();
        getListView().setDivider(new ColorDrawable(-1381654));
    }

    private void next() {
        if (this.hasNext) {
            this.platform.listFriend(15, this.curPage + 1, null);
        }
    }

    private FollowersResult parseFollowers(String str, HashMap<String, Object> map, HashMap<String, Boolean> map2) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        ArrayList<Following> arrayList = new ArrayList<>();
        boolean z10 = true;
        boolean zContainsKey = false;
        if (!"SinaWeibo".equals(str)) {
            if ("TencentWeibo".equals(str)) {
                z10 = ((Integer) map.get("hasnext")).intValue() == 0;
                for (HashMap map3 : (ArrayList) map.get(PapayPayDetialActivity_.INFO_EXTRA)) {
                    String strValueOf = String.valueOf(map3.get("name"));
                    if (!map2.containsKey(strValueOf)) {
                        Following following = new Following();
                        following.screenName = String.valueOf(map3.get("nick"));
                        following.uid = strValueOf;
                        following.atName = strValueOf;
                        Iterator it2 = ((ArrayList) map3.get("tweet")).iterator();
                        if (it2.hasNext()) {
                            following.description = String.valueOf(((HashMap) it2.next()).get("text"));
                        }
                        following.icon = String.valueOf(map3.get("head")) + "/100";
                        map2.put(following.uid, Boolean.TRUE);
                        arrayList.add(following);
                    }
                }
            } else if ("Facebook".equals(str)) {
                for (HashMap map4 : (ArrayList) map.get("data")) {
                    String strValueOf2 = String.valueOf(map4.get("id"));
                    if (!map2.containsKey(strValueOf2)) {
                        Following following2 = new Following();
                        following2.uid = strValueOf2;
                        following2.atName = "[" + strValueOf2 + "]";
                        following2.screenName = String.valueOf(map4.get("name"));
                        HashMap map5 = (HashMap) map4.get("picture");
                        if (map5 != null) {
                            following2.icon = String.valueOf(((HashMap) map5.get("data")).get("url"));
                        }
                        map2.put(following2.uid, Boolean.TRUE);
                        arrayList.add(following2);
                    }
                }
                zContainsKey = ((HashMap) map.get("paging")).containsKey("next");
            } else if ("Twitter".equals(str)) {
                for (HashMap map6 : (ArrayList) map.get("users")) {
                    String strValueOf3 = String.valueOf(map6.get("screen_name"));
                    if (!map2.containsKey(strValueOf3)) {
                        Following following3 = new Following();
                        following3.uid = strValueOf3;
                        following3.atName = strValueOf3;
                        following3.screenName = String.valueOf(map6.get("name"));
                        following3.description = String.valueOf(map6.get(b.f89370k));
                        following3.icon = String.valueOf(map6.get("profile_image_url"));
                        map2.put(following3.uid, Boolean.TRUE);
                        arrayList.add(following3);
                    }
                }
            }
            FollowersResult followersResult = new FollowersResult();
            followersResult.list = arrayList;
            followersResult.hasNextPage = zContainsKey;
            return followersResult;
        }
        for (HashMap map7 : (ArrayList) map.get("users")) {
            String strValueOf4 = String.valueOf(map7.get("id"));
            if (!map2.containsKey(strValueOf4)) {
                Following following4 = new Following();
                following4.uid = strValueOf4;
                following4.screenName = String.valueOf(map7.get("name"));
                following4.description = String.valueOf(map7.get(b.f89370k));
                following4.icon = String.valueOf(map7.get("profile_image_url"));
                following4.atName = following4.screenName;
                map2.put(following4.uid, Boolean.TRUE);
                arrayList.add(following4);
            }
        }
        if (((Integer) map.get("total_number")).intValue() <= map2.size()) {
            z10 = false;
        }
        zContainsKey = z10;
        FollowersResult followersResult2 = new FollowersResult();
        followersResult2.list = arrayList;
        followersResult2.hasNextPage = zContainsKey;
        return followersResult2;
    }

    @Override // com.mob.tools.gui.PullToRequestBaseListAdapter
    public int getCount() {
        ArrayList<Following> arrayList = this.follows;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // com.mob.tools.gui.PullToRequestAdatper
    public View getFooterView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setMinimumHeight(10);
        return linearLayout;
    }

    @Override // com.mob.tools.gui.PullToRequestAdatper
    public View getHeaderView() {
        if (this.llHeader == null) {
            this.llHeader = new PRTHeader(getContext());
        }
        return this.llHeader;
    }

    @Override // com.mob.tools.gui.PullToRequestBaseListAdapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // com.mob.tools.gui.PullToRequestBaseListAdapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = new FriendListItem(viewGroup.getContext(), this.ratio);
        }
        ((FriendListItem) view).update(getItem(i10), isFling());
        if (i10 == getCount() - 1) {
            next();
        }
        return view;
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i10) {
        UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.onekeyshare.themes.classic.FriendAdapter.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                FriendAdapter.this.activity.finish();
                return false;
            }
        });
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i10, HashMap<String, Object> map) {
        final FollowersResult followers = parseFollowers(this.platform.getName(), map, this.map);
        if (followers == null) {
            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.sharesdk.onekeyshare.themes.classic.FriendAdapter.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    FriendAdapter.this.notifyDataSetChanged();
                    return false;
                }
            });
            return;
        }
        this.hasNext = followers.hasNextPage;
        ArrayList<Following> arrayList = followers.list;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        this.curPage++;
        Message message = new Message();
        message.what = 1;
        message.obj = followers.list;
        UIHandler.sendMessage(message, new Handler.Callback() { // from class: cn.sharesdk.onekeyshare.themes.classic.FriendAdapter.2
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message2) {
                if (FriendAdapter.this.curPage <= 0) {
                    FriendAdapter.this.follows.clear();
                }
                FriendAdapter.this.follows.addAll(followers.list);
                FriendAdapter.this.notifyDataSetChanged();
                return false;
            }
        });
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i10, Throwable th) {
        th.printStackTrace();
    }

    @Override // com.mob.tools.gui.PullToRequestAdatper
    public void onPullDown(int i10) {
        this.llHeader.onPullDown(i10);
    }

    @Override // com.mob.tools.gui.PullToRequestAdatper
    public void onRefresh() {
        this.llHeader.onRequest();
        this.curPage = -1;
        this.hasNext = true;
        this.map.clear();
        next();
    }

    @Override // com.mob.tools.gui.PullToRequestAdatper
    public void onReversed() {
        this.llHeader.reverse();
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        getListView().setOnItemClickListener(onItemClickListener);
    }

    public void setPlatform(Platform platform) {
        this.platform = platform;
        platform.setPlatformActionListener(this);
    }

    public void setRatio(float f10) {
        this.ratio = f10;
        ListView listView = getListView();
        if (f10 < 1.0f) {
            f10 = 1.0f;
        }
        listView.setDividerHeight((int) f10);
    }

    @Override // com.mob.tools.gui.PullToRequestBaseListAdapter
    public Following getItem(int i10) {
        return this.follows.get(i10);
    }
}
