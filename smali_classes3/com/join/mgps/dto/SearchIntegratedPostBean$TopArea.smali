.class public Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SearchIntegratedPostBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopArea"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private fid:I

.field private icon_src:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private posts:I

.field private today_posts:I

.field private users:I


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
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->fid:I

    .line 2
    .line 3
    return v0
.end method

.method public getIcon_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->icon_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->posts:I

    .line 2
    .line 3
    return v0
.end method

.method public getToday_posts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->today_posts:I

    .line 2
    .line 3
    return v0
.end method

.method public getUsers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->users:I

    .line 2
    .line 3
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->fid:I

    .line 2
    .line 3
    return-void
.end method

.method public setIcon_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->icon_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPosts(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->posts:I

    .line 2
    .line 3
    return-void
.end method

.method public setToday_posts(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "today_posts"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->today_posts:I

    .line 2
    .line 3
    return-void
.end method

.method public setUsers(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "users"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->users:I

    .line 2
    .line 3
    return-void
.end method
