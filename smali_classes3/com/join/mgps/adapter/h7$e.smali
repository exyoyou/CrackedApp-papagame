.class Lcom/join/mgps/adapter/h7$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h7;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/h7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h7;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/h7$e;->b:Lcom/join/mgps/adapter/h7;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$e;->b:Lcom/join/mgps/adapter/h7;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/adapter/h7;->b(Lcom/join/mgps/adapter/h7;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "typeId"

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$e;->b:Lcom/join/mgps/adapter/h7;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/adapter/h7;->c(Lcom/join/mgps/adapter/h7;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "tagId"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$e;->b:Lcom/join/mgps/adapter/h7;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/adapter/h7;->d(Lcom/join/mgps/adapter/h7;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "tagName"

    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/adapter/h7$e;->b:Lcom/join/mgps/adapter/h7;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/join/mgps/adapter/h7;->b(Lcom/join/mgps/adapter/h7;)Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
