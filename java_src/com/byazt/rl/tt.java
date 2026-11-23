package com.byazt.rl;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 117, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f19470c = false;
    public int tt = -1;
    public String ve = null;
    public ValueSet uj = null;

    @com.byazt.zqa.c(c = {0, 1, 117, 194})
    private static final class c implements Result {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f19471c;
        public final int tt;
        public final ValueSet uj;
        public final String ve;

        @Override // com.bykv.vk.openvk.api.proto.Result
        public int code() {
            return this.tt;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public boolean isSuccess() {
            return this.f19471c;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public String message() {
            return this.ve;
        }

        @Override // com.bykv.vk.openvk.api.proto.Result
        public ValueSet values() {
            return this.uj;
        }

        private c(boolean z10, int i10, String str, ValueSet valueSet) {
            this.f19471c = z10;
            this.tt = i10;
            this.ve = str;
            this.uj = valueSet;
        }
    }

    private tt() {
    }

    public static final tt c() {
        return new tt();
    }

    public Result tt() {
        boolean z10 = this.f19470c;
        int i10 = this.tt;
        String str = this.ve;
        ValueSet valueSetTt = this.uj;
        if (valueSetTt == null) {
            valueSetTt = ve.c().tt();
        }
        return new c(z10, i10, str, valueSetTt);
    }

    public tt c(boolean z10) {
        this.f19470c = z10;
        return this;
    }

    public tt c(int i10) {
        this.tt = i10;
        return this;
    }

    public tt c(String str) {
        this.ve = str;
        return this;
    }

    public tt c(ValueSet valueSet) {
        this.uj = valueSet;
        return this;
    }
}
