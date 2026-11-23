.class public final synthetic Lcom/sigmob/sdk/base/common/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/common/an$3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/sigmob/sdk/base/common/am;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/s0;->b:Lcom/sigmob/sdk/base/common/an$3;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/s0;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/s0;->d:Lcom/sigmob/sdk/base/common/am;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s0;->b:Lcom/sigmob/sdk/base/common/an$3;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/s0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/s0;->d:Lcom/sigmob/sdk/base/common/am;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/an$3;->d(Lcom/sigmob/sdk/base/common/an$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method
