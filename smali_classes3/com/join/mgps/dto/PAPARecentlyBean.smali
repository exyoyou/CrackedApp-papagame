.class public Lcom/join/mgps/dto/PAPARecentlyBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crc_sign_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "crc_sign_id",
            "game_name",
            "screenshot_pic"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->crc_sign_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->game_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->screenshot_pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_sign_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenshot_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPARecentlyBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
