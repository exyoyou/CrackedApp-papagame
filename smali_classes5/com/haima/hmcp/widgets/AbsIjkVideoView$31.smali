.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnGetSwitchStreamTypeResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->switchStreamType(Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

.field final synthetic val$streamType:Lcom/haima/hmcp/enums/StreamType;

.field final synthetic val$switchCode:I


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$switchCode:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;Lcom/haima/hmcp/beans/SwitchStreamTypeData;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->lambda$getSwitchStreamTypeResult$0(Lcom/haima/hmcp/beans/SwitchStreamTypeData;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V

    return-void
.end method

.method private synthetic lambda$getSwitchStreamTypeResult$0(Lcom/haima/hmcp/beans/SwitchStreamTypeData;Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->downloadTransferData:Lcom/haima/hmcp/cloud/video/bean/DownloadTransferData;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnStreamTypeChangeListener:Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;->onChange(Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSwitchStreamTypeResult(Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->apkType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/Utils;->apkTypeString2Int(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnStreamTypeChangeListener:Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/haima/hmcp/beans/SwitchStreamTypeData;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 25
    .line 26
    iput v0, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 27
    .line 28
    iget-object v0, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 29
    .line 30
    iput-object v0, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolution:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->resolutionId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 39
    .line 40
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->gamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 41
    .line 42
    iget v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$switchCode:I

    .line 43
    .line 44
    iput v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->switchCode:I

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getExtParam()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->extParam:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mClientImeType:Lcom/haima/hmcp/beans/ClientImeType;

    .line 55
    .line 56
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->clientImeType:Lcom/haima/hmcp/beans/ClientImeType;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->val$onSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 59
    .line 60
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mOnSwitchStreamTypeListener:Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    iput-boolean v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isChangeStreamType:Z

    .line 64
    .line 65
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->enableHighBitrate:Ljava/lang/Boolean;

    .line 66
    .line 67
    iput-object v2, v1, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->enableHighBitrate:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mDownloadTaskProxy:Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;

    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    new-instance v0, Lcom/haima/hmcp/widgets/z;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/widgets/z;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/cloud/video/DownloadTaskProxy;->getTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnStreamTypeChangeListener:Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;

    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;->onChange(Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isChangeStreamType:Z

    .line 91
    .line 92
    :cond_1
    iget-object p1, p1, Lcom/haima/hmcp/beans/GetSwitchStreamTypeResult;->addressInfo:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$31;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackSdkDisplayInfo(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method
