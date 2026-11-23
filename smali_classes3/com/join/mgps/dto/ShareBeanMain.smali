.class public Lcom/join/mgps/dto/ShareBeanMain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private share:Lcom/join/mgps/dto/ShareBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/ShareBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBeanMain;->share:Lcom/join/mgps/dto/ShareBean;

    return-void
.end method


# virtual methods
.method public getShare()Lcom/join/mgps/dto/ShareBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBeanMain;->share:Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setShare(Lcom/join/mgps/dto/ShareBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBeanMain;->share:Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    return-void
.end method
