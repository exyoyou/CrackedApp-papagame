.class Lcom/join/mgps/fragment/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/k0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k0;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/k0;->R(Lcom/join/mgps/fragment/k0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/k0;->S(Lcom/join/mgps/fragment/k0;I)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/fragment/k0;->F:Lcom/join/android/app/component/video/c;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/fragment/k0;->F:Lcom/join/android/app/component/video/c;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/fragment/k0;->T(Lcom/join/mgps/fragment/k0;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k0;->k0()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/k0;->V(Lcom/join/mgps/fragment/k0;I)I

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/join/mgps/fragment/k0;->W(Lcom/join/mgps/fragment/k0;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/fragment/k0;->U(Lcom/join/mgps/fragment/k0;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/k0;->l0(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$c;->b:Lcom/join/mgps/fragment/k0;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/fragment/k0;->j0()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
