package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class OemBean {

    public static class OemDetailBean {
        private String content;
        private int count;
        private long end_time;
        private String gift_cdk;
        private String icon;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68080id;
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
            return this.f68080id;
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

        public String getMy_oem() {
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
            this.f68080id = id2;
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

        public void setMy_oem(String my_oem) {
            this.my_gift_count = my_oem;
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

    public static class OemGameBean {
        private String game_icon;
        private String game_name;
        private String my_gift_count;
        private String new_add_oem_count;
        private String oem_count;

        public String getGame_icon() {
            return this.game_icon;
        }

        public String getGame_name() {
            return this.game_name;
        }

        public String getMyGiftCount() {
            return this.my_gift_count;
        }

        public String getNew_add_oem_count() {
            return this.new_add_oem_count;
        }

        public String getOem_count() {
            return this.oem_count;
        }

        public void setGame_icon(String game_icon) {
            this.game_icon = game_icon;
        }

        public void setGame_name(String game_name) {
            this.game_name = game_name;
        }

        public void setMyGiftCount(String myGiftCount) {
            this.my_gift_count = myGiftCount;
        }

        public void setNew_add_oem_count(String new_add_oem_count) {
            this.new_add_oem_count = new_add_oem_count;
        }

        public void setOem_count(String oem_count) {
            this.oem_count = oem_count;
        }
    }

    public static class OemOemBean {
        private String cdk_code;
        private String cdk_id;
        private boolean expire;
        private String oem_end_time;
        private String oem_icon;
        private String oem_id;
        private String oem_name;
        private String oem_title;
        private String oem_type;
        private boolean receive;
        private String surplus_count;

        public String getCdk_code() {
            return this.cdk_code;
        }

        public String getCdk_id() {
            return this.cdk_id;
        }

        public String getOemId() {
            return this.oem_id;
        }

        public String getOem_end_time() {
            return this.oem_end_time;
        }

        public String getOem_icon() {
            return this.oem_icon;
        }

        public String getOem_name() {
            return this.oem_name;
        }

        public String getOem_title() {
            return this.oem_title;
        }

        public String getOem_type() {
            return this.oem_type;
        }

        public String getSurplus_amount() {
            return this.surplus_count;
        }

        public boolean isExpire() {
            return this.expire;
        }

        public boolean isReceive() {
            return this.receive;
        }

        public void setCdk_code(String cdk_code) {
            this.cdk_code = cdk_code;
        }

        public void setCdk_id(String cdk_id) {
            this.cdk_id = cdk_id;
        }

        public void setExpire(boolean expire) {
            this.expire = expire;
        }

        public void setOemId(String oemId) {
            this.oem_id = oemId;
        }

        public void setOem_end_time(String oem_end_time) {
            this.oem_end_time = oem_end_time;
        }

        public void setOem_icon(String oem_icon) {
            this.oem_icon = oem_icon;
        }

        public void setOem_name(String oem_name) {
            this.oem_name = oem_name;
        }

        public void setOem_title(String oem_title) {
            this.oem_title = oem_title;
        }

        public void setOem_type(String oem_type) {
            this.oem_type = oem_type;
        }

        public void setReceive(boolean receive) {
            this.receive = receive;
        }

        public void setSurplus_amount(String surplus_amount) {
            this.surplus_count = surplus_amount;
        }
    }
}
