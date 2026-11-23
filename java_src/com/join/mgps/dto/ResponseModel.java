package com.join.mgps.dto;

import androidx.annotation.NonNull;
import com.join.kotlin.base.net.BaseResponse;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class ResponseModel<E> extends BaseResponse<E> {
    private int code;
    private E data;
    private int error;
    private int flag;
    private String message;
    private String msg;
    private int page;
    private String version;

    public ResponseModel() {
    }

    public int getCode() {
        return this.code;
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public int getFlag() {
        return this.flag;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getPage() {
        return this.page;
    }

    @Override // com.join.kotlin.base.net.BaseResponse
    public int getResponseCode() {
        return this.code;
    }

    @Override // com.join.kotlin.base.net.BaseResponse
    public E getResponseData() {
        return this.data;
    }

    @Override // com.join.kotlin.base.net.BaseResponse
    @NonNull
    public String getResponseMsg() {
        return t2.h(this.msg) ? this.message : this.msg;
    }

    public String getVersion() {
        return this.version;
    }

    @Override // com.join.kotlin.base.net.BaseResponse
    public boolean isSuccess() {
        return this.code == 200;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(E data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public ResponseModel(int code, String message) {
        this.code = code;
        this.flag = code;
        this.message = message;
        this.msg = message;
    }

    public ResponseModel(int code, int error, String message) {
        this.code = code;
        this.flag = code;
        this.error = error;
        this.message = message;
        this.msg = message;
    }
}
