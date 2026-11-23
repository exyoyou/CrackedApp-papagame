.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .line 1
    const-string v0, "AbsIjkVideoView"

    .line 2
    .line 3
    const-string v1, "\u76d1\u542c\u952e\u76d8\u72b6\u6001\u5931\u8d25"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onKeyBoardFlowMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "AbsIjkVideoView"

    .line 11
    .line 12
    const-string v1, "\u8fdb\u5165\u8f93\u5165\u6cd5\u8f6f\u952e\u76d8\u60ac\u6d6e\u6a21\u5f0f"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v3, v2, v4

    .line 31
    .line 32
    const-string v3, "IME:KBH:%f"

    .line 33
    .line 34
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardHeightPercent(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onKeyBoardHide()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "AbsIjkVideoView"

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    const-string v0, "===onKeyBoardHide===="

    .line 13
    .line 14
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyBoardDialog:Lcom/haima/hmcp/widgets/InputEditDialog;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyBoardDialog:Lcom/haima/hmcp/widgets/InputEditDialog;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/InputEditDialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v3

    .line 37
    :cond_1
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    const-string v1, "IME:StopIM"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    sget-object v1, Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;->CLOUD_PLAYER_KEYBOARD_STATUS_HIDE:Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientationOrigin:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 59
    .line 60
    if-eq v1, v0, :cond_3

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "\u9690\u85cf\u952e\u76d8\uff1a\u5207\u56de\u539f\u89c6\u9891\u65b9\u5411\uff1b"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientationOrigin:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "\u5f53\u524d\u65b9\u5411\uff1a"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmScreenMonitor:Lcom/haima/hmcp/business/display/HmScreenMonitor;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->isEnable()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 111
    .line 112
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 113
    .line 114
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;Lcom/haima/hmcp/listeners/IRenderViewBase;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientationOrigin:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 123
    .line 124
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;Lcom/haima/hmcp/listeners/IRenderViewBase;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->clearText()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->changeState(I)V

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    return v0
.end method

.method public onKeyBoardShowHeight(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 6
    .line 7
    const-string v3, "AbsIjkVideoView"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string p1, "==onKeyBoardShowHeight===="

    .line 13
    .line 14
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 33
    .line 34
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 49
    .line 50
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowHeight:I

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 55
    .line 56
    :cond_3
    iput v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowHeight:I

    .line 57
    .line 58
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowWidth:I

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 63
    .line 64
    :cond_4
    iput v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowWidth:I

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "<==\u5f00\u542f\u952e\u76d8\u72b6\u6001 \u9ad8\u5ea6: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ";screenHeight: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ";mShowHeight: "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 97
    .line 98
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowHeight:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ";screenWidth: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 109
    .line 110
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ";mShowWidth: "

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 121
    .line 122
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowWidth:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 135
    .line 136
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 137
    .line 138
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 139
    .line 140
    sub-int/2addr v1, v0

    .line 141
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-ne p1, v0, :cond_5

    .line 146
    .line 147
    const-string p1, "\u6a2a\u7ad6\u5c4f\u5207\u6362\uff0c\u5ffd\u7565\u952e\u76d8\u72b6\u6001\uff1b"

    .line 148
    .line 149
    invoke-static {v3, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v4

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 166
    .line 167
    const/4 v1, 0x2

    .line 168
    const/4 v2, 0x1

    .line 169
    if-ne v0, v1, :cond_6

    .line 170
    .line 171
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 172
    .line 173
    iget v3, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 174
    .line 175
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 176
    .line 177
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 182
    .line 183
    iget v5, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowHeight:I

    .line 184
    .line 185
    iget v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowWidth:I

    .line 186
    .line 187
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    if-ne v0, v2, :cond_7

    .line 193
    .line 194
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 195
    .line 196
    iget v3, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 197
    .line 198
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 199
    .line 200
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 205
    .line 206
    iget v5, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowHeight:I

    .line 207
    .line 208
    iget v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mShowWidth:I

    .line 209
    .line 210
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    goto :goto_0

    .line 215
    :cond_7
    const/4 v0, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    :goto_0
    sub-int/2addr v0, v3

    .line 218
    div-int/2addr v0, v1

    .line 219
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/HmIMEManager;->getInputOffset()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    const/high16 v5, 0x3f000000    # 0.5f

    .line 228
    .line 229
    if-eqz v3, :cond_8

    .line 230
    .line 231
    sub-int v0, p1, v0

    .line 232
    .line 233
    add-int/2addr v0, v1

    .line 234
    int-to-float v0, v0

    .line 235
    int-to-float v6, v3

    .line 236
    div-float/2addr v0, v6

    .line 237
    goto :goto_1

    .line 238
    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 239
    .line 240
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 241
    .line 242
    cmpl-float v6, v0, v6

    .line 243
    .line 244
    if-gtz v6, :cond_a

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    cmpg-float v6, v0, v6

    .line 248
    .line 249
    if-gez v6, :cond_9

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_9
    move v5, v0

    .line 253
    goto :goto_3

    .line 254
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v6, "heightScale error: inputShowOffset"

    .line 260
    .line 261
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ",surfaceHeight:"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, ",height:"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_3
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 291
    .line 292
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 293
    .line 294
    new-array v1, v2, [Ljava/lang/Object;

    .line 295
    .line 296
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    aput-object v3, v1, v4

    .line 301
    .line 302
    const-string v3, "IME:KBH:%f"

    .line 303
    .line 304
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    iput-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 309
    .line 310
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$22;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 311
    .line 312
    iget-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardHeightPercent(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return v2
.end method
