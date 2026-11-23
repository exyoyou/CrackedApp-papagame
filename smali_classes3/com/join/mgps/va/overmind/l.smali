.class public Lcom/join/mgps/va/overmind/l;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "archiveInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, "gameId"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "switch"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "soInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, "modPath"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "soInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const-string v1, "code"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "soInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "0"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string v0, "version"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfgPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "config"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string v0, "utilsConfigState"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "1"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "archivePath",
            "archivePath2",
            "archiveId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "archiveInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "archivePath"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "archivePath2"

    .line 28
    .line 29
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "archiveId"

    .line 33
    .line 34
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "modPath",
            "version",
            "code",
            "lastModifyTime"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "soInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "modPath"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "version"

    .line 28
    .line 29
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p2, "code"

    .line 50
    .line 51
    invoke-virtual {v1, p2, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "lastModifyTime"

    .line 70
    .line 71
    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "goldSwitch",
            "archiveSwitch",
            "introductionSwitch",
            "channelNum",
            "targetVersion",
            "androidId",
            "platform",
            "package_type",
            "typeId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "switch"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "goldFingerSwitch"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p0, "archiveCloudSwitch"

    .line 28
    .line 29
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "introductionSwitch"

    .line 33
    .line 34
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p0, "config"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    new-instance p1, Lcom/join/mgps/Util/y$c;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string p0, "channelNum"

    .line 54
    .line 55
    invoke-virtual {p1, p0, p4}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p0, "targetVersion"

    .line 59
    .line 60
    invoke-virtual {p1, p0, p5}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "androidId"

    .line 64
    .line 65
    invoke-virtual {p1, p0, p6}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p0, "platform"

    .line 69
    .line 70
    invoke-virtual {p1, p0, p7}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "package_type"

    .line 74
    .line 75
    invoke-virtual {p1, p0, p8}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p0, "typeId"

    .line 79
    .line 80
    invoke-virtual {p1, p0, p9}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "gameId"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "modPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "gameInfo"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "modPath"

    .line 23
    .line 24
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static m(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cfgPath",
            "enabled"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/y;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "config"

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/y;->b(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/Util/y$c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/y$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/y;->f(Lcom/join/mgps/Util/y$c;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string p0, "1"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p0, "0"

    .line 28
    .line 29
    :goto_0
    const-string p1, "utilsConfigState"

    .line 30
    .line 31
    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/y$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/Util/y;->j()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
