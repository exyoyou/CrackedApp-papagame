.class Lcom/sigmob/sdk/base/views/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/c;->setDialogListener(Lcom/sigmob/sdk/base/views/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/c$a;

.field final synthetic b:Lcom/sigmob/sdk/base/views/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/c;Lcom/sigmob/sdk/base/views/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/c$2;->b:Lcom/sigmob/sdk/base/views/c;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/c$2;->a:Lcom/sigmob/sdk/base/views/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/c$2;->a:Lcom/sigmob/sdk/base/views/c$a;

    invoke-interface {p1}, Lcom/sigmob/sdk/base/views/c$a;->b()V

    return-void
.end method
