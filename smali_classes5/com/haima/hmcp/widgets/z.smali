.class public final synthetic Lcom/haima/hmcp/widgets/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;

.field public final synthetic b:Lcom/haima/hmcp/beans/SwitchStreamTypeData;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/z;->a:Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;

    iput-object p2, p0, Lcom/haima/hmcp/widgets/z;->b:Lcom/haima/hmcp/beans/SwitchStreamTypeData;

    return-void
.end method


# virtual methods
.method public final onData(Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/z;->a:Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/z;->b:Lcom/haima/hmcp/beans/SwitchStreamTypeData;

    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;Lcom/haima/hmcp/beans/SwitchStreamTypeData;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    return-void
.end method
