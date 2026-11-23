.class public Lcom/join/mgps/socket/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "b"

.field private static final c:I = 0x5


# instance fields
.field a:Lcom/join/mgps/socket/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/socket/a;->b()Lcom/join/mgps/socket/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 9
    .line 10
    return-void
.end method

.method public static c(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targe",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    rem-int/2addr v1, p1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    div-int/2addr v1, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    div-int/2addr v1, p1

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    :goto_0
    const/4 v2, 0x0

    .line 27
    :goto_1
    if-ge v2, v1, :cond_3

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    mul-int v4, v2, p1

    .line 35
    .line 36
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 37
    .line 38
    mul-int v6, p1, v5

    .line 39
    .line 40
    add-int/lit8 v6, v6, -0x1

    .line 41
    .line 42
    if-gt v4, v6, :cond_2

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/lit8 v5, v5, -0x1

    .line 49
    .line 50
    if-gt v4, v5, :cond_1

    .line 51
    .line 52
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 57
    .line 58
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move v2, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    return-object v0
.end method

.method public static d()Lcom/join/mgps/socket/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/socket/b$a;->a:Lcom/join/mgps/socket/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$STLA$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/a;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "$SRSSLH$"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "$DMH$"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/m;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/join/mgps/socket/entity/h;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$TLO$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$STN$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$STY$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j(Lcom/join/mgps/socket/entity/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$HB$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "$SSSSLH$"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idAndCode"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "$STH$"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/socket/b;->c(Ljava/util/List;I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/List;

    .line 27
    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Task\u5217\u8868: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "$TLH$"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ":"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/join/mgps/socket/entity/h;

    .line 75
    .line 76
    invoke-direct {v2, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$SSSF$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$SSZ$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    .line 7
    .line 8
    const-string v1, "$SNSUUO$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
