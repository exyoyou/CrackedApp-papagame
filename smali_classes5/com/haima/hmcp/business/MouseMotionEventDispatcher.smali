.class public Lcom/haima/hmcp/business/MouseMotionEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;,
        Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;
    }
.end annotation


# static fields
.field private static final EVENT_OFFLINE_MINIMUM_TIME_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MouseMotionEventDispatcher"


# instance fields
.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;",
            ">;"
        }
    .end annotation
.end field

.field private final genericMotionEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;",
            ">;"
        }
    .end annotation
.end field

.field private final touchMotionEventDownMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;",
            ">;"
        }
    .end annotation
.end field

.field private final touchMotionEventUpMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->genericMotionEventMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventDownMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventUpMap:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method private determineEventType(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "genericMotionEvent: "

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->action:I

    .line 28
    .line 29
    const/16 v2, 0xb

    .line 30
    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v2, 0xc

    .line 37
    .line 38
    if-ne p1, v2, :cond_1

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_0
    if-eqz p2, :cond_2

    .line 44
    .line 45
    sget-object v2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "touchDownEvent: "

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget p2, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->action:I

    .line 68
    .line 69
    if-nez p2, :cond_2

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    :cond_2
    if-eqz p3, :cond_3

    .line 73
    .line 74
    sget-object p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "touchUpEvent: "

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget p2, p3, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->action:I

    .line 97
    .line 98
    if-ne p2, v0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v0, p1

    .line 102
    :goto_1
    if-eqz v1, :cond_4

    .line 103
    .line 104
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;->DOWN:Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_4
    if-eqz v0, :cond_5

    .line 108
    .line 109
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;->UP:Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_5
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;->NONE:Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 113
    .line 114
    return-object p1
.end method

.method private getEventData(Landroid/view/MotionEvent;)Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->action:I

    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x17

    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/haima/hmcp/business/c;->a(Landroid/view/MotionEvent;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->actionButton:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->buttonState:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iput-wide v1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iput-wide v1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->downTime:J

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->deviceId:I

    .line 47
    .line 48
    return-object v0
.end method

.method private handleDownEvent(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-boolean v2, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-nez v2, :cond_2

    .line 15
    .line 16
    iput-boolean v1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iput-boolean v1, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 21
    .line 22
    :cond_1
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "handle-event down generic"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "generic don`t handle down event"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_3
    if-eqz p2, :cond_5

    .line 39
    .line 40
    iget-boolean p1, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string p2, "touch can`t handle down event"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :cond_4
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "handle-event down touch"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 60
    .line 61
    return v1

    .line 62
    :cond_5
    return v0
.end method

.method private handleMotionEvent(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->genericMotionEventMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventDownMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventUpMap:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 36
    .line 37
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->determineEventType(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget-object v2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;->NONE:Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 42
    .line 43
    if-ne p2, v2, :cond_0

    .line 44
    .line 45
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "is not click event and ignore"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    :cond_0
    sget-object v2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;->DOWN:Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventType;

    .line 55
    .line 56
    if-ne p2, v2, :cond_1

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->handleDownEvent(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1

    .line 63
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->handleUpEvent(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method private handleUpEvent(Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p2, "generic already handle up event"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "touch already handle up event"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iput-boolean v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 34
    .line 35
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "handle-event up generic"

    .line 38
    .line 39
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz p2, :cond_3

    .line 43
    .line 44
    iput-boolean v0, p2, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->handle:Z

    .line 45
    .line 46
    sget-object p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p2, "handle-event up touch"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->processEventQueue()V

    .line 54
    .line 55
    .line 56
    return v0
.end method

.method private processEventQueue()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    const/4 v4, 0x5

    .line 8
    if-gt v3, v4, :cond_4

    .line 9
    .line 10
    iget-object v4, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v4, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 26
    .line 27
    iget-wide v5, v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->timeStamp:J

    .line 28
    .line 29
    sub-long v5, v0, v5

    .line 30
    .line 31
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide/16 v7, 0x3e8

    .line 36
    .line 37
    cmp-long v9, v5, v7

    .line 38
    .line 39
    if-gez v9, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object v5, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget v5, v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->type:I

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-ne v5, v6, :cond_2

    .line 51
    .line 52
    iget-object v5, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->genericMotionEventMap:Ljava/util/HashMap;

    .line 53
    .line 54
    iget-wide v6, v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 55
    .line 56
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v6, 0x2

    .line 65
    if-ne v5, v6, :cond_3

    .line 66
    .line 67
    iget-object v5, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventDownMap:Ljava/util/HashMap;

    .line 68
    .line 69
    iget-wide v6, v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 70
    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v5, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventUpMap:Ljava/util/HashMap;

    .line 80
    .line 81
    iget-wide v6, v4, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 82
    .line 83
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public genericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onGenericMotionEvent called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->isMouse(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, "generic motion event is not mouse source"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v3, 0xb

    .line 26
    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    const/16 v3, 0xc

    .line 30
    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    const-string p1, "generic motion event action is not press or release"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "trash size: "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, "genericMotionEventMap size: "

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->genericMotionEventMap:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->getEventData(Landroid/view/MotionEvent;)Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v0, 0x1

    .line 96
    iput v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->type:I

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    iput-wide v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->timeStamp:J

    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->genericMotionEventMap:Ljava/util/HashMap;

    .line 105
    .line 106
    iget-wide v1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 107
    .line 108
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-wide v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 121
    .line 122
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->handleMotionEvent(J)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1
.end method

.method public isMouse(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x2002

    .line 6
    .line 7
    and-int/2addr p1, v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public touchMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onTouchMotionEvent called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->isMouse(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p1, "touch motion event is not mouse source"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    const-string p1, "touch motion event action is not down or up"

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "trash size: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "touchMotionEventDownMap size: "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventDownMap:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "touchMotionEventUpMap size: "

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventUpMap:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->getEventData(Landroid/view/MotionEvent;)Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iput-wide v2, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->timeStamp:J

    .line 123
    .line 124
    if-nez v1, :cond_2

    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    iput v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->type:I

    .line 128
    .line 129
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventDownMap:Ljava/util/HashMap;

    .line 130
    .line 131
    iget-wide v1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 132
    .line 133
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x3

    .line 142
    iput v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->type:I

    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->touchMotionEventUpMap:Ljava/util/HashMap;

    .line 145
    .line 146
    iget-wide v1, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 147
    .line 148
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->eventQueue:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget-wide v0, p1, Lcom/haima/hmcp/business/MouseMotionEventDispatcher$EventData;->eventTime:J

    .line 161
    .line 162
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/business/MouseMotionEventDispatcher;->handleMotionEvent(J)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1
.end method
