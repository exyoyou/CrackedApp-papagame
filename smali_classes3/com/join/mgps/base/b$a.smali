.class Lcom/join/mgps/base/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/b;->addOnClickListener([I)Lcom/join/mgps/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/base/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/b;)V
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
    iput-object p1, p0, Lcom/join/mgps/base/b$a;->b:Lcom/join/mgps/base/b;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/b$a;->b:Lcom/join/mgps/base/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/base/b;->access$000(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemChildClickListener()Lcom/join/mgps/base/BaseQuickAdapter$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/base/b$a;->b:Lcom/join/mgps/base/b;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/base/b;->access$000(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getOnItemChildClickListener()Lcom/join/mgps/base/BaseQuickAdapter$h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/base/b$a;->b:Lcom/join/mgps/base/b;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/mgps/base/b;->access$000(Lcom/join/mgps/base/b;)Lcom/join/mgps/base/BaseQuickAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/join/mgps/base/b$a;->b:Lcom/join/mgps/base/b;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/join/mgps/base/b;->access$100(Lcom/join/mgps/base/b;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-interface {v0, v1, p1, v2}, Lcom/join/mgps/base/BaseQuickAdapter$h;->onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
