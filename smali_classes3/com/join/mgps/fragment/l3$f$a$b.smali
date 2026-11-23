.class Lcom/join/mgps/fragment/l3$f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l3$f$a;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/join/mgps/fragment/l3$f$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l3$f$a;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->c:Lcom/join/mgps/fragment/l3$f$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/l3$f$a$b;->b:Landroid/app/Dialog;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->c:Lcom/join/mgps/fragment/l3$f$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 6
    .line 7
    iget v0, p1, Lcom/join/mgps/fragment/l3;->w:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->n:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->c:Lcom/join/mgps/fragment/l3$f$a;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 22
    .line 23
    iget p1, p1, Lcom/join/mgps/fragment/l3;->w:I

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->c:Lcom/join/mgps/fragment/l3$f$a;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/fragment/l3$f$a;->b:Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/l3;->U(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->c:Lcom/join/mgps/fragment/l3$f$a;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/join/mgps/fragment/l3$f$a;->d:Lcom/join/mgps/fragment/l3$f;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/fragment/l3$f;->b:Lcom/join/mgps/fragment/l3;

    .line 47
    .line 48
    iget p1, p1, Lcom/join/mgps/fragment/l3$f$a;->c:I

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/l3;->T(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$f$a$b;->b:Landroid/app/Dialog;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
