.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onMessage([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$35;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$35;->val$data:[B

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$35;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$35;->val$data:[B

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3100(Lcom/haima/hmcp/widgets/AbsIjkVideoView;[B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
