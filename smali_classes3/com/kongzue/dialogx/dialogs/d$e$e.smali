.class Lcom/kongzue/dialogx/dialogs/d$e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->init()V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->c:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    invoke-virtual {v1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/d$e;->k()Lcom/kongzue/dialogx/interfaces/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/d$e$e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/d;->Z:Lcom/kongzue/dialogx/dialogs/d;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/d$e;->l:Lcom/kongzue/dialogx/dialogs/d;

    .line 35
    .line 36
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/d;->t1(Lcom/kongzue/dialogx/dialogs/d;Landroidx/lifecycle/Lifecycle$State;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
