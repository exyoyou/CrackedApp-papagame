.class public Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromPopoWinBeanV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;
    }
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private big_pic:Ljava/lang/String;

.field private book_count:Ljava/lang/String;

.field private current_game_state:Ljava/lang/String;

.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private game_count:Ljava/lang/String;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;"
        }
    .end annotation
.end field

.field private hasExposure:Z

.field private id:Ljava/lang/String;

.field private nick_name:Ljava/lang/String;

.field private portrait:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:I


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
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBook_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->book_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrent_game_state()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->current_game_state:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->nick_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPortrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->portrait:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->hasExposure:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBig_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "big_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBook_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "book_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->book_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_game_state(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_game_state"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->current_game_state:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasExposure"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->hasExposure:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nick_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->nick_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPortrait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "portrait"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->portrait:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->uid:I

    .line 2
    .line 3
    return-void
.end method
