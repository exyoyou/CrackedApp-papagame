.class public final synthetic Lcom/sigmob/sdk/base/views/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$b;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/views/v;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/o0;->a:Lcom/sigmob/sdk/base/views/v;

    return-void
.end method


# virtual methods
.method public final onReady(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/o0;->a:Lcom/sigmob/sdk/base/views/v;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/base/views/v;->a(Lcom/sigmob/sdk/base/views/v;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method
