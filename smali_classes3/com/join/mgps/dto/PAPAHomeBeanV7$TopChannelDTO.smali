.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopChannelDTO"
.end annotation


# instance fields
.field private bg_color:Ljava/lang/String;

.field private broadcast:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field private discover:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field private theNew:Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;


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
.method public getBg_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->bg_color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBroadcast()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->broadcast:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscover()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->discover:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTheNew()Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->theNew:Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBg_color(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bg_color"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->bg_color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBroadcast(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "broadcast"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->broadcast:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscover(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->discover:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setTheNew(Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theNew"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->theNew:Lcom/join/mgps/dto/PAPAHomeBeanV7$TheNewDTO;

    .line 2
    .line 3
    return-void
.end method
