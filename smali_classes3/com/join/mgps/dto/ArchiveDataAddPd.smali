.class public Lcom/join/mgps/dto/ArchiveDataAddPd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cloud_archives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation
.end field

.field private pd_info:Lcom/join/mgps/dto/DomainInfoBean;


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
.method public getCloud_archives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDataAddPd;->cloud_archives:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPd_info()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArchiveDataAddPd;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCloud_archives(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_archives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDataAddPd;->cloud_archives:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPd_info(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pd_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArchiveDataAddPd;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method
