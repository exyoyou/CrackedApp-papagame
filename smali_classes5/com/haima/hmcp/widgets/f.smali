.class public final synthetic Lcom/haima/hmcp/widgets/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field public final synthetic c:Lcom/haima/hmcp/beans/CloudFile;

.field public final synthetic d:Lcom/haima/hmcp/listeners/CloudOperationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/f;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/f;->c:Lcom/haima/hmcp/beans/CloudFile;

    iput-object p3, p0, Lcom/haima/hmcp/widgets/f;->d:Lcom/haima/hmcp/listeners/CloudOperationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/f;->b:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/f;->c:Lcom/haima/hmcp/beans/CloudFile;

    iget-object v2, p0, Lcom/haima/hmcp/widgets/f;->d:Lcom/haima/hmcp/listeners/CloudOperationListener;

    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->l(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V

    return-void
.end method
