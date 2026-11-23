.class public Lcom/join/mgps/dto/OemBean$OemGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/OemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemGameBean"
.end annotation


# instance fields
.field private game_icon:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private my_gift_count:Ljava/lang/String;

.field private new_add_oem_count:Ljava/lang/String;

.field private oem_count:Ljava/lang/String;


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
.method public getGame_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->game_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMyGiftCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->my_gift_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNew_add_oem_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->new_add_oem_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOem_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->oem_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_icon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->game_icon:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMyGiftCount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myGiftCount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->my_gift_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNew_add_oem_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "new_add_oem_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->new_add_oem_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOem_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oem_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/OemBean$OemGameBean;->oem_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
