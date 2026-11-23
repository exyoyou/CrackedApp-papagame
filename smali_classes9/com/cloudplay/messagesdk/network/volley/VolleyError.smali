.class public Lcom/cloudplay/messagesdk/network/volley/VolleyError;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final networkResponse:Lcom/cloudplay/messagesdk/network/volley/f;

.field private networkTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->networkResponse:Lcom/cloudplay/messagesdk/network/volley/f;

    return-void
.end method

.method public constructor <init>(Lcom/cloudplay/messagesdk/network/volley/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->networkResponse:Lcom/cloudplay/messagesdk/network/volley/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->networkResponse:Lcom/cloudplay/messagesdk/network/volley/f;

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->networkTimeMs:J

    .line 2
    .line 3
    return-void
.end method
