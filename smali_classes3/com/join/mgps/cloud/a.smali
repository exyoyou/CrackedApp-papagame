.class public final synthetic Lcom/join/mgps/cloud/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/SendListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getSchedulerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;
    .locals 1

    .line 1
    invoke-static {p0}, Lw2/b;->a(Lcom/cloudplay/messagesdk/listener/SendListener;)Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    move-result-object v0

    return-object v0
.end method

.method public final onResult(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/join/mgps/cloud/c;->b(ZLjava/lang/String;)V

    return-void
.end method
