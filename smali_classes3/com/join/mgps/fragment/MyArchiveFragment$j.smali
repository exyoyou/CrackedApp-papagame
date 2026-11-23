.class Lcom/join/mgps/fragment/MyArchiveFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->E0(Lcom/join/mgps/dto/CloudListDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$j;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public D(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$j;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public J(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$j;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->O:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->s0(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$j;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->I:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "\u5907\u4efd\u5931\u8d25"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/MyArchiveFragment;->showMessage(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
