.class public Lcom/join/mgps/dto/DetialShowImageSingBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attr:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "attr"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->path:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->attr:I

    return-void
.end method


# virtual methods
.method public getAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->attr:I

    .line 2
    .line 3
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAttr(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attr"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->attr:I

    .line 2
    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialShowImageSingBean;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
