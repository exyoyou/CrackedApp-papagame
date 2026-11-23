.class Lcom/join/mgps/fragment/MyArchiveFragment$n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/MyArchiveFragment$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment$n;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$listDataBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hasSuccess",
            "dataBean"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/fragment/MyArchiveFragment;->J:Lcom/join/mgps/dialog/f1;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->a:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->k0(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$d;->b:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "\u5907\u4efd\u5931\u8d25"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
