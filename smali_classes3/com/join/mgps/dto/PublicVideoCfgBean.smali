.class public Lcom/join/mgps/dto/PublicVideoCfgBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private times:I

.field private url:Ljava/lang/String;

.field private v_switch:I


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
.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->times:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->v_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public setTimes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->times:I

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setV_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PublicVideoCfgBean;->v_switch:I

    .line 2
    .line 3
    return-void
.end method
