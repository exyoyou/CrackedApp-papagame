package cn.sharesdk.framework;

import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CustomPlatform extends Platform {
    @Override // cn.sharesdk.framework.Platform
    protected abstract boolean checkAuthorize(int i10, Object obj);

    @Override // cn.sharesdk.framework.Platform
    protected void doAuthorize(String[] strArr) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doCustomerProtocol(String str, String str2, int i10, HashMap<String, Object> map, HashMap<String, String> map2) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected void doShare(Platform.ShareParams shareParams) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i10, HashMap<String, Object> map) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected final cn.sharesdk.framework.a.b.j.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> map) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void follow(String str) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getBilaterals(int i10, int i11, String str) {
        return null;
    }

    protected int getCustomPlatformId() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowers(int i10, int i11, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowings(int i10, int i11, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected void getFriendList(int i10, int i11, String str) {
    }

    @Override // cn.sharesdk.framework.Platform
    public abstract String getName();

    @Override // cn.sharesdk.framework.Platform
    protected final int getPlatformId() {
        return -Math.abs(getCustomPlatformId());
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 0;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return false;
    }

    @Override // cn.sharesdk.framework.Platform
    protected final void initDevInfo(String str) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected final void setNetworkDevinfo() {
    }

    @Override // cn.sharesdk.framework.Platform
    protected void timeline(int i10, int i11, String str) {
    }

    @Override // cn.sharesdk.framework.Platform
    protected void userInfor(String str) {
    }
}
