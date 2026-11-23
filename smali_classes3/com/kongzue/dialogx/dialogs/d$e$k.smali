.class Lcom/kongzue/dialogx/dialogs/d$e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/d$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$k;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$k;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$k;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d;->h1(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
