.class public final synthetic Lcom/haima/hmcp/widgets/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/haima/hmcp/beans/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;ZLcom/haima/hmcp/beans/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/k;->b:Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;

    iput-boolean p2, p0, Lcom/haima/hmcp/widgets/k;->c:Z

    iput-object p3, p0, Lcom/haima/hmcp/widgets/k;->d:Lcom/haima/hmcp/beans/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/k;->b:Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;

    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/k;->c:Z

    iget-object v2, p0, Lcom/haima/hmcp/widgets/k;->d:Lcom/haima/hmcp/beans/Message;

    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->b(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;ZLcom/haima/hmcp/beans/Message;)V

    return-void
.end method
