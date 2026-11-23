.class Lcom/join/mgps/dialog/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/a0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a0$b;->b:Lcom/join/mgps/dialog/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/a0$b;->b:Lcom/join/mgps/dialog/a0;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/dialog/a0;->n:Lcom/join/mgps/dialog/a0$c;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/a0$c;->a(Lcom/join/mgps/dialog/a0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
