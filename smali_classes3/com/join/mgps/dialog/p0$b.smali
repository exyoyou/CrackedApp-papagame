.class Lcom/join/mgps/dialog/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/p0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/p0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/p0;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/p0$b;->b:Lcom/join/mgps/dialog/p0;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/p0$b;->b:Lcom/join/mgps/dialog/p0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/p0;->a(Lcom/join/mgps/dialog/p0;)Lcom/join/mgps/dialog/p0$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/p0$b;->b:Lcom/join/mgps/dialog/p0;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/dialog/p0;->a(Lcom/join/mgps/dialog/p0;)Lcom/join/mgps/dialog/p0$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/p0$b;->b:Lcom/join/mgps/dialog/p0;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/p0$c;->b(Lcom/join/mgps/dialog/p0;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/p0$b;->b:Lcom/join/mgps/dialog/p0;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
