.class public Lcom/join/mgps/dto/ArenaPopupInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private daily_count:I

.field private id:I

.field private is_popup:I

.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private popup_img:Ljava/lang/String;

.field private show_time:J


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
.method public getDaily_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->daily_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_popup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->is_popup:I

    .line 2
    .line 3
    return v0
.end method

.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPopup_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->popup_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->show_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setDaily_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daily_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->daily_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_popup(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_popup"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->is_popup:I

    .line 2
    .line 3
    return-void
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPopup_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popup_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->popup_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShow_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->show_time:J

    .line 2
    .line 3
    return-void
.end method
