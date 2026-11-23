.class public Lcom/join/mgps/dto/TodayWufunBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bm_broadcast:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field private every_day_discover:Lcom/join/mgps/dto/TodayWufunEverday;

.field private times:J

.field private today_is_new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunTodayNew;",
            ">;"
        }
    .end annotation
.end field

.field private today_is_topic:Lcom/join/mgps/dto/TodayWufunTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBm_broadcast()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunBean;->bm_broadcast:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEvery_day_discover()Lcom/join/mgps/dto/TodayWufunEverday;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunBean;->every_day_discover:Lcom/join/mgps/dto/TodayWufunEverday;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/TodayWufunBean;->times:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getToday_is_new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunTodayNew;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunBean;->today_is_new:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToday_is_topic()Lcom/join/mgps/dto/TodayWufunTopic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TodayWufunBean;->today_is_topic:Lcom/join/mgps/dto/TodayWufunTopic;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBm_broadcast(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm_broadcast"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunBean;->bm_broadcast:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 2
    .line 3
    return-void
.end method

.method public setEvery_day_discover(Lcom/join/mgps/dto/TodayWufunEverday;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "every_day_discover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunBean;->every_day_discover:Lcom/join/mgps/dto/TodayWufunEverday;

    .line 2
    .line 3
    return-void
.end method

.method public setTimes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/TodayWufunBean;->times:J

    .line 2
    .line 3
    return-void
.end method

.method public setToday_is_new(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "today_is_new"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunTodayNew;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunBean;->today_is_new:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setToday_is_topic(Lcom/join/mgps/dto/TodayWufunTopic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "today_is_topic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TodayWufunBean;->today_is_topic:Lcom/join/mgps/dto/TodayWufunTopic;

    .line 2
    .line 3
    return-void
.end method
