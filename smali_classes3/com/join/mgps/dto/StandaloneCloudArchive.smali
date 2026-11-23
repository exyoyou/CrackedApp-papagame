.class public Lcom/join/mgps/dto/StandaloneCloudArchive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private last_enter_main_page_time:J

.field private location_at:Ljava/lang/Integer;

.field private tag_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation
.end field


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
.method public getLast_enter_main_page_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->last_enter_main_page_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocation_at()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->location_at:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->tag_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLast_enter_main_page_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last_enter_main_page_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->last_enter_main_page_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setLocation_at(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location_at"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->location_at:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/StandaloneCloudArchive;->tag_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
