.class Lcom/kongzue/dialogx/dialogs/n$h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/n$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$d;->b:Lcom/kongzue/dialogx/dialogs/n$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$d;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h$d;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$d;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 21
    .line 22
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->V0(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
