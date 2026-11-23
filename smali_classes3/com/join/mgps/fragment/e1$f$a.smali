.class Lcom/join/mgps/fragment/e1$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/e1$f;->e(Lcom/join/mgps/fragment/e1$g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/e1$g;

.field final synthetic c:Lcom/join/mgps/dto/EndGameBean;

.field final synthetic d:Lcom/join/mgps/fragment/e1$f;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e1$f;Lcom/join/mgps/fragment/e1$g;Lcom/join/mgps/dto/EndGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$holder",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$f$a;->d:Lcom/join/mgps/fragment/e1$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/e1$f$a;->b:Lcom/join/mgps/fragment/e1$g;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/e1$f$a;->c:Lcom/join/mgps/dto/EndGameBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/fragment/e1$f$a;->d:Lcom/join/mgps/fragment/e1$f;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/fragment/e1;->O(Lcom/join/mgps/fragment/e1;)Lcom/join/android/app/component/video/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f$a;->b:Lcom/join/mgps/fragment/e1$g;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->E(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/fragment/e1$f$a;->d:Lcom/join/mgps/fragment/e1$f;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/fragment/e1$f;->e:Lcom/join/mgps/fragment/e1;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/e1$f$a;->c:Lcom/join/mgps/dto/EndGameBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/join/mgps/fragment/e1;->P(Lcom/join/mgps/fragment/e1;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
