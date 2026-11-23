.class Lcom/sigmob/sdk/base/views/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/s;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/s;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/s$1;->a:Lcom/sigmob/sdk/base/views/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/s$1;->a:Lcom/sigmob/sdk/base/views/s;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/s;->a(Lcom/sigmob/sdk/base/views/s;)V

    return-void
.end method
