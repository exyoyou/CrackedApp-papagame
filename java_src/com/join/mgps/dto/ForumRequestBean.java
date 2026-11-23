package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.springframework.core.io.FileSystemResource;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class ForumRequestBean {

    public static class ForumCommentDeleteRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public ForumCommentDeleteRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumCommentDeleteRequestBean(int uid, String token, int pid, String device_id) {
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.device_id = device_id;
        }
    }

    public static class ForumCommentReplyDeleteRequestBean {
        private String device_id;
        private int rid;
        private String token;
        private int uid;

        public ForumCommentReplyDeleteRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumCommentReplyDeleteRequestBean(int uid, String token, int rid, String device_id) {
            this.uid = uid;
            this.token = token;
            this.rid = rid;
            this.device_id = device_id;
        }
    }

    public static class ForumCommentReplyRequestBean {
        private String device_id;
        private String message;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class ForumFollowRequestBean {
        private String device_id;
        private int fid;
        private String token;
        private int uid;

        public ForumFollowRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public int getFid() {
            return this.fid;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("fid", this.fid + "");
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumFollowRequestBean(int fid, int uid, String token, String device_id) {
            this.fid = fid;
            this.uid = uid;
            this.token = token;
            this.device_id = device_id;
        }
    }

    public static class ForumPostsCommentRequestBean {
        private String device_id;
        private String img_1;
        private String img_2;
        private String img_3;
        private String img_4;
        private String img_5;
        private String img_6;
        private String img_7;
        private String img_8;
        private String img_9;
        private String message;
        private int pid;
        private String token;
        private int uid;

        public ForumPostsCommentRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public List<String> getImages() {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 < 9) {
                i10++;
                try {
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField("img_" + i10);
                    declaredField.setAccessible(true);
                    if (declaredField.get(this) != null) {
                        arrayList.add(declaredField.get(this).toString());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return arrayList;
        }

        public String getImg_1() {
            return this.img_1;
        }

        public String getImg_2() {
            return this.img_2;
        }

        public String getImg_3() {
            return this.img_3;
        }

        public String getImg_4() {
            return this.img_4;
        }

        public String getImg_5() {
            return this.img_5;
        }

        public String getImg_6() {
            return this.img_6;
        }

        public String getImg_7() {
            return this.img_7;
        }

        public String getImg_8() {
            return this.img_8;
        }

        public String getImg_9() {
            return this.img_9;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, Object> getParams1() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("device_id", this.device_id);
            for (int i10 = 1; i10 <= 9; i10++) {
                try {
                    String str = "img_" + i10;
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    String string = declaredField.get(this) != null ? declaredField.get(this).toString() : "";
                    if (t2.h(string)) {
                        linkedMultiValueMap.add(str, "");
                    } else {
                        linkedMultiValueMap.add(str, new FileSystemResource(string));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setImages(List<String> images) {
            int i10 = 0;
            while (i10 < images.size()) {
                try {
                    int i11 = i10 + 1;
                    String str = images.get(i10);
                    Field declaredField = ForumPostsCommentRequestBean.class.getDeclaredField("img_" + i11);
                    declaredField.setAccessible(true);
                    if (t2.h(str)) {
                        declaredField.set(this, "");
                    } else {
                        declaredField.set(this, str);
                    }
                    i10 = i11;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }

        public void setImg_1(String img_1) {
            this.img_1 = img_1;
        }

        public void setImg_2(String img_2) {
            this.img_2 = img_2;
        }

        public void setImg_3(String img_3) {
            this.img_3 = img_3;
        }

        public void setImg_4(String img_4) {
            this.img_4 = img_4;
        }

        public void setImg_5(String img_5) {
            this.img_5 = img_5;
        }

        public void setImg_6(String img_6) {
            this.img_6 = img_6;
        }

        public void setImg_7(String img_7) {
            this.img_7 = img_7;
        }

        public void setImg_8(String img_8) {
            this.img_8 = img_8;
        }

        public void setImg_9(String img_9) {
            this.img_9 = img_9;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumPostsCommentRequestBean(int uid, String token, int pid, String message, String device_id, String img_1, String img_2, String img_3, String img_4, String img_5, String img_6, String img_7, String img_8, String img_9) {
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.message = message;
            this.device_id = device_id;
            this.img_1 = img_1;
            this.img_2 = img_2;
            this.img_3 = img_3;
            this.img_4 = img_4;
            this.img_5 = img_5;
            this.img_6 = img_6;
            this.img_7 = img_7;
            this.img_8 = img_8;
            this.img_9 = img_9;
        }
    }

    public static class ForumPostsDeleteRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class ForumPostsHelpSolveRequestBean {
        private String device_id;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public ForumPostsHelpSolveRequestBean() {
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add("rid", this.rid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumPostsHelpSolveRequestBean(int uid, String token, int pid, String device_id, int rid) {
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.device_id = device_id;
            this.rid = rid;
        }
    }

    public static class ForumPostsPraiseRequestBean {
        private String device_id;
        private int pid;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class ForumPostsReportRequestBean {
        private int cid;
        private String device_id;
        private int pid;
        private int rid;
        private String token;
        private int uid;

        public ForumPostsReportRequestBean() {
        }

        public int getCid() {
            return this.cid;
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add("cid", this.cid + "");
            linkedMultiValueMap.add("rid", this.rid + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public int getRid() {
            return this.rid;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setCid(int cid) {
            this.cid = cid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumPostsReportRequestBean(int uid, String token, int pid, String device_id) {
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.device_id = device_id;
        }

        public ForumPostsReportRequestBean(int uid, String token, int pid, int cid, int rid, String device_id) {
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.cid = cid;
            this.rid = rid;
            this.device_id = device_id;
        }
    }

    public static class ForumPostsSubmitRequestBean implements Serializable {
        private String device_id;
        private int fid;
        private int help;
        private int help_money;
        private String img_1;
        private String img_2;
        private String img_3;
        private String img_4;
        private String img_5;
        private String img_6;
        private String img_7;
        private String img_8;
        private String img_9;
        private String message;
        private int rsid;
        private String subject;
        private String token;
        private int uid;

        public String getDevice_id() {
            return this.device_id;
        }

        public int getFid() {
            return this.fid;
        }

        public int getHelp() {
            return this.help;
        }

        public int getHelp_money() {
            return this.help_money;
        }

        public List<String> getImages() {
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 < 9) {
                i10++;
                try {
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField("img_" + i10);
                    declaredField.setAccessible(true);
                    if (declaredField.get(this) != null) {
                        arrayList.add(declaredField.get(this).toString());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return arrayList;
        }

        public String getImg_1() {
            return this.img_1;
        }

        public String getImg_2() {
            return this.img_2;
        }

        public String getImg_3() {
            return this.img_3;
        }

        public String getImg_4() {
            return this.img_4;
        }

        public String getImg_5() {
            return this.img_5;
        }

        public String getImg_6() {
            return this.img_6;
        }

        public String getImg_7() {
            return this.img_7;
        }

        public String getImg_8() {
            return this.img_8;
        }

        public String getImg_9() {
            return this.img_9;
        }

        public String getMessage() {
            return this.message;
        }

        public LinkedMultiValueMap<String, Object> getParams() {
            LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("fid", this.fid + "");
            linkedMultiValueMap.add("rsid", this.rsid + "");
            linkedMultiValueMap.add("subject", this.subject);
            linkedMultiValueMap.add("message", this.message);
            linkedMultiValueMap.add("help", this.help + "");
            linkedMultiValueMap.add("help_money", this.help_money + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            for (int i10 = 1; i10 <= 9; i10++) {
                try {
                    String str = "img_" + i10;
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    String string = declaredField.get(this) != null ? declaredField.get(this).toString() : "";
                    if (t2.h(string)) {
                        linkedMultiValueMap.add(str, "");
                    } else {
                        linkedMultiValueMap.add(str, new FileSystemResource(string));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return linkedMultiValueMap;
        }

        public int getRsid() {
            return this.rsid;
        }

        public String getSubject() {
            return this.subject;
        }

        public String getToken() {
            return this.token;
        }

        public int getUid() {
            return this.uid;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setHelp(int help) {
            this.help = help;
        }

        public void setHelp_money(int help_money) {
            this.help_money = help_money;
        }

        public void setImages(List<String> images) {
            int i10 = 0;
            while (i10 < images.size()) {
                try {
                    int i11 = i10 + 1;
                    String str = images.get(i10);
                    Field declaredField = ForumPostsSubmitRequestBean.class.getDeclaredField("img_" + i11);
                    declaredField.setAccessible(true);
                    if (t2.h(str)) {
                        declaredField.set(this, "");
                    } else {
                        declaredField.set(this, str);
                    }
                    i10 = i11;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }

        public void setImg_1(String img_1) {
            this.img_1 = img_1;
        }

        public void setImg_2(String img_2) {
            this.img_2 = img_2;
        }

        public void setImg_3(String img_3) {
            this.img_3 = img_3;
        }

        public void setImg_4(String img_4) {
            this.img_4 = img_4;
        }

        public void setImg_5(String img_5) {
            this.img_5 = img_5;
        }

        public void setImg_6(String img_6) {
            this.img_6 = img_6;
        }

        public void setImg_7(String img_7) {
            this.img_7 = img_7;
        }

        public void setImg_8(String img_8) {
            this.img_8 = img_8;
        }

        public void setImg_9(String img_9) {
            this.img_9 = img_9;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setRsid(int rsid) {
            this.rsid = rsid;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class PostGagRequestBean {
        private int gag_time;
        private String gag_uid;
        private String remarks;
        private String token;
        private String uid;

        public int getGag_time() {
            return this.gag_time;
        }

        public String getGag_uid() {
            return this.gag_uid;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add("gag_uid", this.gag_uid + "");
            linkedMultiValueMap.add("gag_time", this.gag_time + "");
            linkedMultiValueMap.add("remarks", this.remarks);
            return linkedMultiValueMap;
        }

        public String getRemarks() {
            return this.remarks;
        }

        public String getToken() {
            return this.token;
        }

        public String getUid() {
            return this.uid;
        }

        public void setGag_time(int gag_time) {
            this.gag_time = gag_time;
        }

        public void setGag_uid(String gag_uid) {
            this.gag_uid = gag_uid;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public static class ForumPostsFavoritesRequestBean {
        private String app_ver;
        private String device_id;
        private int pid;
        private String resource_id;
        private String token;
        private int type;
        private int uid;

        public ForumPostsFavoritesRequestBean() {
            this.device_id = "";
            this.app_ver = "";
            this.resource_id = "";
        }

        public String getApp_ver() {
            return this.app_ver;
        }

        public String getDevice_id() {
            return this.device_id;
        }

        public LinkedMultiValueMap<String, String> getParams() {
            LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
            linkedMultiValueMap.add("uid", this.uid + "");
            linkedMultiValueMap.add(Constants.TOKEN, this.token);
            linkedMultiValueMap.add(ForumPostsTagSelectActivity_.PID_EXTRA, this.pid + "");
            linkedMultiValueMap.add("device_id", this.device_id);
            linkedMultiValueMap.add("app_ver", this.app_ver);
            linkedMultiValueMap.add("resource_id", this.resource_id);
            linkedMultiValueMap.add("type", this.type + "");
            return linkedMultiValueMap;
        }

        public int getPid() {
            return this.pid;
        }

        public String getResource_id() {
            return this.resource_id;
        }

        public String getToken() {
            return this.token;
        }

        public int getType() {
            return this.type;
        }

        public int getUid() {
            return this.uid;
        }

        public void setApp_ver(String app_ver) {
            this.app_ver = app_ver;
        }

        public void setDevice_id(String device_id) {
            this.device_id = device_id;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setResource_id(String resource_id) {
            this.resource_id = resource_id;
        }

        public void setToken(String token) {
            this.token = token;
        }

        public void setType(int type) {
            this.type = type;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public ForumPostsFavoritesRequestBean(int uid, String token, int pid, String device_id) {
            this.app_ver = "";
            this.resource_id = "";
            this.uid = uid;
            this.token = token;
            this.pid = pid;
            this.device_id = device_id;
        }
    }
}
