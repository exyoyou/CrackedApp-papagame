.class public Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayGameInfoBean"
.end annotation


# instance fields
.field private battle_room_count:I

.field private current_play_time:J

.field private file_save_count:I

.field private file_save_switch:I

.field private last_play_time:J


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
.method public getBattle_room_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->battle_room_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrent_play_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->current_play_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFile_save_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->file_save_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getFile_save_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->file_save_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getLast_play_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->last_play_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setBattle_room_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_room_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->battle_room_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_play_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_play_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->current_play_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setFile_save_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file_save_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->file_save_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setFile_save_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file_save_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->file_save_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setLast_play_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last_play_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$PlayGameInfoBean;->last_play_time:J

    .line 2
    .line 3
    return-void
.end method
