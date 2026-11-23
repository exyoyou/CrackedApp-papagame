.class public Lcom/join/mgps/dto/DiscoverBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addtimes:J

.field private bg_color:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pic",
            "title",
            "intro",
            "bg_color",
            "addtimes"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverBean;->pic:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/DiscoverBean;->title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/DiscoverBean;->intro:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/DiscoverBean;->bg_color:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/join/mgps/dto/DiscoverBean;->addtimes:J

    return-void
.end method


# virtual methods
.method public getAddtimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/DiscoverBean;->addtimes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBg_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverBean;->bg_color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverBean;->intro:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverBean;->pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAddtimes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addtimes"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/DiscoverBean;->addtimes:J

    .line 2
    .line 3
    return-void
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
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverBean;->bg_color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intro"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverBean;->intro:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverBean;->pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
