.class public final Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/download/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;,
        Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;,
        Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;
    }
.end annotation


# static fields
.field private static final aBt:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private aBA:Ljava/lang/String;

.field private aBB:J

.field private aBC:J

.field private aBD:J

.field private aBE:J

.field private final aBd:Lcom/kwad/framework/filedownloader/b/a;

.field private final aBg:Lcom/kwad/framework/filedownloader/download/d;

.field private final aBh:I

.field private final aBi:Lcom/kwad/framework/filedownloader/d/c;

.field private final aBj:Lcom/kwad/framework/filedownloader/d/b;

.field private final aBk:Z

.field private final aBl:Z

.field private final aBm:Lcom/kwad/framework/filedownloader/y;

.field private aBn:Z

.field aBo:I

.field private final aBp:Z

.field private final aBq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kwad/framework/filedownloader/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private aBr:Lcom/kwad/framework/filedownloader/download/e;

.field private aBs:Z

.field private aBu:Z

.field private aBv:Z

.field private aBw:Z

.field private final aBx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aBy:Z

.field private volatile aBz:Ljava/lang/Exception;

.field private volatile nJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ConnectionBlock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/f/b;->cj(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/d/b;Lcom/kwad/framework/filedownloader/y;IIZZI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBh:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBB:J

    .line 6
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBC:J

    .line 7
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBD:J

    .line 8
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBE:J

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBx:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 11
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBn:Z

    .line 12
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 13
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBj:Lcom/kwad/framework/filedownloader/d/b;

    .line 14
    iput-boolean p6, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBk:Z

    .line 15
    iput-boolean p7, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBl:Z

    .line 16
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/b;->Cc()Lcom/kwad/framework/filedownloader/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 17
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/download/b;->Ce()Z

    move-result p2

    iput-boolean p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBp:Z

    .line 18
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBm:Lcom/kwad/framework/filedownloader/y;

    .line 19
    iput p8, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBo:I

    .line 20
    new-instance p2, Lcom/kwad/framework/filedownloader/download/d;

    invoke-direct {p2, p1, p8, p4, p5}, Lcom/kwad/framework/filedownloader/download/d;-><init>(Lcom/kwad/framework/filedownloader/d/c;III)V

    iput-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/d/b;Lcom/kwad/framework/filedownloader/y;IIZZIB)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/d/b;Lcom/kwad/framework/filedownloader/y;IIZZI)V

    return-void
.end method

.method private Cl()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt v0, v2, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBp:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBw:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    return v1
.end method

.method private Cn()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/f/f;->cq(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v3, v2, v4

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    aput-object v0, v2, v3

    .line 34
    .line 35
    const-string v0, "Task[%d] can\'t start the download runnable, because this task require wifi, but user application nor current process has %s, so we can\'t check whether the network type connection."

    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBl:Z

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/f;->DE()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method private Co()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->AB()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v5}, Lcom/kwad/framework/filedownloader/f/f;->D(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-boolean v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBk:Z

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v0, v5, v2, v3}, Lcom/kwad/framework/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBm:Lcom/kwad/framework/filedownloader/y;

    .line 49
    .line 50
    invoke-static {v0, v2, v4, v3}, Lcom/kwad/framework/filedownloader/f/c;->a(ILcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/y;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 57
    .line 58
    invoke-interface {v3, v1}, Lcom/kwad/framework/filedownloader/b/a;->cD(I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 63
    .line 64
    invoke-interface {v4, v1}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 68
    .line 69
    invoke-interface {v4, v1}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lcom/kwad/framework/filedownloader/f/f;->cu(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/d/c;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v1, v4, v5}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v1, v4, v5}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v1, v4}, Lcom/kwad/framework/filedownloader/d/c;->cg(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 126
    .line 127
    invoke-interface {v1, v2}, Lcom/kwad/framework/filedownloader/b/a;->b(Lcom/kwad/framework/filedownloader/d/c;)V

    .line 128
    .line 129
    .line 130
    if-eqz v3, :cond_0

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_0

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Lcom/kwad/framework/filedownloader/d/a;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 152
    .line 153
    invoke-interface {v3, v2}, Lcom/kwad/framework/filedownloader/b/a;->a(Lcom/kwad/framework/filedownloader/d/a;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    .line 158
    .line 159
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 164
    .line 165
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 169
    .line 170
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBm:Lcom/kwad/framework/filedownloader/y;

    .line 192
    .line 193
    move v1, v0

    .line 194
    invoke-static/range {v1 .. v6}, Lcom/kwad/framework/filedownloader/f/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwad/framework/filedownloader/y;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_3

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 202
    .line 203
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 207
    .line 208
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    .line 212
    .line 213
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 218
    .line 219
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 223
    .line 224
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely;-><init>(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_5
    :goto_1
    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/util/List;J)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(JLjava/lang/String;)V
    .locals 10

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-eqz v3, :cond_2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/framework/filedownloader/f/f;->cs(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/e/a;

    move-result-object v2

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long v6, p1, v8

    .line 60
    invoke-static {p3}, Lcom/kwad/sdk/crash/utils/h;->getAvailableBytes(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p3, v4, v6

    if-ltz p3, :cond_0

    .line 61
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e;->Dz()Lcom/kwad/framework/filedownloader/f/e;

    move-result-object p3

    iget-boolean p3, p3, Lcom/kwad/framework/filedownloader/f/e;->aDx:Z

    if-nez p3, :cond_2

    .line 62
    invoke-interface {v2, p1, p2}, Lcom/kwad/framework/filedownloader/e/a;->setLength(J)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lcom/kwad/framework/filedownloader/exception/FileDownloadOutOfSpaceException;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/kwad/framework/filedownloader/exception/FileDownloadOutOfSpaceException;-><init>(JJJ)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/e/a;->close()V

    .line 65
    :cond_1
    throw p1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 66
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/e/a;->close()V

    :cond_3
    return-void
.end method

.method private a(Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/a/b;)V
    .locals 12

    .line 37
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 39
    new-instance v0, Lcom/kwad/framework/filedownloader/download/a;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    iget-wide v10, p1, Lcom/kwad/framework/filedownloader/download/a;->contentLength:J

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/kwad/framework/filedownloader/download/a;-><init>(JJJJ)V

    move-object p1, v0

    .line 40
    :cond_0
    new-instance v0, Lcom/kwad/framework/filedownloader/download/e$a;

    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/download/e$a;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/kwad/framework/filedownloader/download/e$a;->b(Lcom/kwad/framework/filedownloader/download/f;)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 42
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/download/e$a;->cO(I)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object v1

    const/4 v2, -0x1

    .line 43
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/download/e$a;->cN(I)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBl:Z

    .line 44
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/download/e$a;->bx(Z)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p2}, Lcom/kwad/framework/filedownloader/download/e$a;->d(Lcom/kwad/framework/filedownloader/a/b;)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Lcom/kwad/framework/filedownloader/download/e$a;->c(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/e$a;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 47
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/framework/filedownloader/download/e$a;->ce(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 48
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    .line 49
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-interface {p1, v1, p2}, Lcom/kwad/framework/filedownloader/b/a;->w(II)V

    .line 50
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/e$a;->CE()Lcom/kwad/framework/filedownloader/download/e;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBr:Lcom/kwad/framework/filedownloader/download/e;

    .line 51
    iget-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 53
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBr:Lcom/kwad/framework/filedownloader/download/e;

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/download/e;->pause()V

    return-void

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBr:Lcom/kwad/framework/filedownloader/download/e;

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/download/e;->run()V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/a/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwad/framework/filedownloader/download/ConnectTask;",
            "Lcom/kwad/framework/filedownloader/a/b;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v4

    .line 2
    invoke-interface/range {p3 .. p3}, Lcom/kwad/framework/filedownloader/a/b;->getResponseCode()I

    move-result v2

    const/16 v3, 0xce

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 3
    :goto_1
    iput-boolean v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    const/16 v3, 0xc8

    const/16 v7, 0xc9

    if-eq v2, v3, :cond_3

    if-eq v2, v7, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 4
    :goto_3
    iget-object v8, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v4, v1}, Lcom/kwad/framework/filedownloader/f/f;->a(ILcom/kwad/framework/filedownloader/a/b;)Ljava/lang/String;

    move-result-object v13

    const/16 v9, 0x19c

    const-wide/16 v10, 0x0

    if-ne v2, v9, :cond_5

    :cond_4
    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_6

    .line 6
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v3, :cond_4

    .line 7
    iget-boolean v9, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    if-ne v2, v7, :cond_7

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BW()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    const/16 v7, 0x1a0

    if-ne v2, v7, :cond_8

    .line 9
    iget-object v7, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v7}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v14

    cmp-long v7, v14, v10

    if-lez v7, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_5
    const/4 v9, 0x0

    if-eqz v7, :cond_b

    .line 10
    iget-boolean v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v12, 0x4

    if-eqz v1, :cond_9

    new-array v1, v12, [Ljava/lang/Object;

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v5

    aput-object v8, v1, v6

    aput-object v13, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v3

    const-string v14, "there is precondition failed on this request[%d] with old etag[%s]\u3001new etag[%s]\u3001response requestHttpCode is %d"

    .line 12
    invoke-static {v0, v14, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_9
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object v14, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v14}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v14

    invoke-interface {v1, v14}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 14
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v14, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v14}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/kwad/framework/filedownloader/f/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-boolean v5, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    if-eqz v8, :cond_a

    .line 16
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v5

    aput-object v13, v1, v6

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "the old etag[%s] is the same to the new etag[%s], but the response status requestHttpCode is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!"

    .line 18
    invoke-static {v0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v13, v9

    .line 19
    :cond_a
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1, v10, v11}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 20
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1, v10, v11}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 21
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1, v13}, Lcom/kwad/framework/filedownloader/d/c;->cg(Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Db()V

    .line 23
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v6

    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v8

    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 24
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    move-result v10

    .line 25
    invoke-interface/range {v3 .. v10}, Lcom/kwad/framework/filedownloader/b/a;->a(ILjava/lang/String;JJI)V

    .line 26
    new-instance v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;

    invoke-direct {v1, v0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly;-><init>(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V

    throw v1

    .line 27
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BX()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBA:Ljava/lang/String;

    .line 28
    iget-boolean v7, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    if-nez v7, :cond_d

    if-eqz v3, :cond_c

    goto :goto_6

    .line 29
    :cond_c
    new-instance v3, Lcom/kwad/framework/filedownloader/exception/FileDownloadHttpException;

    .line 30
    invoke-interface/range {p3 .. p3}, Lcom/kwad/framework/filedownloader/a/b;->BP()Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-direct {v3, v2, v4, v1}, Lcom/kwad/framework/filedownloader/exception/FileDownloadHttpException;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    throw v3

    .line 31
    :cond_d
    :goto_6
    invoke-static {v4, v1}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/a/b;)J

    move-result-wide v2

    .line 32
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->AB()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 33
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kwad/framework/filedownloader/f/f;->a(Lcom/kwad/framework/filedownloader/a/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_7

    :cond_e
    move-object v14, v9

    :goto_7
    const-wide/16 v7, -0x1

    cmp-long v1, v2, v7

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 34
    :goto_8
    iput-boolean v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBw:Z

    if-nez v1, :cond_10

    .line 35
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v7

    add-long/2addr v7, v2

    move-wide v11, v7

    goto :goto_9

    :cond_10
    move-wide v11, v2

    .line 36
    :goto_9
    iget-object v9, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    iget-boolean v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBv:Z

    if-eqz v1, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    invoke-virtual/range {v9 .. v14}, Lcom/kwad/framework/filedownloader/download/d;->a(ZJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/List;J)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBA:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_0
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v4

    .line 5
    sget-boolean v5, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    new-array v5, v6, [Ljava/lang/Object;

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v7

    const-string v10, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]"

    .line 7
    invoke-static {v0, v10, v5}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-boolean v5, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v11, 0x0

    move-wide v13, v11

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kwad/framework/filedownloader/d/a;

    .line 10
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CU()J

    move-result-wide v16

    cmp-long v18, v16, v11

    if-nez v18, :cond_2

    .line 11
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CT()J

    move-result-wide v16

    sub-long v16, p2, v16

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CU()J

    move-result-wide v16

    .line 13
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CT()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    :goto_2
    move-wide/from16 v25, v16

    .line 14
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CT()J

    move-result-wide v16

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->getStartOffset()J

    move-result-wide v18

    sub-long v16, v16, v18

    add-long v13, v13, v16

    cmp-long v16, v25, v11

    if-nez v16, :cond_3

    .line 15
    sget-boolean v16, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v16, :cond_6

    new-array v11, v7, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->getIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "pass connection[%d-%d], because it has been completed"

    .line 17
    invoke-static {v0, v12, v11}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 18
    :cond_3
    new-instance v11, Lcom/kwad/framework/filedownloader/download/c$a;

    invoke-direct {v11}, Lcom/kwad/framework/filedownloader/download/c$a;-><init>()V

    .line 19
    new-instance v12, Lcom/kwad/framework/filedownloader/download/a;

    .line 20
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->getStartOffset()J

    move-result-wide v19

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CT()J

    move-result-wide v21

    .line 21
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->CU()J

    move-result-wide v23

    move-object/from16 v18, v12

    invoke-direct/range {v18 .. v26}, Lcom/kwad/framework/filedownloader/download/a;-><init>(JJJJ)V

    .line 22
    invoke-virtual {v11, v1}, Lcom/kwad/framework/filedownloader/download/c$a;->cL(I)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v11

    .line 23
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/a;->getIndex()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/kwad/framework/filedownloader/download/c$a;->i(Ljava/lang/Integer;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    .line 24
    invoke-virtual {v6, v0}, Lcom/kwad/framework/filedownloader/download/c$a;->a(Lcom/kwad/framework/filedownloader/download/f;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    .line 25
    invoke-virtual {v6, v3}, Lcom/kwad/framework/filedownloader/download/c$a;->cb(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    if-eqz v5, :cond_4

    move-object v11, v2

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 26
    :goto_3
    invoke-virtual {v6, v11}, Lcom/kwad/framework/filedownloader/download/c$a;->cc(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    iget-object v11, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBj:Lcom/kwad/framework/filedownloader/d/b;

    .line 27
    invoke-virtual {v6, v11}, Lcom/kwad/framework/filedownloader/download/c$a;->c(Lcom/kwad/framework/filedownloader/d/b;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    iget-boolean v11, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBl:Z

    .line 28
    invoke-virtual {v6, v11}, Lcom/kwad/framework/filedownloader/download/c$a;->bv(Z)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    .line 29
    invoke-virtual {v6, v12}, Lcom/kwad/framework/filedownloader/download/c$a;->b(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    .line 30
    invoke-virtual {v6, v4}, Lcom/kwad/framework/filedownloader/download/c$a;->cd(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/c$a;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/download/c$a;->Cr()Lcom/kwad/framework/filedownloader/download/c;

    move-result-object v6

    .line 32
    sget-boolean v11, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v11, :cond_5

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v15, v11, v9

    const-string v12, "enable multiple connection: %s"

    .line 33
    invoke-static {v0, v12, v11}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_5
    iget-object v11, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    const/4 v6, 0x3

    const-wide/16 v11, 0x0

    goto/16 :goto_1

    .line 35
    :cond_7
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v2

    cmp-long v4, v13, v2

    if-eqz v4, :cond_8

    new-array v2, v7, [Ljava/lang/Object;

    .line 36
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 37
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "correct the sofar[%d] from connection table[%d]"

    .line 38
    invoke-static {v0, v3, v2}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v2, v13, v14}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 40
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwad/framework/filedownloader/download/c;

    .line 42
    iget-boolean v5, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    if-eqz v5, :cond_9

    .line 43
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/c;->pause()V

    goto :goto_5

    .line 44
    :cond_9
    invoke-static {v4}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 45
    :cond_a
    iget-boolean v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    if-eqz v3, :cond_b

    .line 46
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    return-void

    .line 47
    :cond_b
    sget-object v3, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/AbstractExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 48
    sget-boolean v3, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v3, :cond_c

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v7

    const-string v3, "finish sub-task for [%d] %B %B"

    .line 51
    invoke-static {v0, v3, v5}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    return-void
.end method

.method private d(JI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    int-to-long v4, v3

    .line 8
    div-long v4, v1, v4

    .line 9
    .line 10
    iget-object v6, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v8, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    move-wide v11, v8

    .line 25
    :goto_0
    if-ge v10, v3, :cond_1

    .line 26
    .line 27
    add-int/lit8 v13, v3, -0x1

    .line 28
    .line 29
    if-ne v10, v13, :cond_0

    .line 30
    .line 31
    move-wide v13, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-long v13, v11, v4

    .line 34
    .line 35
    const-wide/16 v15, 0x1

    .line 36
    .line 37
    sub-long/2addr v13, v15

    .line 38
    :goto_1
    new-instance v15, Lcom/kwad/framework/filedownloader/d/a;

    .line 39
    .line 40
    invoke-direct {v15}, Lcom/kwad/framework/filedownloader/d/a;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v15, v6}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v15, v10}, Lcom/kwad/framework/filedownloader/d/a;->setIndex(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v11, v12}, Lcom/kwad/framework/filedownloader/d/a;->setStartOffset(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v15, v11, v12}, Lcom/kwad/framework/filedownloader/d/a;->ad(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v15, v13, v14}, Lcom/kwad/framework/filedownloader/d/a;->ae(J)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v13, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 62
    .line 63
    invoke-interface {v13, v15}, Lcom/kwad/framework/filedownloader/b/a;->a(Lcom/kwad/framework/filedownloader/d/a;)V

    .line 64
    .line 65
    .line 66
    add-long/2addr v11, v4

    .line 67
    add-int/lit8 v10, v10, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 76
    .line 77
    invoke-interface {v4, v6, v3}, Lcom/kwad/framework/filedownloader/b/a;->w(II)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v7, v1, v2}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/util/List;J)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private x(Ljava/util/List;)Lcom/kwad/framework/filedownloader/download/a;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;)",
            "Lcom/kwad/framework/filedownloader/download/a;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-le v1, v5, :cond_0

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v6, 0x0

    .line 28
    :goto_0
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    iget-boolean v9, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBp:Z

    .line 33
    .line 34
    if-eqz v9, :cond_4

    .line 35
    .line 36
    :cond_1
    iget-object v9, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    iget-object v10, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 43
    .line 44
    invoke-static {v9, v10}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/d/c;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_4

    .line 49
    .line 50
    iget-boolean v9, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBp:Z

    .line 51
    .line 52
    if-nez v9, :cond_2

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    :goto_1
    move-wide v14, v9

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    if-eqz v6, :cond_3

    .line 66
    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ne v1, v6, :cond_4

    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lcom/kwad/framework/filedownloader/d/a;->y(Ljava/util/List;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-wide v14, v7

    .line 86
    :goto_2
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 87
    .line 88
    invoke-virtual {v1, v14, v15}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 89
    .line 90
    .line 91
    cmp-long v1, v14, v7

    .line 92
    .line 93
    if-lez v1, :cond_5

    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    :cond_5
    iput-boolean v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    .line 97
    .line 98
    if-nez v4, :cond_6

    .line 99
    .line 100
    iget-object v1, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 101
    .line 102
    iget-object v4, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-interface {v1, v4}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v2}, Lcom/kwad/framework/filedownloader/f/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    new-instance v1, Lcom/kwad/framework/filedownloader/download/a;

    .line 115
    .line 116
    const-wide/16 v12, 0x0

    .line 117
    .line 118
    const-wide/16 v16, 0x0

    .line 119
    .line 120
    iget-object v2, v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    sub-long v18, v2, v14

    .line 127
    .line 128
    move-object v11, v1

    .line 129
    invoke-direct/range {v11 .. v19}, Lcom/kwad/framework/filedownloader/download/a;-><init>(JJJJ)V

    .line 130
    .line 131
    .line 132
    return-object v1
.end method


# virtual methods
.method public final Ck()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/b/a;->cD(I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/d/a;->y(Ljava/util/List;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/d;->Ct()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final Cm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/framework/filedownloader/b/a;->b(IJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Cp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/download/c;JJ)V
    .locals 10

    .line 67
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 68
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_0

    const-string p1, "the task[%d] has already been paused, so pass the completed callback"

    new-array p2, v2, [Ljava/lang/Object;

    .line 69
    iget-object p3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 70
    invoke-virtual {p3}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    .line 71
    invoke-static {p0, p1, p2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 72
    :cond_2
    iget v0, p1, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 73
    :goto_0
    sget-boolean v3, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_3

    const-string v3, "the connection has been completed(%d): [%d, %d)  %d"

    new-array v7, v6, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    .line 75
    invoke-static {p0, v3, v7}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_3
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBs:Z

    if-eqz v0, :cond_5

    const-wide/16 v7, 0x0

    cmp-long p1, p2, v7

    if-eqz p1, :cond_4

    .line 77
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide v7

    cmp-long p1, p4, v7

    if-eqz p1, :cond_4

    const-string p1, "the single task not completed corrected(%d, %d != %d) for task(%d)"

    new-array v0, v6, [Ljava/lang/Object;

    .line 78
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v5

    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    .line 79
    invoke-static {p0, p1, v0}, Lcom/kwad/framework/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 80
    :cond_5
    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    monitor-enter p2

    .line 81
    :try_start_0
    iget-object p3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Exception;J)V
    .locals 4

    .line 92
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 93
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 94
    iget-object p2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 95
    invoke-virtual {p2}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "the task[%d] has already been paused, so pass the retry callback"

    .line 96
    invoke-static {p0, p2, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBo:I

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBo:I

    if-gez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "valid retry times is less than 0(%d) for download task(%d)"

    .line 99
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    iget v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBo:I

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/kwad/framework/filedownloader/download/d;->a(Ljava/lang/Exception;IJ)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 3

    .line 83
    instance-of v0, p1, Lcom/kwad/framework/filedownloader/exception/FileDownloadHttpException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/kwad/framework/filedownloader/exception/FileDownloadHttpException;

    .line 85
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/exception/FileDownloadHttpException;->getCode()I

    move-result v0

    .line 86
    iget-boolean v2, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBs:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBn:Z

    if-nez v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 89
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/framework/filedownloader/f/f;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-boolean v1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBn:Z

    return v1

    .line 91
    :cond_0
    iget v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBo:I

    if-lez v0, :cond_1

    instance-of p1, p1, Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException;

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 53
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBz:Ljava/lang/Exception;

    .line 54
    iget-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    if-eqz p1, :cond_1

    .line 55
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 57
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "the task[%d] has already been paused, so pass the error callback"

    .line 58
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/framework/filedownloader/download/c;

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/c;->Bw()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBx:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/d;->isAlive()Z

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

.method public final onProgress(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/kwad/framework/filedownloader/download/d;->onProgress(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBr:Lcom/kwad/framework/filedownloader/download/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/e;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBq:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/kwad/framework/filedownloader/download/c;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/download/c;->pause()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/16 v2, 0xa

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 12
    .line 13
    .line 14
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    const-string v4, "High concurrent cause, start runnable but already paused %d"

    .line 16
    .line 17
    const/4 v5, -0x2

    .line 18
    const/4 v6, 0x1

    .line 19
    if-eq v2, v6, :cond_4

    .line 20
    .line 21
    :try_start_1
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v2, v5, :cond_0

    .line 28
    .line 29
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-array v2, v6, [Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v5, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    aput-object v5, v2, v3

    .line 46
    .line 47
    invoke-static {v1, v4, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string v4, "Task[%d] can\'t start the download runnable, because its status is %d not %d"

    .line 54
    .line 55
    const/4 v5, 0x3

    .line 56
    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v7, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 59
    .line 60
    invoke-virtual {v7}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    aput-object v7, v5, v3

    .line 69
    .line 70
    iget-object v7, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    aput-object v7, v5, v6

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    const/4 v7, 0x2

    .line 87
    aput-object v6, v5, v7

    .line 88
    .line 89
    invoke-static {v4, v5}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 102
    .line 103
    .line 104
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    :goto_1
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cw()V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_2
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 115
    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    :goto_2
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 119
    .line 120
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBz:Ljava/lang/Exception;

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Lcom/kwad/framework/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :catch_0
    move-exception v0

    .line 133
    move-object v2, v0

    .line 134
    :goto_3
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 135
    .line 136
    invoke-virtual {v4, v2}, Lcom/kwad/framework/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    :goto_4
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    :try_start_3
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cu()V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_5
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 159
    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    new-array v2, v6, [Ljava/lang/Object;

    .line 163
    .line 164
    iget-object v5, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    aput-object v5, v2, v3

    .line 175
    .line 176
    invoke-static {v1, v4, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 182
    .line 183
    .line 184
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 185
    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 190
    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_8
    :try_start_4
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_1
    move-exception v0

    .line 201
    move-object v2, v0

    .line 202
    goto :goto_3

    .line 203
    :cond_9
    :try_start_5
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 204
    .line 205
    if-eqz v2, :cond_1e

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->Cn()V

    .line 209
    .line 210
    .line 211
    iget-object v7, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 212
    .line 213
    iget-object v8, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 214
    .line 215
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-interface {v7, v8}, Lcom/kwad/framework/filedownloader/b/a;->cD(I)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-direct {v1, v7}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->x(Ljava/util/List;)Lcom/kwad/framework/filedownloader/download/a;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    new-instance v9, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 228
    .line 229
    invoke-direct {v9}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 233
    .line 234
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {v9, v10}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->cK(I)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-virtual {v9, v10}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->bY(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 253
    .line 254
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->CY()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v9, v10}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->bZ(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBj:Lcom/kwad/framework/filedownloader/d/b;

    .line 263
    .line 264
    invoke-virtual {v9, v10}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->a(Lcom/kwad/framework/filedownloader/d/b;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v9, v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->a(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/ConnectTask$a;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask$a;->BZ()Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BV()Lcom/kwad/framework/filedownloader/a/b;

    .line 277
    .line 278
    .line 279
    move-result-object v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 280
    :try_start_7
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-direct {v1, v10, v8, v9}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/util/Map;Lcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/a/b;)V

    .line 285
    .line 286
    .line 287
    iget-boolean v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 288
    .line 289
    if-eqz v10, :cond_d

    .line 290
    .line 291
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 292
    .line 293
    invoke-virtual {v2, v5}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 294
    .line 295
    .line 296
    if-eqz v9, :cond_a

    .line 297
    .line 298
    :try_start_8
    invoke-interface {v9}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 299
    .line 300
    .line 301
    :cond_a
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 304
    .line 305
    .line 306
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 307
    .line 308
    if-eqz v2, :cond_b

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_b
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 313
    .line 314
    if-eqz v2, :cond_c

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    :cond_c
    :try_start_9
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 321
    .line 322
    .line 323
    goto/16 :goto_4

    .line 324
    .line 325
    :catch_2
    move-exception v0

    .line 326
    move-object v2, v0

    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :cond_d
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->Co()V

    .line 330
    .line 331
    .line 332
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 333
    .line 334
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 335
    .line 336
    .line 337
    move-result-wide v14

    .line 338
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 339
    .line 340
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-direct {v1, v14, v15, v10}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(JLjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->Cl()Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_f

    .line 352
    .line 353
    iget-boolean v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    .line 354
    .line 355
    if-eqz v10, :cond_e

    .line 356
    .line 357
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 358
    .line 359
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    move-wide/from16 v17, v14

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_e
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 371
    .line 372
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 377
    .line 378
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    iget-object v10, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 383
    .line 384
    invoke-virtual {v10}, Lcom/kwad/framework/filedownloader/d/c;->getPath()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    move-wide/from16 v17, v14

    .line 389
    .line 390
    move-object v14, v10

    .line 391
    move-wide/from16 v15, v17

    .line 392
    .line 393
    invoke-virtual/range {v11 .. v16}, Lcom/kwad/framework/filedownloader/download/b;->a(ILjava/lang/String;Ljava/lang/String;J)I

    .line 394
    .line 395
    .line 396
    move-result v10

    .line 397
    goto :goto_6

    .line 398
    :cond_f
    move-wide/from16 v17, v14

    .line 399
    .line 400
    const/4 v10, 0x1

    .line 401
    :goto_6
    if-lez v10, :cond_18

    .line 402
    .line 403
    iget-boolean v11, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 404
    .line 405
    if-eqz v11, :cond_13

    .line 406
    .line 407
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 408
    .line 409
    invoke-virtual {v2, v5}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 410
    .line 411
    .line 412
    if-eqz v9, :cond_10

    .line 413
    .line 414
    :try_start_b
    invoke-interface {v9}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 415
    .line 416
    .line 417
    :cond_10
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 420
    .line 421
    .line 422
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 423
    .line 424
    if-eqz v2, :cond_11

    .line 425
    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :cond_11
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 429
    .line 430
    if-eqz v2, :cond_12

    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :cond_12
    :try_start_c
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 437
    .line 438
    .line 439
    goto/16 :goto_4

    .line 440
    .line 441
    :catch_3
    move-exception v0

    .line 442
    move-object v2, v0

    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    :cond_13
    if-ne v10, v6, :cond_14

    .line 446
    .line 447
    const/4 v11, 0x1

    .line 448
    goto :goto_7

    .line 449
    :cond_14
    const/4 v11, 0x0

    .line 450
    :goto_7
    :try_start_d
    iput-boolean v11, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBs:Z

    .line 451
    .line 452
    if-eqz v11, :cond_15

    .line 453
    .line 454
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-direct {v1, v2, v9}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(Lcom/kwad/framework/filedownloader/download/a;Lcom/kwad/framework/filedownloader/a/b;)V

    .line 459
    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_15
    if-eqz v9, :cond_16

    .line 463
    .line 464
    invoke-interface {v9}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 465
    .line 466
    .line 467
    goto :goto_8

    .line 468
    :cond_16
    move-object v2, v9

    .line 469
    :goto_8
    :try_start_e
    iget-object v8, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 470
    .line 471
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/d;->Cv()V

    .line 472
    .line 473
    .line 474
    iget-boolean v8, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBu:Z

    .line 475
    .line 476
    if-eqz v8, :cond_17

    .line 477
    .line 478
    invoke-direct {v1, v10, v7}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(ILjava/util/List;)V

    .line 479
    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_17
    move-wide/from16 v7, v17

    .line 483
    .line 484
    invoke-direct {v1, v7, v8, v10}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->d(JI)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_13
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_10
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 485
    .line 486
    .line 487
    :goto_9
    move-object v9, v2

    .line 488
    :goto_a
    if-eqz v9, :cond_1e

    .line 489
    .line 490
    :try_start_f
    invoke-interface {v9}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 491
    .line 492
    .line 493
    goto/16 :goto_12

    .line 494
    .line 495
    :catch_4
    nop

    .line 496
    goto :goto_e

    .line 497
    :cond_18
    :try_start_10
    new-instance v2, Ljava/lang/IllegalAccessException;

    .line 498
    .line 499
    const-string v7, "invalid connection count %d, the connection count must be larger than 0"

    .line 500
    .line 501
    new-array v8, v6, [Ljava/lang/Object;

    .line 502
    .line 503
    aput-object v9, v8, v3

    .line 504
    .line 505
    invoke-static {v7, v8}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-direct {v2, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$DiscardSafely; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$RetryDirectly; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 513
    :catchall_0
    move-exception v0

    .line 514
    move-object v4, v0

    .line 515
    move-object v2, v9

    .line 516
    goto/16 :goto_11

    .line 517
    .line 518
    :catch_5
    move-object v2, v9

    .line 519
    goto :goto_c

    .line 520
    :catch_6
    nop

    .line 521
    move-object v2, v9

    .line 522
    goto :goto_e

    .line 523
    :catch_7
    move-exception v0

    .line 524
    goto :goto_b

    .line 525
    :catch_8
    move-exception v0

    .line 526
    goto :goto_b

    .line 527
    :catch_9
    move-exception v0

    .line 528
    goto :goto_b

    .line 529
    :catch_a
    move-exception v0

    .line 530
    goto :goto_b

    .line 531
    :catch_b
    move-exception v0

    .line 532
    goto :goto_b

    .line 533
    :catch_c
    move-exception v0

    .line 534
    goto :goto_b

    .line 535
    :catch_d
    move-exception v0

    .line 536
    :goto_b
    move-object v7, v0

    .line 537
    move-object v2, v9

    .line 538
    goto :goto_10

    .line 539
    :catchall_1
    move-exception v0

    .line 540
    move-object v4, v0

    .line 541
    goto :goto_11

    .line 542
    :catch_e
    :goto_c
    :try_start_11
    iget-object v7, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBi:Lcom/kwad/framework/filedownloader/d/c;

    .line 543
    .line 544
    const/4 v8, 0x5

    .line 545
    invoke-virtual {v7, v8}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 546
    .line 547
    .line 548
    if-eqz v2, :cond_5

    .line 549
    .line 550
    :goto_d
    :try_start_12
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :goto_e
    if-eqz v2, :cond_19

    .line 556
    .line 557
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 558
    .line 559
    .line 560
    :cond_19
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 561
    .line 562
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 563
    .line 564
    .line 565
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 566
    .line 567
    if-eqz v2, :cond_1a

    .line 568
    .line 569
    goto/16 :goto_1

    .line 570
    .line 571
    :cond_1a
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 572
    .line 573
    if-eqz v2, :cond_1b

    .line 574
    .line 575
    goto/16 :goto_2

    .line 576
    .line 577
    :cond_1b
    :try_start_13
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 578
    .line 579
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 580
    .line 581
    .line 582
    goto/16 :goto_4

    .line 583
    .line 584
    :catch_f
    move-exception v0

    .line 585
    move-object v2, v0

    .line 586
    goto/16 :goto_3

    .line 587
    .line 588
    :catch_10
    move-exception v0

    .line 589
    goto :goto_f

    .line 590
    :catch_11
    move-exception v0

    .line 591
    goto :goto_f

    .line 592
    :catch_12
    move-exception v0

    .line 593
    goto :goto_f

    .line 594
    :catch_13
    move-exception v0

    .line 595
    goto :goto_f

    .line 596
    :catch_14
    move-exception v0

    .line 597
    goto :goto_f

    .line 598
    :catch_15
    move-exception v0

    .line 599
    goto :goto_f

    .line 600
    :catch_16
    move-exception v0

    .line 601
    :goto_f
    move-object v7, v0

    .line 602
    :goto_10
    :try_start_14
    invoke-virtual {v1, v7}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;)Z

    .line 603
    .line 604
    .line 605
    move-result v8

    .line 606
    if-eqz v8, :cond_1c

    .line 607
    .line 608
    const-wide/16 v8, 0x0

    .line 609
    .line 610
    invoke-virtual {v1, v7, v8, v9}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->a(Ljava/lang/Exception;J)V

    .line 611
    .line 612
    .line 613
    if-eqz v2, :cond_5

    .line 614
    .line 615
    goto :goto_d

    .line 616
    :cond_1c
    invoke-virtual {v1, v7}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->b(Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 617
    .line 618
    .line 619
    if-eqz v2, :cond_1e

    .line 620
    .line 621
    :try_start_15
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 622
    .line 623
    .line 624
    goto :goto_12

    .line 625
    :goto_11
    if-eqz v2, :cond_1d

    .line 626
    .line 627
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 628
    .line 629
    .line 630
    :cond_1d
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 631
    :cond_1e
    :goto_12
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 632
    .line 633
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 634
    .line 635
    .line 636
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 637
    .line 638
    if-eqz v2, :cond_1f

    .line 639
    .line 640
    goto/16 :goto_1

    .line 641
    .line 642
    :cond_1f
    iget-boolean v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 643
    .line 644
    if-eqz v2, :cond_20

    .line 645
    .line 646
    goto/16 :goto_2

    .line 647
    .line 648
    :cond_20
    :try_start_16
    iget-object v2, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 649
    .line 650
    invoke-virtual {v2}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_17

    .line 651
    .line 652
    .line 653
    goto/16 :goto_4

    .line 654
    .line 655
    :catch_17
    move-exception v0

    .line 656
    move-object v2, v0

    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :catchall_2
    move-exception v0

    .line 660
    move-object v2, v0

    .line 661
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 662
    .line 663
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/d;->Cs()V

    .line 664
    .line 665
    .line 666
    iget-boolean v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->nJ:Z

    .line 667
    .line 668
    if-nez v4, :cond_22

    .line 669
    .line 670
    iget-boolean v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBy:Z

    .line 671
    .line 672
    if-eqz v4, :cond_21

    .line 673
    .line 674
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 675
    .line 676
    iget-object v5, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBz:Ljava/lang/Exception;

    .line 677
    .line 678
    invoke-virtual {v4, v5}, Lcom/kwad/framework/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    .line 679
    .line 680
    .line 681
    goto :goto_13

    .line 682
    :cond_21
    :try_start_17
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 683
    .line 684
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/d;->Cx()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_18

    .line 685
    .line 686
    .line 687
    goto :goto_13

    .line 688
    :catch_18
    move-exception v0

    .line 689
    move-object v4, v0

    .line 690
    iget-object v5, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 691
    .line 692
    invoke-virtual {v5, v4}, Lcom/kwad/framework/filedownloader/download/d;->c(Ljava/lang/Exception;)V

    .line 693
    .line 694
    .line 695
    goto :goto_13

    .line 696
    :cond_22
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBg:Lcom/kwad/framework/filedownloader/download/d;

    .line 697
    .line 698
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/d;->Cw()V

    .line 699
    .line 700
    .line 701
    :goto_13
    iget-object v4, v1, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;->aBx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 702
    .line 703
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 704
    .line 705
    .line 706
    throw v2
.end method
