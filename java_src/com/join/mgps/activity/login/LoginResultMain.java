package com.join.mgps.activity.login;

/* JADX INFO: loaded from: classes9.dex */
public class LoginResultMain<E> {
    private E data;
    private int error;
    private String msg;

    public static class DataBean {
        private boolean is_new_members;

        public boolean isIs_new_members() {
            return this.is_new_members;
        }

        public void setIs_new_members(boolean is_new_members) {
            this.is_new_members = is_new_members;
        }
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setData(E data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
