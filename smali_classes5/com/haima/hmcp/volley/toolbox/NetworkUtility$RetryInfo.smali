.class Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/toolbox/NetworkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryInfo"
.end annotation


# instance fields
.field private final errorToRetry:Lcom/haima/hmcp/volley/VolleyError;

.field private final logPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->logPrefix:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->errorToRetry:Lcom/haima/hmcp/volley/VolleyError;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/haima/hmcp/volley/VolleyError;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->errorToRetry:Lcom/haima/hmcp/volley/VolleyError;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->logPrefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
