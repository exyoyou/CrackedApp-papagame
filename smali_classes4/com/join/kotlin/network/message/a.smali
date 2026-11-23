.class public final synthetic Lcom/join/kotlin/network/message/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/network/message/MessageClient;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/network/message/MessageClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/network/message/a;->b:Lcom/join/kotlin/network/message/MessageClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/a;->b:Lcom/join/kotlin/network/message/MessageClient;

    invoke-static {v0}, Lcom/join/kotlin/network/message/MessageClient;->c(Lcom/join/kotlin/network/message/MessageClient;)V

    return-void
.end method
