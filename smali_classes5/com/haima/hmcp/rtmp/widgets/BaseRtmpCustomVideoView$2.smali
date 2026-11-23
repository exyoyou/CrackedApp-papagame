.class Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetControlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->contronPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getControlResult(Lcom/haima/hmcp/beans/ContronResult;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$2;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/beans/ContronResult;->pkgName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$902(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
