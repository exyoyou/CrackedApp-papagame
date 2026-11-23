.class Lcom/kongzue/dialogx/dialogs/i$h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$g;->b:Lcom/kongzue/dialogx/dialogs/i$h;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$g;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$g;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$h$g$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$h$g$a;-><init>(Lcom/kongzue/dialogx/dialogs/i$h$g;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$g;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/i$h;->g(Landroid/view/animation/Animation;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/i;->G1(Ljava/lang/Runnable;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
