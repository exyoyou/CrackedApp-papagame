.class final Lio/netty/channel/unix/Errors$NativeConnectException;
.super Ljava/net/ConnectException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/unix/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeConnectException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4cc6c79d8a1f12d1L


# instance fields
.field private final expectedErr:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "(..) failed: "

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lio/netty/channel/unix/Errors;->access$000()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    neg-int v1, p2

    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput p2, p0, Lio/netty/channel/unix/Errors$NativeConnectException;->expectedErr:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method expectedErr()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/unix/Errors$NativeConnectException;->expectedErr:I

    .line 2
    .line 3
    return v0
.end method
