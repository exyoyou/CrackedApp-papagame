package com.join.mgps.rpc.impl;

import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.RequestGameCfgInfoArgs;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingCommonRecordRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPropRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse;
import com.wufan.user.service.protobuf.MessageMobileRegisterRequest;
import com.wufan.user.service.protobuf.MessageNewUserBindMobileRequest;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.MessageSmsCodeRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.SetBirthdayResponse;
import com.wufan.user.service.protobuf.ThirdPartyLoginProto;
import com.wufan.user.service.protobuf.UserLoginRequestParameters;
import com.wufan.user.service.protobuf.UserRegStatusRequest;
import com.wufan.user.service.protobuf.UserRegStatusResponse;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class b implements com.join.mgps.rpc.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f72408b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.b f72409a;

    public b(b7.b service) {
        this.f72409a = service;
    }

    public static com.join.mgps.rpc.c C() {
        if (f72408b == null) {
            f72408b = new b((b7.b) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.G).create(b7.b.class));
        }
        return f72408b;
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult A(MessageUserInfoRequest.RequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.A(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingServerListResponse.MessageCloudGamingServerListResponseResult B(MessageCloudGamingServerListRequest.MessageCloudGamingServerListRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.B(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseModel<CloudGamingCfgInfo> a(RequestModel<RequestGameCfgInfoArgs> request) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.a(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCheckTokenResponse.MessageCheckTokenResponseResult b(MessageCheckTokenRequest.MessageCheckTokenRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.b(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse c(MessageCloudGamingPropRequest.MessageCloudGamingPropUseRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.c(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult d(MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.d(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCheckTokenResponse.MessageCheckTokenResponseResult e(MessageCheckTokenRequest.MessageCheckTokenRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.e(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult f(MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.f(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingArchivingCfgResponse.MessageCloudGamingArchivingCfgResponseResult g(MessageCloudGamingArchivingCfgRequest.MessageCloudGamingArchivingCfgRequestParameters request) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.g(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult h(MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.h(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult i(MessageNewUserBindMobileRequest.NewUserBindMobileRequestParameters parameters) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.i(parameters).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult j(ThirdPartyLoginProto.Request params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.j(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageResponseStatus.ResponseStatusResult k(MessageSmsCodeRequest.SmsCodeRequestParameters smsCodeRequest) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.k(smsCodeRequest).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult l(MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.l(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult m(MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.m(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult n(MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.n(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult o(MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.o(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult p(MessageMobileRegisterRequest.MobileRegisterRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.p(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult q(MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.q(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingFreeTimeResponse.MessageCloudGamingFreeTimeResponseResult r(MessageCloudGamingFreeTimeRequest.MessageCloudGamingFreeTimeRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.r(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public SetBirthdayResponse s(MessageUserInfoRequest.SetBirthdayRequest params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.s(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public UserRegStatusResponse.UserRegStatusResponseField t(UserRegStatusRequest.UserRegStatusRequestArgs request) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.t(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingVipStateResponse.MessageCloudGamingVipStateResponseResult u(MessageCloudGamingVipStateRequest.MessageCloudGamingVipStateRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.u(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSummaryResponseResult v(MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSummaryRequest params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.v(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult w(MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.w(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult x(MessageCloudGamingFreeTimeStateRequest.MessageCloudGamingFreeTimeStateRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.x(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult y(UserLoginRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.y(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.c
    public ResponseResult z(MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters params) {
        try {
            b7.b bVar = this.f72409a;
            if (bVar != null) {
                return bVar.z(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
