.class public Lcom/byazt/dyf/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/ve;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dyf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/dyf/ve;->c(Lcom/byazt/dyf/ve;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/dyf/ve;->tt(Lcom/byazt/dyf/ve;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/byazt/sif/c;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 50
    .line 51
    invoke-interface {v1, p1, v2}, Lcom/byazt/sif/c;->c(Ljava/lang/String;Landroid/app/Dialog;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v0, Lcom/byazt/vo/ve;

    .line 59
    .line 60
    const-string v1, "0:00"

    .line 61
    .line 62
    invoke-direct {v0, v1, p1}, Lcom/byazt/vo/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/byazt/pr/c;->c()Lcom/byazt/pr/ve;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/byazt/dyf/ve;->ve(Lcom/byazt/dyf/ve;)Lcom/byazt/vo/tt;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {p1, v1, v0}, Lcom/byazt/pr/ve;->c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/byazt/dyf/ve;->uj(Lcom/byazt/dyf/ve;)Lcom/byazt/sif/tt;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-interface {p1, v1, v0}, Lcom/byazt/sif/tt;->c(ILcom/byazt/nc/a;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/byazt/dyf/ve$1;->c:Lcom/byazt/dyf/ve;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/byazt/dyf/ve;->dismiss()V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
