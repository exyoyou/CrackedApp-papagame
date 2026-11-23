.class Lcom/sigmob/sdk/base/common/an$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/an;->b(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/base/common/am;

.field final synthetic c:Lcom/sigmob/sdk/base/common/an;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/an;Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalHandleUrL",
            "val$followDeepLink"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/an$4;->c:Lcom/sigmob/sdk/base/common/an;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/an$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/an$4;->b:Lcom/sigmob/sdk/base/common/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/an$4;->c:Lcom/sigmob/sdk/base/common/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/an;->b(Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/an$b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/an$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/an$4;->b:Lcom/sigmob/sdk/base/common/am;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/an$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/am;)V

    return-void
.end method
