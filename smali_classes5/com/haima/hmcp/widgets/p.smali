.class public final synthetic Lcom/haima/hmcp/widgets/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field public final synthetic b:Lcom/haima/hmcp/listeners/OnRequestAliveListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/listeners/OnRequestAliveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/p;->a:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/p;->b:Lcom/haima/hmcp/listeners/OnRequestAliveListener;

    return-void
.end method


# virtual methods
.method public final onKeepAlive(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/p;->a:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/p;->b:Lcom/haima/hmcp/listeners/OnRequestAliveListener;

    invoke-static {v0, v1, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->h(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/listeners/OnRequestAliveListener;ZLjava/lang/String;)V

    return-void
.end method
