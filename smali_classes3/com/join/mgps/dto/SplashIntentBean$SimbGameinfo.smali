.class public Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SplashIntentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimbGameinfo"
.end annotation


# instance fields
.field private game_info_tpl_type:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private sp_tpl_two_position:Ljava/lang/String;

.field private title:Ljava/lang/String;


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

.method public static from(Lorg/json/JSONObject;)Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "id"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->setId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "title"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->setTitle(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "ico_remote"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->setIco_remote(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "game_info_tpl_type"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "sp_tpl_two_position"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->setSp_tpl_two_position(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tpl_two_position()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->sp_tpl_two_position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_tpl_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tpl_two_position(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tpl_two_position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->sp_tpl_two_position:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
