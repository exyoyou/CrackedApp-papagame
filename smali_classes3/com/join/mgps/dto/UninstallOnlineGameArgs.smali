.class public Lcom/join/mgps/dto/UninstallOnlineGameArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gameId:Ljava/lang/String;


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
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UninstallOnlineGameArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UninstallOnlineGameArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
