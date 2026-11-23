.class public final Lcom/join/mgps/dto/HomeCloudActiveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020BJ\u0006\u0010C\u001a\u00020BJ\u0006\u0010D\u001a\u00020,J\u0006\u0010E\u001a\u00020,J\u0006\u0010F\u001a\u00020\u0011J\u0006\u0010G\u001a\u00020BJ\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010L\u001a\u00020,2\u0008\u0010M\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010N\u001a\u00020\u0011H\u00d6\u0001J\t\u0010O\u001a\u00020?H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0013\"\u0004\u0008!\u0010\u0015R\u001a\u0010\"\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0013\"\u0004\u0008$\u0010\u0015R\u001a\u0010%\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0013\"\u0004\u0008\'\u0010\u0015R\u001a\u0010(\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0013\"\u0004\u0008*\u0010\u0015R\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010.\"\u0004\u00083\u00100R\u001a\u00104\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010.\"\u0004\u00086\u00100R\u001a\u00107\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\n\"\u0004\u00089\u0010:R\u001a\u0010;\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\n\"\u0004\u0008=\u0010:\u00a8\u0006P"
    }
    d2 = {
        "Lcom/join/mgps/dto/HomeCloudActiveBean;",
        "",
        "firstPlayExpireTime",
        "",
        "newGiftExpireTime",
        "adCfgInfo",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
        "<init>",
        "(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V",
        "getFirstPlayExpireTime",
        "()J",
        "getNewGiftExpireTime",
        "getAdCfgInfo",
        "()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
        "setAdCfgInfo",
        "(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V",
        "ngH",
        "",
        "getNgH",
        "()I",
        "setNgH",
        "(I)V",
        "ngM",
        "getNgM",
        "setNgM",
        "ngS",
        "getNgS",
        "setNgS",
        "fpH",
        "getFpH",
        "setFpH",
        "fpM",
        "getFpM",
        "setFpM",
        "fpS",
        "getFpS",
        "setFpS",
        "uiState",
        "getUiState",
        "setUiState",
        "curUiState",
        "getCurUiState",
        "setCurUiState",
        "giftEnd",
        "",
        "getGiftEnd",
        "()Z",
        "setGiftEnd",
        "(Z)V",
        "firstEnd",
        "getFirstEnd",
        "setFirstEnd",
        "explore",
        "getExplore",
        "setExplore",
        "fTime",
        "getFTime",
        "setFTime",
        "(J)V",
        "nTime",
        "getNTime",
        "setNTime",
        "format",
        "",
        "time",
        "reset",
        "",
        "start",
        "needShow",
        "endAll",
        "currentUIState",
        "calcTime",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curUiState:I

.field private explore:Z

.field private fTime:J

.field private firstEnd:Z

.field private final firstPlayExpireTime:J

.field private fpH:I

.field private fpM:I

.field private fpS:I

.field private giftEnd:Z

.field private nTime:J

.field private final newGiftExpireTime:J

.field private ngH:I

.field private ngM:I

.field private ngS:I

.field private uiState:I


# direct methods
.method public constructor <init>(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0
    .param p5    # Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    .line 3
    iput-wide p3, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    .line 4
    iput-object p5, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 5
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fTime:J

    .line 6
    iput-wide p3, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->nTime:J

    return-void
.end method

.method public synthetic constructor <init>(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p3

    :goto_1
    move-object v2, p0

    move-object v7, p5

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/dto/HomeCloudActiveBean;-><init>(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/mgps/dto/HomeCloudActiveBean;JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;ILjava/lang/Object;)Lcom/join/mgps/dto/HomeCloudActiveBean;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/dto/HomeCloudActiveBean;->copy(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)Lcom/join/mgps/dto/HomeCloudActiveBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calcTime()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    const/16 v6, 0x3c

    .line 9
    .line 10
    const/16 v7, 0xe10

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-wide v8, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->nTime:J

    .line 15
    .line 16
    int-to-long v10, v7

    .line 17
    div-long v10, v8, v10

    .line 18
    .line 19
    long-to-int v0, v10

    .line 20
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngH:I

    .line 21
    .line 22
    mul-int/lit16 v0, v0, 0xe10

    .line 23
    .line 24
    int-to-long v10, v0

    .line 25
    sub-long v10, v8, v10

    .line 26
    .line 27
    int-to-long v12, v6

    .line 28
    div-long/2addr v10, v12

    .line 29
    long-to-int v0, v10

    .line 30
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngM:I

    .line 31
    .line 32
    rem-long v10, v8, v12

    .line 33
    .line 34
    long-to-int v0, v10

    .line 35
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngS:I

    .line 36
    .line 37
    cmp-long v0, v8, v4

    .line 38
    .line 39
    if-gez v0, :cond_0

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 42
    .line 43
    :cond_0
    add-long/2addr v8, v2

    .line 44
    iput-wide v8, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->nTime:J

    .line 45
    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    iget-wide v8, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fTime:J

    .line 51
    .line 52
    int-to-long v10, v7

    .line 53
    div-long v10, v8, v10

    .line 54
    .line 55
    long-to-int v0, v10

    .line 56
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpH:I

    .line 57
    .line 58
    mul-int/lit16 v0, v0, 0xe10

    .line 59
    .line 60
    int-to-long v10, v0

    .line 61
    sub-long v10, v8, v10

    .line 62
    .line 63
    int-to-long v6, v6

    .line 64
    div-long/2addr v10, v6

    .line 65
    long-to-int v0, v10

    .line 66
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpM:I

    .line 67
    .line 68
    rem-long v6, v8, v6

    .line 69
    .line 70
    long-to-int v0, v6

    .line 71
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpS:I

    .line 72
    .line 73
    cmp-long v0, v8, v4

    .line 74
    .line 75
    if-gez v0, :cond_2

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 78
    .line 79
    :cond_2
    add-long/2addr v8, v2

    .line 80
    iput-wide v8, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fTime:J

    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    return-wide v0
.end method

.method public final component3()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    return-object v0
.end method

.method public final copy(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)Lcom/join/mgps/dto/HomeCloudActiveBean;
    .locals 7
    .param p5    # Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/join/mgps/dto/HomeCloudActiveBean;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dto/HomeCloudActiveBean;-><init>(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    return-object v6
.end method

.method public final currentUIState()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 29
    .line 30
    :goto_0
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 31
    .line 32
    return v0
.end method

.method public final endAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/mgps/dto/HomeCloudActiveBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/mgps/dto/HomeCloudActiveBean;

    iget-wide v3, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    iget-wide v5, p1, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    iget-wide v5, p1, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    iget-object p1, p1, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final format(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x30

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1
.end method

.method public final getAdCfgInfo()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurUiState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExplore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->explore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFirstEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFirstPlayExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFpH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpH:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFpM()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpM:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFpS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpS:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGiftEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->nTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNewGiftExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNgH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngH:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNgM()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngM:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNgS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngS:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUiState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->uiState:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    invoke-static {v0, v1}, Ls5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    invoke-static {v1, v2}, Ls5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final needShow()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->uiState:I

    .line 7
    .line 8
    iput v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 9
    .line 10
    return-void
.end method

.method public final setAdCfgInfo(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurUiState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->curUiState:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExplore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->explore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFpH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpH:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFpM(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpM:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFpS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->fpS:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGiftEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->nTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setNgH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngH:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNgM(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngM:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNgS(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->ngS:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUiState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->uiState:I

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v6, v0, v4

    .line 8
    .line 9
    if-gtz v6, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->giftEnd:Z

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    .line 17
    .line 18
    cmp-long v6, v0, v4

    .line 19
    .line 20
    if-gtz v6, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    iput-boolean v2, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstEnd:Z

    .line 25
    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeCloudActiveBean(firstPlayExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->firstPlayExpireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", newGiftExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->newGiftExpireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adCfgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/HomeCloudActiveBean;->adCfgInfo:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
