.class public Lcom/join/mgps/dto/DIscoverTypeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private tid:I


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
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->tid:I

    .line 2
    .line 3
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->tid:I

    .line 2
    .line 3
    return-void
.end method
