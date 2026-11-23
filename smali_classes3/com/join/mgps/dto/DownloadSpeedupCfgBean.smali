.class public Lcom/join/mgps/dto/DownloadSpeedupCfgBean;
.super Lcom/join/mgps/dto/BaseBean;
.source "SourceFile"


# instance fields
.field private btn_text:Ljava/lang/String;

.field private net_status:I

.field private play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private show_users:I

.field private speedup_times:I

.field private switch_state:I

.field private tip_text:Ljava/lang/String;

.field private what_day:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->net_status:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getBtn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->btn_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNet_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->net_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlay_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->play_cfg:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShow_users()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->show_users:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpeedup_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->speedup_times:I

    .line 2
    .line 3
    return v0
.end method

.method public getSwitch_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->switch_state:I

    .line 2
    .line 3
    return v0
.end method

.method public getTip_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->tip_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWhat_day()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->what_day:I

    .line 2
    .line 3
    return v0
.end method

.method public setBtn_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btn_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->btn_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNet_status(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "net_status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->net_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlay_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "play_cfg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->play_cfg:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setShow_users(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_users"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->show_users:I

    .line 2
    .line 3
    return-void
.end method

.method public setSpeedup_times(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speedup_times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->speedup_times:I

    .line 2
    .line 3
    return-void
.end method

.method public setSwitch_state(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switch_state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->switch_state:I

    .line 2
    .line 3
    return-void
.end method

.method public setTip_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tip_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->tip_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWhat_day(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what_day"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DownloadSpeedupCfgBean;->what_day:I

    .line 2
    .line 3
    return-void
.end method
