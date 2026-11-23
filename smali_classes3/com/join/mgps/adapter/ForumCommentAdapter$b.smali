.class Lcom/join/mgps/adapter/ForumCommentAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumCommentAdapter;->m0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;

.field final synthetic c:Lcom/join/mgps/adapter/ForumCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    const-string v0, "v.setOnClickListener"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->g:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 54
    .line 55
    iget-boolean v0, v0, Lcom/join/mgps/adapter/ForumCommentAdapter;->r:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->b:Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;

    .line 69
    .line 70
    invoke-static {v0, p1, v2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->E(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;->c:Lcom/join/mgps/adapter/ForumCommentAdapter;

    .line 79
    .line 80
    iput-boolean v1, p1, Lcom/join/mgps/adapter/ForumCommentAdapter;->r:Z

    .line 81
    .line 82
    :goto_2
    return-void
.end method
