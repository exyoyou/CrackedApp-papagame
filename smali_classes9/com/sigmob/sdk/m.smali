.class public final synthetic Lcom/sigmob/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/utils/d$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sigmob/sdk/videoAd/m;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/m;->b:Lcom/sigmob/sdk/base/utils/d$a;

    iput-object p2, p0, Lcom/sigmob/sdk/m;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/m;->d:Lcom/sigmob/sdk/videoAd/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/m;->b:Lcom/sigmob/sdk/base/utils/d$a;

    iget-object v1, p0, Lcom/sigmob/sdk/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/m;->d:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/c$1;->g(Lcom/sigmob/sdk/base/utils/d$a;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/m;)V

    return-void
.end method
