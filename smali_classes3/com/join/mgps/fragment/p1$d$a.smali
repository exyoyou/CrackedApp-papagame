.class Lcom/join/mgps/fragment/p1$d$a;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p1$d;->z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/DownloadNormalView;

.field final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic d:Lcom/join/mgps/fragment/p1$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p1$d;Lcom/join/mgps/customview/DownloadNormalView;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$dv_view",
            "val$item"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p1$d$a;->d:Lcom/join/mgps/fragment/p1$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/p1$d$a;->b:Lcom/join/mgps/customview/DownloadNormalView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/p1$d$a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "objects"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$a;->b:Lcom/join/mgps/customview/DownloadNormalView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$d$a;->d:Lcom/join/mgps/fragment/p1$d;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/fragment/p1$d;->h:Lcom/join/mgps/fragment/p1;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$d$a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onClickCover()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/callbacks/w;->onClickCover()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$d$a;->b:Lcom/join/mgps/customview/DownloadNormalView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/p1$d$a;->d:Lcom/join/mgps/fragment/p1$d;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/fragment/p1$d;->h:Lcom/join/mgps/fragment/p1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/fragment/p1$d$a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
