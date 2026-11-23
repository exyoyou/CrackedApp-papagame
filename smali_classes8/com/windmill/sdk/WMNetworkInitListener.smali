.class public interface abstract Lcom/windmill/sdk/WMNetworkInitListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onNetworkInitBefore(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channel_id",
            "initInstance"
        }
    .end annotation
.end method

.method public abstract onNetworkInitFailed(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel_id",
            "error_code",
            "error_msg"
        }
    .end annotation
.end method

.method public abstract onNetworkInitSuccess(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation
.end method
