.class Lcom/join/mgps/adapter/x6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x6;->M(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/x6$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

.field final synthetic c:Lcom/join/mgps/adapter/x6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x6;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x6$d;->c:Lcom/join/mgps/adapter/x6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/x6$d;->b:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

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
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x6$d;->c:Lcom/join/mgps/adapter/x6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/adapter/x6;->I(Lcom/join/mgps/adapter/x6;)Lcom/join/mgps/adapter/x6$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/x6$d;->c:Lcom/join/mgps/adapter/x6;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/adapter/x6;->I(Lcom/join/mgps/adapter/x6;)Lcom/join/mgps/adapter/x6$f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/x6$d;->b:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object p1, p0, Lcom/join/mgps/adapter/x6$d;->b:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getUid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "0"

    .line 49
    .line 50
    const-string v6, "0"

    .line 51
    .line 52
    invoke-interface/range {v1 .. v6}, Lcom/join/mgps/adapter/x6$f;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
