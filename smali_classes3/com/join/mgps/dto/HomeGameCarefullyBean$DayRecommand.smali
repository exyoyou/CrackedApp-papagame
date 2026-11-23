.class public Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/HomeGameCarefullyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayRecommand"
.end annotation


# instance fields
.field private addTimes:J

.field game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field game_information:Lcom/join/mgps/dto/InformationListDataBean;


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
.method public getAddTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->addTimes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_information()Lcom/join/mgps/dto/InformationListDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_information:Lcom/join/mgps/dto/InformationListDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAddTimes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addTimes"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->addTimes:J

    .line 2
    .line 3
    return-void
.end method

.method public setGame_discover(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_discover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_information(Lcom/join/mgps/dto/InformationListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_information"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_information:Lcom/join/mgps/dto/InformationListDataBean;

    .line 2
    .line 3
    return-void
.end method
