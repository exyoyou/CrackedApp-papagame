.class public Lcom/join/mgps/dto/BattleStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private remaining_seconds:I


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
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BattleStatus;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemaining_seconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattleStatus;->remaining_seconds:I

    .line 2
    .line 3
    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BattleStatus;->error_msg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRemaining_seconds(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remaining_seconds"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattleStatus;->remaining_seconds:I

    .line 2
    .line 3
    return-void
.end method
