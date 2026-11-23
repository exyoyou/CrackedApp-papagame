.class Lcom/join/mgps/dialog/b2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/b2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/b2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/b2;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2$a;->b:Lcom/join/mgps/dialog/b2;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/b2$a;->b:Lcom/join/mgps/dialog/b2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/dialog/b2;->a(Lcom/join/mgps/dialog/b2;)Lcom/join/mgps/dialog/b2$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/b2$a;->b:Lcom/join/mgps/dialog/b2;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/dialog/b2;->a(Lcom/join/mgps/dialog/b2;)Lcom/join/mgps/dialog/b2$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/b2$a;->b:Lcom/join/mgps/dialog/b2;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/b2$b;->b(Lcom/join/mgps/dialog/b2;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/b2$a;->b:Lcom/join/mgps/dialog/b2;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
