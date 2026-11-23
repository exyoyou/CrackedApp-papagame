.class public final synthetic Lio/netty/channel/socket/nio/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/channels/NetworkChannel;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
