.class public final Lcom/kwad/components/core/pfmonitor/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aiw:Z

.field private final file:Ljava/io/File;

.field private final fileName:Ljava/lang/String;

.field private final filePath:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/pfmonitor/model/d;->file:Ljava/io/File;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/kwad/components/core/pfmonitor/model/d;->size:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/kwad/components/core/pfmonitor/model/d;->aiw:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/kwad/components/core/pfmonitor/model/d;->fileName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/kwad/components/core/pfmonitor/model/d;->filePath:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/pfmonitor/model/d;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/pfmonitor/model/d;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/pfmonitor/model/d;->aiw:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/kwad/components/core/pfmonitor/model/d;->aiw:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "[DIR] "

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "[FILE] "

    .line 12
    .line 13
    :goto_0
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iget-object v2, p0, Lcom/kwad/components/core/pfmonitor/model/d;->filePath:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/kwad/components/core/pfmonitor/model/d;->size:J

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/kwad/components/core/pfmonitor/d;->P(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    const-string v1, "%s%s - %s"

    .line 31
    .line 32
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
