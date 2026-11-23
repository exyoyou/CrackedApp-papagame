.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->onSurfaceDestroyed(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12$1;->this$1:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12$1;->this$1:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$2600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
