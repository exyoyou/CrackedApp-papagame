.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clearKeyEvent()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/MappingInputTypeModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->getmCurrentInputMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/haima/hmcp/model/EventMappingModel;->hasMappingEvent()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/haima/hmcp/model/EventMappingModel;->hasKeyboardMappingEvent()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "gamePadABS"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-static {v1}, Lcom/haima/hmcp/utils/MotionEventUtil;->getGamePadHatXEventContent(F)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/haima/hmcp/utils/MotionEventUtil;->getGamePadHatYEventContent(F)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    if-ne v0, v1, :cond_4

    .line 113
    .line 114
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->hasMappingEvent()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->hasKeyboardMappingEvent()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventModel;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventModel;->clearKeyDown()V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/haima/hmcp/model/ArmMouseModel;->clearFPoint()V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method public hasBattleMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/TvBattleModel;->getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/model/TvBattleModel;->getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isDpad2JoypadInBattle()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public hasCurrentButtonMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getCurrentButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public hasInputOpMapping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/InputOpModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/InputOpModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/InputOpModel;->hasMapping()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public hasKeyboardMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public hasMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    return v1
.end method

.method public isAllowSet()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGameStart:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/EventModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventModel;->isMorePointIsRun()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public isBattle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/model/TvBattleModel;->isBattle()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public showMouse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->resetDefaultPoint()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->showMouseEvent()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$10;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/haima/hmcp/model/ArmMouseModel;->hideMouseEvent()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method
