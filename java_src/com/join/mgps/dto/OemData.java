package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class OemData {

    public static class GiftDetailData {
        private String content;
        private int count;
        private long end_time;
        private String gift_cdk;
        private String icon;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68081id;
        private Boolean is_used;
        private String money_num;
        private String my_gift_count;
        private String name;
        private long start_time;
        private int surplus;
        private String title;
        private String type;
        private String url;
        private String use_method;

        public String getContent() {
            return this.content;
        }

        public int getCount() {
            return this.count;
        }

        public long getEnd_time() {
            return this.end_time;
        }

        public String getGift_cdk() {
            return this.gift_cdk;
        }

        public String getIcon() {
            return this.icon;
        }

        public String getId() {
            return this.f68081id;
        }

        public Boolean getIs_used() {
            return this.is_used;
        }

        public String getMoney_num() {
            return this.money_num;
        }

        public String getMy_gift_count() {
            return this.my_gift_count;
        }

        public String getName() {
            return this.name;
        }

        public long getStart_time() {
            return this.start_time;
        }

        public int getSurplus() {
            return this.surplus;
        }

        public String getTitle() {
            return this.title;
        }

        public String getType() {
            return this.type;
        }

        public String getUrl() {
            return this.url;
        }

        public String getUse_method() {
            return this.use_method;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public void setCount(int count) {
            this.count = count;
        }

        public void setEnd_time(long end_time) {
            this.end_time = end_time;
        }

        public void setGift_cdk(String gift_cdk) {
            this.gift_cdk = gift_cdk;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }

        public void setId(String id2) {
            this.f68081id = id2;
        }

        public void setIs_used(Boolean is_used) {
            this.is_used = is_used;
        }

        public void setMoney_num(String money_num) {
            this.money_num = money_num;
        }

        public void setMy_gift_count(String my_gift_count) {
            this.my_gift_count = my_gift_count;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setStart_time(long start_time) {
            this.start_time = start_time;
        }

        public void setSurplus(int surplus) {
            this.surplus = surplus;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setType(String type) {
            this.type = type;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public void setUse_method(String use_method) {
            this.use_method = use_method;
        }
    }

    public static class GiftGetCdkData {
        private long end_time;
        private String gift_cdk;
        private long start_time;

        public long getEnd_time() {
            return this.end_time;
        }

        public String getGift_cdk() {
            return this.gift_cdk;
        }

        public long getStart_time() {
            return this.start_time;
        }

        public void setEnd_time(long end_time) {
            this.end_time = end_time;
        }

        public void setGift_cdk(String gift_cdk) {
            this.gift_cdk = gift_cdk;
        }

        public void setStart_time(long start_time) {
            this.start_time = start_time;
        }
    }
}
