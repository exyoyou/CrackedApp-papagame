.class public Lcom/join/mgps/hmcloud/HMCloudGameManager$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/hmcloud/HMCloudGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field public h:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field public i:Lcom/join/mgps/dto/ExtBean;

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->d:I

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->e:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->f:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->k:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->m:Z

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->p:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->q:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->r:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->s:Ljava/lang/String;

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->t:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->u:J

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->a:J

    .line 38
    .line 39
    return-void
.end method
