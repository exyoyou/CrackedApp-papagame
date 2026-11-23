.class Lcom/join/mgps/socket/fight/arena/a$a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a$a0;->o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/mgps/dto/ArchiveBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a$a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$d;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/ArchiveBean;Lcom/join/mgps/dto/ArchiveBean;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    cmp-long v2, v0, p1

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ArchiveBean;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/dto/ArchiveBean;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/a$a0$d;->a(Lcom/join/mgps/dto/ArchiveBean;Lcom/join/mgps/dto/ArchiveBean;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
