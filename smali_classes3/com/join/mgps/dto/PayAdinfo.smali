.class public Lcom/join/mgps/dto/PayAdinfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private icon:Ljava/lang/String;

.field private link:Lcom/join/mgps/dto/AppBeanMain;

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


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink()Lcom/join/mgps/dto/AppBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->link:Lcom/join/mgps/dto/AppBeanMain;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLink(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->link:Lcom/join/mgps/dto/AppBeanMain;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
