.class public final Lcom/kwad/framework/filedownloader/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final aAW:J

.field final aAX:J

.field final aAY:J

.field final contentLength:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/download/a;->aAW:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/kwad/framework/filedownloader/download/a;->contentLength:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/kwad/framework/filedownloader/download/a;->aAW:J

    .line 5
    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-string v1, "range[%d, %d) current offset[%d]"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
