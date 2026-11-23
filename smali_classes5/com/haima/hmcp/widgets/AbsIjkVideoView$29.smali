.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetControlResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->controlInternal(Lcom/haima/hmcp/beans/Control;Lcom/haima/hmcp/listeners/OnContronListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$29;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/haima/hmcp/beans/ContronResult;->gsmAddressInfo:Lcom/haima/hmcp/beans/GSMAddressInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$29;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/haima/hmcp/beans/GSMAddressInfo;->gsmUsbNatData:Lcom/haima/hmcp/beans/GSMUsbNatData;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/GSMUsbNatData;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$29;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/haima/hmcp/beans/ContronResult;->pkgName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 21
    .line 22
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 23
    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHasOperatePermission:Z

    .line 28
    .line 29
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
