.class Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/network/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/cloudplay/messagesdk/network/volley/VolleyError;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->b:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    return-void
.end method

.method static synthetic a(Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)Lcom/cloudplay/messagesdk/network/volley/VolleyError;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->b:Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
