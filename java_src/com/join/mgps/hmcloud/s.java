package com.join.mgps.hmcloud;

import com.papa91.arc.ext.Log;
import com.wufan.user.service.protobuf.MessageProto;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final String f71721a = "HMCloudMessage:  ";

    @NotNull
    public final String a() {
        return this.f71721a;
    }

    public final void b(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        MessageProto.Response.StatusCode statusCode = response.getStatusCode();
        Intrinsics.checkNotNullExpressionValue(statusCode, "getStatusCode(...)");
        int typeValue = response.getTypeValue();
        if (typeValue == 1) {
            if (statusCode == MessageProto.Response.StatusCode.RESULT_SUCCESS) {
                System.out.println(response);
                return;
            }
            System.out.println(this.f71721a + response.getError());
            return;
        }
        if (typeValue == 7) {
            f(response);
            return;
        }
        if (typeValue == 16) {
            d(response);
            return;
        }
        if (typeValue != 18) {
            switch (typeValue) {
                case 9:
                    h(response);
                    break;
                case 10:
                    e(response);
                    break;
                case 11:
                    c(response);
                    break;
                case 13:
                    j(response);
                    break;
                case 14:
                    if (statusCode == MessageProto.Response.StatusCode.RESULT_SUCCESS) {
                        System.out.printf(this.f71721a + response, new Object[0]);
                    } else if (response.getLogicErrorCode() == MessageProto.Response.LogicErrorCode.SWITCHOVER_QUEUE_FAIL) {
                        System.out.println(this.f71721a + response.getError());
                    }
                    break;
            }
            return;
        }
        i(response);
    }

    public void c(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onQueueChanged:" + response.getError() + "  " + response);
    }

    public void d(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onExitQueue:" + response.getError() + "  " + response);
    }

    public void e(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onJoinQueueStateChanged:" + response.getError() + ' ' + response);
    }

    public void f(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onLogin:" + response.getError() + "  " + response);
    }

    public void g(boolean z10) {
        Log.e(this.f71721a, "onNetChanged:" + z10);
    }

    public void h(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onQueueNotificationStateChanged:" + response.getError() + "  " + response);
    }

    public void i(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onQueueStateChanged:" + response.getError() + "  " + response);
    }

    public void j(@NotNull MessageProto.Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Log.e(this.f71721a, "onSwitchQueueStateChanged:" + response.getError() + "  " + response);
    }

    public final void k() {
        org.greenrobot.eventbus.c.f().v(this);
    }

    public final void l() {
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMessageEvent(@NotNull com.join.mgps.event.s event) {
        Intrinsics.checkNotNullParameter(event, "event");
        b(event.d());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onMessageEvent(@NotNull com.join.mgps.event.t event) {
        Intrinsics.checkNotNullParameter(event, "event");
        g(event.f());
    }
}
