.class public Lcom/join/mgps/dto/LabelBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private posts:I

.field private tag_icon:Ljava/lang/String;

.field private tag_id:I

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/LabelBean;->tag_id:I

    return-void
.end method


# virtual methods
.method public getPosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/LabelBean;->posts:I

    .line 2
    .line 3
    return v0
.end method

.method public getTag_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LabelBean;->tag_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/LabelBean;->tag_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LabelBean;->tag_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput p1, p0, Lcom/join/mgps/dto/LabelBean;->posts:I

    .line 2
    .line 3
    return-void
.end method

.method public setTag_icon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LabelBean;->tag_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/LabelBean;->tag_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LabelBean;->tag_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
