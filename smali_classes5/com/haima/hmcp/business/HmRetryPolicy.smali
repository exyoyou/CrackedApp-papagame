.class public Lcom/haima/hmcp/business/HmRetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/RetryPolicy;
.implements Lcom/haima/hmcp/business/IRetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f


# instance fields
.field public DEFAULT_COMMON_MAX_RETRIES:I

.field public DEFAULT_COMMON_TIMEOUT_MS:I

.field public DEFAULT_CUSTOMT_MAX_RETRIES:I

.field public DEFAULT_CUSTOM_TIMEOUT_MS:I

.field public final TAG:Ljava/lang/String;

.field private configSplit:[Ljava/lang/String;

.field private mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private mMaxNumRetries:I

.field private retryConfig:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIF)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_TIMEOUT_MS:I

    .line 20
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOM_TIMEOUT_MS:I

    const/4 v0, 0x6

    .line 21
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_MAX_RETRIES:I

    .line 22
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOMT_MAX_RETRIES:I

    .line 23
    iput p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 24
    iput p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 25
    iput p3, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mBackoffMultiplier:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    const/16 v1, 0x2710

    .line 3
    iput v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_TIMEOUT_MS:I

    .line 4
    iput v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOM_TIMEOUT_MS:I

    const/4 v1, 0x6

    .line 5
    iput v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_MAX_RETRIES:I

    .line 6
    iput v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOMT_MAX_RETRIES:I

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->retryConfig:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/HmRetryPolicy;->parseConfig(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 10
    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOM_TIMEOUT_MS:I

    iput p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 11
    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_CUSTOMT_MAX_RETRIES:I

    iput p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 12
    iput p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mBackoffMultiplier:F

    goto :goto_0

    .line 13
    :cond_1
    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_TIMEOUT_MS:I

    iput p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 14
    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->DEFAULT_COMMON_MAX_RETRIES:I

    iput p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 15
    iput p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mBackoffMultiplier:F

    .line 16
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HmRetryPolicy mMaxNumRetries:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentTimeoutMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mBackoffMultiplier: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mBackoffMultiplier:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->configSplit:[Ljava/lang/String;

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    aget-object p1, p1, v0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    mul-int/lit16 p1, p1, 0x3e8

    .line 20
    .line 21
    iput p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "parseConfig mMaxNumRetries:"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " mCurrentTimeoutMs: "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 2
    .line 3
    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mMaxNumRetries:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public retry(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/VolleyError;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->retryConfig:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->configSplit:[Ljava/lang/String;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    iget v2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    if-lt v1, v3, :cond_0

    .line 23
    .line 24
    :try_start_0
    aget-object v0, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    mul-int/lit16 v0, v0, 0x3e8

    .line 31
    .line 32
    iput v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "retry mCurrentRetryCount:"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentRetryCount:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " mCurrentTimeoutMs: "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->mCurrentTimeoutMs:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/business/HmRetryPolicy;->hasAttemptRemaining()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "retry  again"

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmRetryPolicy;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string v1, "retry  max count"

    .line 90
    .line 91
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method
