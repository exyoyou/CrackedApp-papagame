.class public interface abstract Lcom/join/mgps/hmcloud/t;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onChangeUiState(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "extra"
        }
    .end annotation
.end method

.method public abstract onFinishGame()V
.end method

.method public abstract onReload()V
.end method

.method public abstract onRestUI()V
.end method

.method public abstract onUpdateProgress(Lcom/join/mgps/hmcloud/HMCloudGameManager$GAME_UI_STATE;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "progress"
        }
    .end annotation
.end method
