.class public Lcom/join/mgps/dto/StatisticsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private min_game_search_source:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/StatisticsBean;->min_game_search_source:Ljava/lang/Integer;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getMin_game_search_source()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StatisticsBean;->min_game_search_source:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMin_game_search_source(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min_game_search_source"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StatisticsBean;->min_game_search_source:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
