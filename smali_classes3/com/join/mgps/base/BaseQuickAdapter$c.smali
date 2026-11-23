.class Lcom/join/mgps/base/BaseQuickAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->k(Landroid/view/ViewGroup;)Lcom/join/mgps/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;)V
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
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$200(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/base/c;->e()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->notifyLoadMoreToLoading()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$300(Lcom/join/mgps/base/BaseQuickAdapter;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$200(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/base/c;->e()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v0, 0x4

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$c;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->notifyLoadMoreToLoading()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
