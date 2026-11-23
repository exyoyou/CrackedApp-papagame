.class public Lcom/byazt/dyf/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/uj;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dyf/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/dyf/uj;->tt(Lcom/byazt/dyf/uj;)Lcom/byazt/vo/tt;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/byazt/vo/tt;->c()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/byazt/nc/a;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/byazt/dyf/uj;->ve(Lcom/byazt/dyf/uj;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p2, "99:1"

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/byazt/nc/a;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;)Lcom/byazt/sif/ve;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;)Lcom/byazt/sif/ve;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2, p3, p1}, Lcom/byazt/sif/ve;->c(ILcom/byazt/nc/a;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    invoke-static {p1, p2}, Lcom/byazt/dyf/uj;->c(Lcom/byazt/dyf/uj;Z)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/byazt/dyf/uj$2;->c:Lcom/byazt/dyf/uj;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/byazt/dyf/uj;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :catchall_0
    return-void
.end method
