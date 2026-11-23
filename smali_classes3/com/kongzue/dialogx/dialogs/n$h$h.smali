.class Lcom/kongzue/dialogx/dialogs/n$h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->a(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

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
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/kongzue/dialogx/dialogs/n;->q1:Z

    .line 24
    .line 25
    new-instance v0, Lcom/kongzue/dialogx/dialogs/n$h$h$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/n$h$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/n$h$h;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/n$h;->g(Landroid/view/animation/Animation;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/n;->o1(Ljava/lang/Runnable;J)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h$h;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    .line 57
    sget-object v2, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/kongzue/dialogx/dialogs/n;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/n;->p1(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
