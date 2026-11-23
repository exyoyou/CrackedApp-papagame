.class Lcom/join/mgps/adapter/ForumAllAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumAllAdapter;->g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumBean;

.field final synthetic c:Lcom/join/mgps/adapter/ForumAllAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$forumBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->c:Lcom/join/mgps/adapter/ForumAllAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->b:Lcom/join/mgps/dto/ForumBean;

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
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->c:Lcom/join/mgps/adapter/ForumAllAdapter;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumAllAdapter;->e:Lcom/join/mgps/adapter/ForumAllAdapter$d;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter$b;->b:Lcom/join/mgps/dto/ForumBean;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumAllAdapter$d;->b(Lcom/join/mgps/dto/ForumBean;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
