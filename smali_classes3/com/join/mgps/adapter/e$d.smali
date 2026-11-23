.class Lcom/join/mgps/adapter/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/e;->E(Landroid/view/ViewGroup;Landroid/view/View;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/join/mgps/dto/TodayWufunEmuClassify;

.field final synthetic d:Lcom/join/mgps/adapter/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/e;Landroid/view/ViewGroup;Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$vg",
            "val$classify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e$d;->d:Lcom/join/mgps/adapter/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/e$d;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/e$d;->c:Lcom/join/mgps/dto/TodayWufunEmuClassify;

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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/adapter/e$d;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/e$d;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/adapter/e$d;->d:Lcom/join/mgps/adapter/e;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/adapter/e$d;->c:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/e;->B(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
