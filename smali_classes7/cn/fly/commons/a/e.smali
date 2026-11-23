.class public Lcn/fly/commons/a/e;
.super Lcn/fly/commons/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-string v3, ""

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcn/fly/commons/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/fly/commons/a/c;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "[DCC] onWork"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcn/fly/tools/log/NLog;->i(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const-string v0, "l"

    .line 17
    .line 18
    invoke-static {v0}, Lcn/fly/commons/c;->a(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcn/fly/commons/a/f;

    .line 25
    .line 26
    invoke-direct {v0}, Lcn/fly/commons/a/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcn/fly/commons/a/f;->a()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v0, "002PfmBi"

    .line 33
    .line 34
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcn/fly/commons/c;->a(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Lcn/fly/commons/a/g;

    .line 45
    .line 46
    invoke-direct {v0}, Lcn/fly/commons/a/g;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcn/fly/commons/a/g;->a()V

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v0, "002Ahifk"

    .line 53
    .line 54
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcn/fly/commons/c;->a(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Lcn/fly/commons/a/o;

    .line 65
    .line 66
    invoke-direct {v0}, Lcn/fly/commons/a/o;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcn/fly/commons/a/o;->a()V

    .line 70
    .line 71
    .line 72
    :cond_2
    const-string v0, "002Hhi6i"

    .line 73
    .line 74
    invoke-static {v0}, Lcn/fly/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcn/fly/commons/c;->a(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Lcn/fly/commons/a/p;

    .line 85
    .line 86
    invoke-direct {v0}, Lcn/fly/commons/a/p;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcn/fly/commons/a/p;->a()V

    .line 90
    .line 91
    .line 92
    :cond_3
    return-void
.end method

.method protected b()J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v6, "yyyy-MM-dd"

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/util/Date;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x5

    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    new-instance v2, Ljava/security/SecureRandom;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 46
    .line 47
    .line 48
    sub-long/2addr v7, v3

    .line 49
    const v3, 0x493e0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-long v2, v2

    .line 57
    add-long/2addr v7, v2

    .line 58
    const-wide/16 v2, 0x3e8

    .line 59
    .line 60
    div-long v4, v7, v2

    .line 61
    .line 62
    rem-long/2addr v7, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    cmp-long v2, v7, v0

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v6, 0x0

    .line 69
    :goto_0
    int-to-long v0, v6

    .line 70
    add-long/2addr v4, v0

    .line 71
    return-wide v4

    .line 72
    :catchall_0
    move-exception v2

    .line 73
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    return-wide v0
.end method

.method protected g()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/fly/commons/k;->a()Lcn/fly/commons/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/fly/commons/k;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
