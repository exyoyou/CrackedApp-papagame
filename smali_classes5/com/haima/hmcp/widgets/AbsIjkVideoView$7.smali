.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/TvBattleModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->init(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasUserInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 4
    .line 5
    return v0
.end method

.method public onEvent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onInitData(Lcom/haima/hmcp/beans/JoinBattle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tv_battle->onInitData called, joinBattle = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "null"

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AbsIjkVideoView"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->orientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 32
    .line 33
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screen:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setOrientationInit(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 39
    .line 40
    iget v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->playTime:I

    .line 41
    .line 42
    int-to-long v1, v1

    .line 43
    iput-wide v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHPlayTime:J

    .line 44
    .line 45
    iget-object v1, p1, Lcom/haima/hmcp/beans/JoinBattle;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p1, Lcom/haima/hmcp/beans/JoinBattle;->appChannel:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppChannel:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/haima/hmcp/beans/JoinBattle;->cToken:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mToken:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method public onKeyboardInputState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/MappingInputTypeModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->getmCurrentKeyboardMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method

.method public onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRelease(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->release(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tv_battle->sendSceneChangedMessage called, sceneId = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "; extraInfo = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "AbsIjkVideoView"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public requestJoinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 2

    .line 1
    const-string v0, "AbsIjkVideoView"

    .line 2
    .line 3
    const-string v1, "tv_battle->requestJoinBattle called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setVideoViewListener()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initManager()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V

    .line 34
    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p1, Lcom/haima/hmcp/beans/InternalJoinBattle;->joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    .line 45
    .line 46
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/JoinBattle;->isIPV6:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 56
    .line 57
    invoke-virtual {v1, v0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattle(ZLcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$7;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/MappingInputTypeModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/MappingInputTypeModel;->setmCurrentInputMode(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
