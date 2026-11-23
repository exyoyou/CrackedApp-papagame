.class Lcom/join/mgps/fragment/MyArchiveFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->P:Ljava/util/Iterator;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$m;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
