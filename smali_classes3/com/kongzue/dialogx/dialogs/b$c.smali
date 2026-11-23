.class Lcom/kongzue/dialogx/dialogs/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/b;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$c;->b:Lcom/kongzue/dialogx/dialogs/b;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b$c;->b:Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 4
    .line 5
    instance-of v2, v1, Lcom/kongzue/dialogx/util/c;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/kongzue/dialogx/dialogs/b;->o2:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/kongzue/dialogx/util/c;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/b;->R4()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/kongzue/dialogx/dialogs/b$c$a;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/b$c$a;-><init>(Lcom/kongzue/dialogx/dialogs/b$c;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
