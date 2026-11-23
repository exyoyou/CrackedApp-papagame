.class public final Lcom/kwad/framework/filedownloader/services/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/services/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field aCW:Lcom/kwad/framework/filedownloader/f/c$c;

.field aCX:Ljava/lang/Integer;

.field aCY:Lcom/kwad/framework/filedownloader/f/c$e;

.field aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

.field aDa:Lcom/kwad/framework/filedownloader/services/c$a;

.field aDb:Lcom/kwad/framework/filedownloader/f/c$a;

.field aDc:Lcom/kwad/framework/filedownloader/f/c$d;


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
.method public final a(Lcom/kwad/framework/filedownloader/f/c$b;)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

    return-object p0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/services/c$a;)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aDa:Lcom/kwad/framework/filedownloader/services/c$a;

    return-object p0
.end method

.method public final cZ(I)Lcom/kwad/framework/filedownloader/services/c$b;
    .locals 0

    .line 1
    const p1, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCX:Ljava/lang/Integer;

    .line 9
    .line 10
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCW:Lcom/kwad/framework/filedownloader/f/c$c;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCX:Ljava/lang/Integer;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCY:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aCZ:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/services/c$b;->aDb:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const-string v1, "component: database[%s], maxNetworkCount[%s], outputStream[%s], connection[%s], connectionCountAdapter[%s]"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
