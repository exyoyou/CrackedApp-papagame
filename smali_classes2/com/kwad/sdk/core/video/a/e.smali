.class public final Lcom/kwad/sdk/core/video/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aZt:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static aZu:I = -0x1

.field private static final aZv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static aZx:I

.field private static amw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method public static HZ()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->aZw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/kwad/framework/a/a;->OB:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public static OK()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 2
    .line 3
    return v0
.end method

.method public static OL()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/video/a/e;->aZt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/kwad/sdk/core/video/a/e;->aZt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static a(Landroid/content/Context;ZZZI)Lcom/kwad/sdk/core/video/a/c;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "MediaPlayerImpl"

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->HZ()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->OL()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v2, "constructPlayer KwaiMediaPlayer"

    .line 20
    .line 21
    invoke-static {p0, v2}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/kwad/sdk/core/video/a/d;

    .line 25
    .line 26
    invoke-direct {v2, p4}, Lcom/kwad/sdk/core/video/a/d;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 p4, 0x2

    .line 30
    sput p4, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/kwad/sdk/core/video/a/d;->bK(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "constructPlayer AndroidMediaPlayer"

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/kwad/sdk/core/video/a/b;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/kwad/sdk/core/video/a/b;-><init>()V

    .line 44
    .line 45
    .line 46
    sput v0, Lcom/kwad/sdk/core/video/a/e;->aZx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :goto_0
    const/4 v7, 0x0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    const-string p4, "constructPlayer exception, using AndroidMediaPlayer"

    .line 52
    .line 53
    invoke-static {p0, p4, p1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    sget-boolean p0, Lcom/kwad/sdk/core/video/a/e;->amw:Z

    .line 57
    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    sput-boolean v0, Lcom/kwad/sdk/core/video/a/e;->amw:Z

    .line 61
    .line 62
    invoke-static {p1}, Lcom/kwad/sdk/service/d;->gatherException(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    new-instance v2, Lcom/kwad/sdk/core/video/a/b;

    .line 66
    .line 67
    invoke-direct {v2}, Lcom/kwad/sdk/core/video/a/b;-><init>()V

    .line 68
    .line 69
    .line 70
    sput v0, Lcom/kwad/sdk/core/video/a/e;->aZx:I

    .line 71
    .line 72
    const/4 v7, 0x1

    .line 73
    :goto_1
    const-class p0, Lcom/kwad/sdk/service/a/f;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/kwad/sdk/service/a/f;

    .line 86
    .line 87
    invoke-interface {p0}, Lcom/kwad/sdk/service/a/f;->Fu()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const/4 v4, 0x0

    .line 96
    :goto_2
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->HZ()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {}, Lcom/kwad/sdk/core/video/a/e;->OL()Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-interface {v2}, Lcom/kwad/sdk/core/video/a/c;->getMediaPlayerType()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    move v5, p2

    .line 109
    move v8, p3

    .line 110
    invoke-static/range {v3 .. v9}, Lcom/kwad/sdk/utils/ax;->a(ZZZZZZI)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p2, "player v="

    .line 117
    .line 118
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "KwaiPlayHelper"

    .line 133
    .line 134
    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/c;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget p1, Lcom/kwad/sdk/core/video/a/e;->aZu:I

    .line 138
    .line 139
    if-eq p1, p0, :cond_3

    .line 140
    .line 141
    sput p0, Lcom/kwad/sdk/core/video/a/e;->aZu:I

    .line 142
    .line 143
    invoke-static {p0}, Lcom/kwad/sdk/core/video/a/e;->eL(I)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-object v2
.end method

.method private static eL(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/report/n;

    .line 2
    .line 3
    const-wide/16 v1, 0x27e4

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/report/n;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iput p0, v0, Lcom/kwad/sdk/core/report/n;->aVZ:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/core/report/g;->a(Lcom/kwad/sdk/core/report/n;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
