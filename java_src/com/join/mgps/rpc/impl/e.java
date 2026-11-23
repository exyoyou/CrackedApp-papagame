package com.join.mgps.rpc.impl;

import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentListForSelfBean;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentPraiseRequestBean;
import com.join.mgps.dto.CommentRequest;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentSelfRequestBean;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.GamedetialCommentRequest;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class e implements com.join.mgps.rpc.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f72414b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.e f72415a;

    public e(b7.e service) {
        this.f72415a = service;
    }

    public static e m() {
        if (f72414b == null) {
            f72414b = new e((b7.e) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72391v).create(b7.e.class));
        }
        return f72414b;
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentAllListBean> a(RequestCommentAllListArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.a(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentCreateBean> b(CommentCreateArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.b(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentPraiseBean> c(CommentPraiseRequestBean request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.c(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentPraiseBean> d(RequestCommentpraiseArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.d(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentPraiseBean> e(RequestCommentpraiseArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.e(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentCreateBean> f(CommentModifyArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.f(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentTokenBean> g(CommentRequest request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.g(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentDetailBean> h(RequestCommentDetailArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.h(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentAllListBean> i(GamedetialCommentRequest request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.i(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentPraiseBean> j(CommentPraiseRequestBean request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.j(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentListForSelfBean> k(CommentSelfRequestBean request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.k(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.f
    public CommentResponse<CommentPraiseBean> l(DeleteCommentArgs request) {
        try {
            b7.e eVar = this.f72415a;
            if (eVar != null) {
                return eVar.l(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
