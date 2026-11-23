.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/virtual/views/HmVirtualTextureView$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->addVirtualDevice()V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "editKeyboardConfigNotify editStatus="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "  keyboardConfigJson="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "AbsIjkVideoView"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_RESTORE:Lcom/haima/hmcp/enums/EditStatus;

    .line 37
    .line 38
    if-ne p2, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIsUserConfig:Z

    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/haima/hmcp/enums/EditStatus;->EDIT_STATE_MODIFIED_SAVE:Lcom/haima/hmcp/enums/EditStatus;

    .line 46
    .line 47
    if-ne p2, v0, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    iput-boolean v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIsUserConfig:Z

    .line 53
    .line 54
    :cond_1
    if-ne p2, v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 85
    .line 86
    invoke-static {v0, v1, p1, p2}, Lcom/haima/hmcp/business/SendSceneState;->editKeyboardConfigNotify(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onReceiveKeyboardBtnValue(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "AbsIjkVideoView"

    .line 10
    .line 11
    const-string p2, "not allow handle vir layout event"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "onReceiveKeyboardBtnValue = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ";"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p3, "get keyCode inputOp error :"

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    const/16 v0, 0x203

    .line 75
    .line 76
    if-ne p1, v0, :cond_4

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    const/16 p1, 0xb

    .line 81
    .line 82
    if-ne p3, p1, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-static {p2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getMouseWheelData(I)[B

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 96
    .line 97
    const/4 p2, -0x1

    .line 98
    invoke-static {p2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getMouseWheelData(I)[B

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    invoke-static {p2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getMouseWheelData(I)[B

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    if-nez p2, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyCodeDown(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyCodeUp(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Z

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public onReceiveLTRTValue(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "AbsIjkVideoView"

    .line 10
    .line 11
    const-string p2, "not allow handle vir layout event"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/16 v0, 0xff

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/16 p1, 0xff

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, " onReceiveLTRTValue = "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ";"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mMappingJoyBean:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-boolean v3, v2, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    const/16 v3, 0xff

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v3, 0x0

    .line 70
    :goto_1
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget-boolean v2, v2, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    :goto_2
    const-string v1, "LT"

    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, -0x1

    .line 85
    const-string v4, ""

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    const-string v1, "L2"

    .line 90
    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 99
    .line 100
    or-int/2addr v0, p1

    .line 101
    invoke-static {v0, v4, v2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getGamePadRTData(ILjava/lang/String;I)[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 109
    .line 110
    iput p1, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mJoyStickR2Value:I

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 114
    .line 115
    or-int v0, p1, v3

    .line 116
    .line 117
    invoke-static {v0, v4, v2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getGamePadLTData(ILjava/lang/String;I)[B

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 125
    .line 126
    iput p1, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mJoyStickL2Value:I

    .line 127
    .line 128
    :goto_4
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public onReceiveMouseValue(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "AbsIjkVideoView"

    .line 10
    .line 11
    const-string p2, "not allow handle vir layout event"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "onReceiveMouseValue :x="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ";y="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ";state="

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ";inputOp="

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    if-eq p1, v0, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 75
    .line 76
    sget-object p2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 77
    .line 78
    invoke-virtual {p1, p4, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 85
    .line 86
    invoke-virtual {p1, p2, p3}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseFromVirMouse(II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 93
    .line 94
    sget-object p2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 95
    .line 96
    invoke-virtual {p1, p4, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 97
    .line 98
    .line 99
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public onReceiveStickBtnValue(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "AbsIjkVideoView"

    .line 10
    .line 11
    const-string v0, "not allow handle vir layout event"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, " stickBtnValue = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mMappingJoyBean:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    move v1, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/JoyStickBean;->getBtnValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    or-int/2addr v1, p1

    .line 52
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "finalValue = "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    const/4 v3, -0x1

    .line 77
    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getGamePadData(ILjava/lang/String;I)[B

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    iput p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mJoyStickValue:I

    .line 87
    .line 88
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onReceiveStickRockerValue(FFI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "AbsIjkVideoView"

    .line 10
    .line 11
    const-string p2, "not allow handle vir layout event"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const v0, 0x46fffe00    # 32767.0f

    .line 18
    .line 19
    .line 20
    mul-float v1, p1, v0

    .line 21
    .line 22
    float-to-int v1, v1

    .line 23
    mul-float v0, v0, p2

    .line 24
    .line 25
    float-to-int v0, v0

    .line 26
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, " send stickRockerValue = "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, "=="

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, "; offset ="

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ";"

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x4

    .line 73
    const/4 p2, -0x1

    .line 74
    const-string v2, ""

    .line 75
    .line 76
    if-ne p3, p1, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 79
    .line 80
    new-instance p3, Landroid/graphics/Point;

    .line 81
    .line 82
    invoke-direct {p3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-static {p3, v2, p2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getGamePadStickData(Landroid/graphics/Point;Ljava/lang/String;I)[B

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 p1, 0x5

    .line 94
    if-ne p3, p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 97
    .line 98
    new-instance p3, Landroid/graphics/Point;

    .line 99
    .line 100
    invoke-direct {p3, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-static {p3, v2, p2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getGamepadThumbRData(Landroid/graphics/Point;Ljava/lang/String;I)[B

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public useSpecificSensitivity(ZF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 4
    .line 5
    const-string v2, "AbsIjkVideoView"

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->appSettingsState:Lcom/haima/hmcp/beans/AppSettingsState;

    .line 10
    .line 11
    const-string v3, "   "

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/haima/hmcp/beans/AppSettingsState;->functionSensitivitySetByApp:Ljava/lang/Float;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "useSpecificSensitivity from AppSet "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->setSpecificSensitivity(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->setSpecificSensitivity(F)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "useSpecificSensitivity from SDKinner "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v2, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 87
    .line 88
    iget-object p2, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->useSpecificSensitivity(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const-string p2, "useSpecificSensitivity failed "

    .line 95
    .line 96
    invoke-static {v2, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$43;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 100
    .line 101
    iget-object p2, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mDefaultOperateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 102
    .line 103
    sget-object v0, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_STICK_XBOX:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 104
    .line 105
    const/high16 v1, -0x80000000

    .line 106
    .line 107
    if-ne p2, v0, :cond_2

    .line 108
    .line 109
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getXboxLayout()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setXboxModeIsChecked(Z)V

    .line 122
    .line 123
    .line 124
    const/4 v0, -0x2

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    sget-object v0, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_KEYBOARD:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 127
    .line 128
    if-ne p2, v0, :cond_3

    .line 129
    .line 130
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getKeyboardLayout()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setKeyboardModeIsChecked(Z)V

    .line 143
    .line 144
    .line 145
    const/4 v0, -0x1

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    const/4 p2, 0x0

    .line 148
    const/high16 v0, -0x80000000

    .line 149
    .line 150
    :goto_2
    if-eqz p2, :cond_5

    .line 151
    .line 152
    if-eq v0, v1, :cond_5

    .line 153
    .line 154
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-ne v3, v0, :cond_4

    .line 175
    .line 176
    iput-boolean p1, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 177
    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v0, "Updated sensitivityFnBtnChecked to "

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " for keyType "

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    return-void
.end method
