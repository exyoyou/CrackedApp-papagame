.class public Lcom/join/mgps/socket/entity/d;
.super Lcom/join/mgps/socket/entity/e;
.source "SourceFile"


# instance fields
.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/socket/entity/e;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileSize",
            "fileName",
            "filePath",
            "savePath",
            "id"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/socket/entity/e;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/join/mgps/socket/entity/d;->c:J

    .line 4
    iput-object p3, p0, Lcom/join/mgps/socket/entity/d;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/socket/entity/d;->e:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/socket/entity/d;->f:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/join/mgps/socket/entity/d;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/entity/d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/entity/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/socket/entity/d;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/entity/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/entity/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/entity/d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/entity/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public h(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/socket/entity/d;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/entity/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/entity/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
