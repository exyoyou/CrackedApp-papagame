.class Lcom/join/mgps/adapter/d2$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/d2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/d2;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->y(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goQQGroup(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "\u5df2\u590d\u5236QQ\u53f7\uff0c\u8bf7\u5b89\u88c5QQ\u540e\u7c98\u8d34\u641c\u7d22"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/adapter/d2;->g(Lcom/join/mgps/adapter/d2;)Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/join/mgps/adapter/d2$c0;->b:Lcom/join/mgps/adapter/d2;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/adapter/d2;->f(Lcom/join/mgps/adapter/d2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method
